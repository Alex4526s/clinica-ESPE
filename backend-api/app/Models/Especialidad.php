<?php
namespace App\Models;

use Config\Database;
use PDO;
use PDOException;

class Especialidad {
    private $conn;
    private $table = 'especialidades';

    public $id;
    public $nombre;

    public function __construct() {
        $this->conn = Database::getConnection();
    }

    // Obtener todas las especialidades
    public function getEspecialidades() {
        try {
            $query = "SELECT * FROM " . $this->table . " ORDER BY nombre ASC";
            
            $stmt = $this->conn->prepare($query);
            $stmt->execute();
            return $stmt->fetchAll(PDO::FETCH_ASSOC);
        } catch (PDOException $e) {
            throw new \Exception('Error al obtener las especialidades: ' . $e->getMessage());
        }
    }

    // Obtener una especialidad por ID
    public function getEspecialidadById($id) {
        try {
            $query = "SELECT * FROM " . $this->table . " WHERE id = :id";
            
            $stmt = $this->conn->prepare($query);
            $stmt->bindParam(':id', $id, PDO::PARAM_INT);
            $stmt->execute();
            return $stmt->fetch(PDO::FETCH_ASSOC);
        } catch (PDOException $e) {
            throw new \Exception('Error al obtener la especialidad: ' . $e->getMessage());
        }
    }

    // Crear una nueva especialidad
    public function createEspecialidad($nombre, $descripcion = null) {
        try {
            $query = "INSERT INTO " . $this->table . " (nombre, descripcion) 
                      VALUES (:nombre, :descripcion)";
            
            $stmt = $this->conn->prepare($query);
            $stmt->bindParam(':nombre', $nombre, PDO::PARAM_STR);
            $stmt->bindParam(':descripcion', $descripcion, PDO::PARAM_STR);
            
            return $stmt->execute();
        } catch (PDOException $e) {
            throw new \Exception('Error al crear la especialidad: ' . $e->getMessage());
        }
    }

    // Actualizar una especialidad
    public function updateEspecialidad($id, $nombre, $descripcion = null) {
        try {
            $query = "UPDATE " . $this->table . " 
                      SET nombre = :nombre, descripcion = :descripcion, updated_at = NOW()
                      WHERE id = :id";
            
            $stmt = $this->conn->prepare($query);
            $stmt->bindParam(':id', $id, PDO::PARAM_INT);
            $stmt->bindParam(':nombre', $nombre, PDO::PARAM_STR);
            $stmt->bindParam(':descripcion', $descripcion, PDO::PARAM_STR);
            
            return $stmt->execute();
        } catch (PDOException $e) {
            throw new \Exception('Error al actualizar la especialidad: ' . $e->getMessage());
        }
    }

    // Eliminar una especialidad
    public function deleteEspecialidad($id) {
        try {
            $query = "DELETE FROM " . $this->table . " WHERE id = :id";
            $stmt = $this->conn->prepare($query);
            $stmt->bindParam(':id', $id, PDO::PARAM_INT);
            
            return $stmt->execute();
        } catch (PDOException $e) {
            throw new \Exception('Error al eliminar la especialidad: ' . $e->getMessage());
        }
    }

    // Obtener especialidades por palabra clave
    public function searchEspecialidades($keyword) {
        try {
            $query = "SELECT e.*, COUNT(s.id) as total_sintomas 
                      FROM " . $this->table . " e
                      LEFT JOIN sintomas_especialidad s ON e.id = s.especialidad_id
                      WHERE e.nombre LIKE :keyword OR e.descripcion LIKE :keyword
                      GROUP BY e.id
                      ORDER BY e.nombre ASC";
            
            $stmt = $this->conn->prepare($query);
            $keyword = '%' . $keyword . '%';
            $stmt->bindParam(':keyword', $keyword, PDO::PARAM_STR);
            $stmt->execute();
            
            return $stmt->fetchAll(PDO::FETCH_ASSOC);
        } catch (PDOException $e) {
            throw new \Exception('Error al buscar especialidades: ' . $e->getMessage());
        }
    }

    // Contar especialidades
    public function countEspecialidades() {
        try {
            $query = "SELECT COUNT(*) as total FROM " . $this->table;
            $stmt = $this->conn->prepare($query);
            $stmt->execute();
            
            return $stmt->fetch(PDO::FETCH_ASSOC)['total'];
        } catch (PDOException $e) {
            throw new \Exception('Error al contar las especialidades: ' . $e->getMessage());
        }
    }

    // Obtener especialidades con síntomas
    public function getEspecialidadesConSintomas() {
        try {
            $query = "SELECT e.id, e.nombre, e.descripcion,
                      GROUP_CONCAT(s.palabra_clave SEPARATOR ', ') as sintomas
                      FROM " . $this->table . " e
                      LEFT JOIN sintomas_especialidad s ON e.id = s.especialidad_id
                      GROUP BY e.id
                      ORDER BY e.nombre ASC";
            
            $stmt = $this->conn->prepare($query);
            $stmt->execute();
            
            return $stmt->fetchAll(PDO::FETCH_ASSOC);
        } catch (PDOException $e) {
            throw new \Exception('Error al obtener especialidades con síntomas: ' . $e->getMessage());
        }
    }

    // Verificar si existe una especialidad por nombre
    public function existeEspecialidad($nombre) {
        try {
            $query = "SELECT id FROM " . $this->table . " WHERE nombre = :nombre LIMIT 1";
            $stmt = $this->conn->prepare($query);
            $stmt->bindParam(':nombre', $nombre, PDO::PARAM_STR);
            $stmt->execute();
            
            return $stmt->rowCount() > 0;
        } catch (PDOException $e) {
            throw new \Exception('Error al verificar la especialidad: ' . $e->getMessage());
        }
    }
}
?>
