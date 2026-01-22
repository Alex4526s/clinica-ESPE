<?php
namespace App\Models;

use Config\Database;
use PDO;
use PDOException;

class User {
    private $conn;
    private $table = 'usuarios';

    public function __construct() {
        $this->conn = Database::getConnection();
    }

    // Lista doctores (opcional por especialidad_id)
    public function getDoctores($especialidad_id = null) {
        if ($especialidad_id) {
            $stmt = $this->conn->prepare("
                SELECT u.id, u.nombre, u.email, u.rol, u.especialidad_id,
                       e.nombre as especialidad, u.created_at, u.updated_at
                FROM {$this->table} u
                LEFT JOIN especialidades e ON u.especialidad_id = e.id
                WHERE u.rol='medico' AND u.especialidad_id=?
                ORDER BY u.nombre
            ");
            $stmt->execute([$especialidad_id]);
        } else {
            $stmt = $this->conn->prepare("
                SELECT u.id, u.nombre, u.email, u.rol, u.especialidad_id,
                       e.nombre as especialidad, u.created_at, u.updated_at
                FROM {$this->table} u
                LEFT JOIN especialidades e ON u.especialidad_id = e.id
                WHERE u.rol='medico'
                ORDER BY u.nombre
            ");
            $stmt->execute();
        }

        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }

    // Obtener todos los usuarios (incluye especialidad_id)
    public function getAll() {
        $stmt = $this->conn->prepare("
            SELECT u.id, u.nombre, u.email, u.rol, u.especialidad_id, 
                   e.nombre as especialidad, u.created_at, u.updated_at
            FROM {$this->table} u
            LEFT JOIN especialidades e ON u.especialidad_id = e.id
            ORDER BY u.id DESC
        ");
        $stmt->execute();
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }

    public function getById($id) {
        try {
            $query = "SELECT u.id, u.nombre, u.email, u.rol, u.especialidad_id,
                             e.nombre as especialidad, u.created_at, u.updated_at
                      FROM {$this->table} u
                      LEFT JOIN especialidades e ON u.especialidad_id = e.id
                      WHERE u.id = :id";
            $stmt = $this->conn->prepare($query);
            $stmt->bindParam(':id', $id, PDO::PARAM_INT);
            $stmt->execute();
            return $stmt->fetch(PDO::FETCH_ASSOC);
        } catch (PDOException $e) {
            throw new \Exception('Error al obtener el usuario: ' . $e->getMessage());
        }
    }

    public function getByEmail($email) {
        try {
            $query = "SELECT id, nombre, email, password, rol, especialidad_id, created_at, updated_at
                      FROM {$this->table}
                      WHERE email = :email LIMIT 1";
            $stmt = $this->conn->prepare($query);
            $stmt->bindParam(':email', $email, PDO::PARAM_STR);
            $stmt->execute();
            return $stmt->fetch(PDO::FETCH_ASSOC);
        } catch (PDOException $e) {
            throw new \Exception('Error al obtener el usuario por email: ' . $e->getMessage());
        }
    }

    // Crear usuario (incluye rol y especialidad_id opcional)
    public function create($nombre, $email, $password, $rol = 'paciente', $especialidad_id = null) {
        try {
            if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
                throw new \Exception('Email inválido');
            }

            if ($this->existeEmail($email)) {
                throw new \Exception('El email ya existe');
            }

            $roles_validos = ['paciente', 'medico', 'admin'];
            if (!in_array($rol, $roles_validos)) {
                throw new \Exception('Rol inválido');
            }

            if ($rol !== 'medico') {
                $especialidad_id = null;
            }

            $query = "INSERT INTO {$this->table} (nombre, email, password, rol, especialidad_id)
                      VALUES (:nombre, :email, :password, :rol, :especialidad_id)";

            $stmt = $this->conn->prepare($query);
            $stmt->bindParam(':nombre', $nombre, PDO::PARAM_STR);
            $stmt->bindParam(':email', $email, PDO::PARAM_STR);
            $stmt->bindParam(':password', $password, PDO::PARAM_STR);
            $stmt->bindParam(':rol', $rol, PDO::PARAM_STR);

            if ($especialidad_id === null || $especialidad_id === '') {
                $stmt->bindValue(':especialidad_id', null, PDO::PARAM_NULL);
            } else {
                $stmt->bindValue(':especialidad_id', (int)$especialidad_id, PDO::PARAM_INT);
            }

            return $stmt->execute();
        } catch (PDOException $e) {
            throw new \Exception('Error al crear el usuario: ' . $e->getMessage());
        }
    }

    // Actualizar usuario (incluye especialidad_id)
    public function update($id, $nombre, $email, $password, $rol, $especialidad_id = null) {
        try {
            if (!is_numeric($id) || $id <= 0) {
                throw new \Exception('ID de usuario inválido');
            }

            if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
                throw new \Exception('Email inválido');
            }

            $roles_validos = ['paciente', 'medico', 'admin'];
            if (!in_array($rol, $roles_validos)) {
                throw new \Exception('Rol inválido');
            }

            if ($rol !== 'medico') {
                $especialidad_id = null;
            }

            $query_check = "SELECT id FROM {$this->table} WHERE email = :email AND id != :id LIMIT 1";
            $stmt_check = $this->conn->prepare($query_check);
            $stmt_check->bindParam(':email', $email, PDO::PARAM_STR);
            $stmt_check->bindParam(':id', $id, PDO::PARAM_INT);
            $stmt_check->execute();

            if ($stmt_check->rowCount() > 0) {
                throw new \Exception('El email ya está siendo utilizado por otro usuario');
            }

            $query = "UPDATE {$this->table}
                      SET nombre = :nombre,
                          email = :email,
                          password = :password,
                          rol = :rol,
                          especialidad_id = :especialidad_id,
                          updated_at = NOW()
                      WHERE id = :id";

            $stmt = $this->conn->prepare($query);
            $stmt->bindParam(':id', $id, PDO::PARAM_INT);
            $stmt->bindParam(':nombre', $nombre, PDO::PARAM_STR);
            $stmt->bindParam(':email', $email, PDO::PARAM_STR);
            $stmt->bindParam(':password', $password, PDO::PARAM_STR);
            $stmt->bindParam(':rol', $rol, PDO::PARAM_STR);

            if ($especialidad_id === null || $especialidad_id === '') {
                $stmt->bindValue(':especialidad_id', null, PDO::PARAM_NULL);
            } else {
                $stmt->bindValue(':especialidad_id', (int)$especialidad_id, PDO::PARAM_INT);
            }

            return $stmt->execute();
        } catch (PDOException $e) {
            throw new \Exception('Error al actualizar el usuario: ' . $e->getMessage());
        }
    }

    public function delete($id) {
        try {
            if (!is_numeric($id) || $id <= 0) {
                throw new \Exception('ID de usuario inválido');
            }

            $query = "DELETE FROM {$this->table} WHERE id = :id";
            $stmt = $this->conn->prepare($query);
            $stmt->bindParam(':id', $id, PDO::PARAM_INT);
            return $stmt->execute();
        } catch (PDOException $e) {
            throw new \Exception('Error al eliminar el usuario: ' . $e->getMessage());
        }
    }

    public function existeEmail($email) {
        try {
            $query = "SELECT id FROM {$this->table} WHERE email = :email LIMIT 1";
            $stmt = $this->conn->prepare($query);
            $stmt->bindParam(':email', $email, PDO::PARAM_STR);
            $stmt->execute();
            return $stmt->rowCount() > 0;
        } catch (PDOException $e) {
            throw new \Exception('Error al verificar el email: ' . $e->getMessage());
        }
    }
}
