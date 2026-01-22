<?php
namespace App\Models;

use Config\Database;
use PDO;
use PDOException;

class Cita {
    private $conn;
    private $table = 'citas';

    // Constructor para establecer la conexión con la base de datos
    public function __construct() {
        $this->conn = Database::getConnection();
    }

    // Método para crear una cita
    public function create($fecha, $hora, $paciente_id, $doctor_id, $estado, $motivo) {
        try {
            // Validar que los IDs sean números positivos
            if (!is_numeric($paciente_id) || !is_numeric($doctor_id) || $paciente_id <= 0 || $doctor_id <= 0) {
                throw new \Exception('IDs de paciente o doctor inválidos');
            }

            $query = "INSERT INTO " . $this->table . " (fecha, hora, paciente_id, doctor_id, estado, motivo) 
                      VALUES (:fecha, :hora, :paciente_id, :doctor_id, :estado, :motivo)";
            
            $stmt = $this->conn->prepare($query);
            
            // Vinculamos los parámetros
            $stmt->bindParam(':fecha', $fecha, PDO::PARAM_STR);
            $stmt->bindParam(':hora', $hora, PDO::PARAM_STR);
            $stmt->bindParam(':paciente_id', $paciente_id, PDO::PARAM_INT);
            $stmt->bindParam(':doctor_id', $doctor_id, PDO::PARAM_INT);
            $stmt->bindParam(':estado', $estado, PDO::PARAM_STR);
            $stmt->bindParam(':motivo', $motivo, PDO::PARAM_STR);

            return $stmt->execute();
        } catch (PDOException $e) {
            throw new \Exception('Error al crear la cita: ' . $e->getMessage());
        }
    }

    // Método para obtener todas las citas
    public function getAll() {
        try {
            $query = "SELECT c.*, 
                      CONCAT(p.nombre) as paciente_nombre,
                      CONCAT(d.nombre) as doctor_nombre
                      FROM " . $this->table . " c
                      LEFT JOIN usuarios p ON c.paciente_id = p.id
                      LEFT JOIN usuarios d ON c.doctor_id = d.id
                      ORDER BY c.fecha DESC, c.hora DESC";
            
            $stmt = $this->conn->prepare($query);
            $stmt->execute();
            
            return $stmt->fetchAll(PDO::FETCH_ASSOC);
        } catch (PDOException $e) {
            throw new \Exception('Error al obtener las citas: ' . $e->getMessage());
        }
    }

    // Método para obtener una cita por su ID
    public function getById($id) {
        try {
            $query = "SELECT c.*,
                      CONCAT(p.nombre) as paciente_nombre,
                      CONCAT(d.nombre) as doctor_nombre
                      FROM " . $this->table . " c
                      LEFT JOIN usuarios p ON c.paciente_id = p.id
                      LEFT JOIN usuarios d ON c.doctor_id = d.id
                      WHERE c.id = :id";
            
            $stmt = $this->conn->prepare($query);
            $stmt->bindParam(':id', $id, PDO::PARAM_INT);
            $stmt->execute();

            return $stmt->fetch(PDO::FETCH_ASSOC);
        } catch (PDOException $e) {
            throw new \Exception('Error al obtener la cita: ' . $e->getMessage());
        }
    }

    // Método para actualizar una cita
    public function update($id, $fecha, $hora, $estado, $motivo) {
        try {
            $query = "UPDATE " . $this->table . " 
                      SET fecha = :fecha, hora = :hora, estado = :estado, motivo = :motivo, updated_at = NOW()
                      WHERE id = :id";
            
            $stmt = $this->conn->prepare($query);

            // Vinculamos los parámetros
            $stmt->bindParam(':id', $id, PDO::PARAM_INT);
            $stmt->bindParam(':fecha', $fecha, PDO::PARAM_STR);
            $stmt->bindParam(':hora', $hora, PDO::PARAM_STR);
            $stmt->bindParam(':estado', $estado, PDO::PARAM_STR);
            $stmt->bindParam(':motivo', $motivo, PDO::PARAM_STR);

            return $stmt->execute();
        } catch (PDOException $e) {
            throw new \Exception('Error al actualizar la cita: ' . $e->getMessage());
        }
    }

    // Método para eliminar una cita
    public function delete($id) {
        try {
            $query = "DELETE FROM " . $this->table . " WHERE id = :id";
            $stmt = $this->conn->prepare($query);
            $stmt->bindParam(':id', $id, PDO::PARAM_INT);

            return $stmt->execute();
        } catch (PDOException $e) {
            throw new \Exception('Error al eliminar la cita: ' . $e->getMessage());
        }
    }

    // Obtener citas por paciente
    public function getByPaciente($paciente_id) {
        try {
            $query = "SELECT c.*, 
                      CONCAT(p.nombre) as paciente_nombre,
                      CONCAT(d.nombre) as doctor_nombre
                      FROM " . $this->table . " c
                      LEFT JOIN usuarios p ON c.paciente_id = p.id
                      LEFT JOIN usuarios d ON c.doctor_id = d.id
                      WHERE c.paciente_id = :paciente_id
                      ORDER BY c.fecha DESC, c.hora DESC";
            
            $stmt = $this->conn->prepare($query);
            $stmt->bindParam(':paciente_id', $paciente_id, PDO::PARAM_INT);
            $stmt->execute();

            return $stmt->fetchAll(PDO::FETCH_ASSOC);
        } catch (PDOException $e) {
            throw new \Exception('Error al obtener las citas del paciente: ' . $e->getMessage());
        }
    }

    // Obtener citas por doctor
    public function getByDoctor($doctor_id) {
        try {
            $query = "SELECT c.*, 
                      CONCAT(p.nombre) as paciente_nombre,
                      CONCAT(d.nombre) as doctor_nombre
                      FROM " . $this->table . " c
                      LEFT JOIN usuarios p ON c.paciente_id = p.id
                      LEFT JOIN usuarios d ON c.doctor_id = d.id
                      WHERE c.doctor_id = :doctor_id
                      ORDER BY c.fecha DESC, c.hora DESC";
            
            $stmt = $this->conn->prepare($query);
            $stmt->bindParam(':doctor_id', $doctor_id, PDO::PARAM_INT);
            $stmt->execute();

            return $stmt->fetchAll(PDO::FETCH_ASSOC);
        } catch (PDOException $e) {
            throw new \Exception('Error al obtener las citas del doctor: ' . $e->getMessage());
        }
    }

    // Obtener citas por fecha
    public function getByFecha($fecha) {
        try {
            $query = "SELECT c.*, 
                      CONCAT(p.nombre) as paciente_nombre,
                      CONCAT(d.nombre) as doctor_nombre
                      FROM " . $this->table . " c
                      LEFT JOIN usuarios p ON c.paciente_id = p.id
                      LEFT JOIN usuarios d ON c.doctor_id = d.id
                      WHERE c.fecha = :fecha
                      ORDER BY c.hora ASC";
            
            $stmt = $this->conn->prepare($query);
            $stmt->bindParam(':fecha', $fecha, PDO::PARAM_STR);
            $stmt->execute();

            return $stmt->fetchAll(PDO::FETCH_ASSOC);
        } catch (PDOException $e) {
            throw new \Exception('Error al obtener las citas por fecha: ' . $e->getMessage());
        }
    }

    // Obtener citas por estado
    public function getByEstado($estado) {
        try {
            $query = "SELECT c.*, 
                      CONCAT(p.nombre) as paciente_nombre,
                      CONCAT(d.nombre) as doctor_nombre
                      FROM " . $this->table . " c
                      LEFT JOIN usuarios p ON c.paciente_id = p.id
                      LEFT JOIN usuarios d ON c.doctor_id = d.id
                      WHERE c.estado = :estado
                      ORDER BY c.fecha DESC, c.hora DESC";
            
            $stmt = $this->conn->prepare($query);
            $stmt->bindParam(':estado', $estado, PDO::PARAM_STR);
            $stmt->execute();

            return $stmt->fetchAll(PDO::FETCH_ASSOC);
        } catch (PDOException $e) {
            throw new \Exception('Error al obtener las citas por estado: ' . $e->getMessage());
        }
    }

    // Contar citas por estado
    public function countByEstado($estado) {
        try {
            $query = "SELECT COUNT(*) as total FROM " . $this->table . " WHERE estado = :estado";
            $stmt = $this->conn->prepare($query);
            $stmt->bindParam(':estado', $estado, PDO::PARAM_STR);
            $stmt->execute();

            return $stmt->fetch(PDO::FETCH_ASSOC)['total'];
        } catch (PDOException $e) {
            throw new \Exception('Error al contar las citas: ' . $e->getMessage());
        }
    }
}
?>
