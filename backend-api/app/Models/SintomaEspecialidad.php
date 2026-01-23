<?php
namespace App\Models;

use Config\Database;
use PDO;
use PDOException;

class SintomaEspecialidad {
    private $conn;
    private $table = 'sintomas_especialidad';

    public $id;
    public $palabra_clave;
    public $especialidad_id;

    public function __construct() {
        $this->conn = Database::getConnection();
    }

    // Obtener todos los síntomas por especialidad
    public function getSintomasPorEspecialidad() {
        try {
            $query = "SELECT s.*, e.nombre as especialidad_nombre
                      FROM " . $this->table . " s
                      LEFT JOIN especialidades e ON s.especialidad_id = e.id
                      ORDER BY e.nombre ASC, s.palabra_clave ASC";
            
            $stmt = $this->conn->prepare($query);
            $stmt->execute();
            return $stmt->fetchAll(PDO::FETCH_ASSOC);
        } catch (PDOException $e) {
            throw new \Exception('Error al obtener los síntomas: ' . $e->getMessage());
        }
    }

    // Obtener un síntoma por ID
    public function getSintomaById($id) {
        try {
            $query = "SELECT s.*, e.nombre as especialidad_nombre
                      FROM " . $this->table . " s
                      LEFT JOIN especialidades e ON s.especialidad_id = e.id
                      WHERE s.id = :id";
            
            $stmt = $this->conn->prepare($query);
            $stmt->bindParam(':id', $id, PDO::PARAM_INT);
            $stmt->execute();
            return $stmt->fetch(PDO::FETCH_ASSOC);
        } catch (PDOException $e) {
            throw new \Exception('Error al obtener el síntoma: ' . $e->getMessage());
        }
    }

    // Obtener síntomas por especialidad
    public function getSintomasPorEspecialidadId($especialidad_id) {
        try {
            $query = "SELECT s.*, e.nombre as especialidad_nombre
                      FROM " . $this->table . " s
                      LEFT JOIN especialidades e ON s.especialidad_id = e.id
                      WHERE s.especialidad_id = :especialidad_id
                      ORDER BY s.palabra_clave ASC";
            
            $stmt = $this->conn->prepare($query);
            $stmt->bindParam(':especialidad_id', $especialidad_id, PDO::PARAM_INT);
            $stmt->execute();
            return $stmt->fetchAll(PDO::FETCH_ASSOC);
        } catch (PDOException $e) {
            throw new \Exception('Error al obtener los síntomas de la especialidad: ' . $e->getMessage());
        }
    }

    // Crear un nuevo síntoma por especialidad
    public function createSintomaEspecialidad($palabra_clave, $especialidad_id) {
        try {
            if (!is_numeric($especialidad_id) || $especialidad_id <= 0) {
                throw new \Exception('ID de especialidad inválido');
            }

            $palabra_clave = trim($palabra_clave);
            if (strlen($palabra_clave) < 2) {
                throw new \Exception('La palabra clave debe tener al menos 2 caracteres');
            }

            $query = "INSERT INTO " . $this->table . " (palabra_clave, especialidad_id) 
                      VALUES (:palabra_clave, :especialidad_id)";
            
            $stmt = $this->conn->prepare($query);
            $stmt->bindParam(':palabra_clave', $palabra_clave, PDO::PARAM_STR);
            $stmt->bindParam(':especialidad_id', $especialidad_id, PDO::PARAM_INT);
            
            return $stmt->execute();
        } catch (PDOException $e) {
            throw new \Exception('Error al crear el síntoma: ' . $e->getMessage());
        }
    }

    // Actualizar un síntoma por especialidad
    public function updateSintomaEspecialidad($id, $palabra_clave, $especialidad_id) {
        try {
            if (!is_numeric($id) || $id <= 0) {
                throw new \Exception('ID del síntoma inválido');
            }

            if (!is_numeric($especialidad_id) || $especialidad_id <= 0) {
                throw new \Exception('ID de especialidad inválido');
            }

            $palabra_clave = trim($palabra_clave);
            if (strlen($palabra_clave) < 2) {
                throw new \Exception('La palabra clave debe tener al menos 2 caracteres');
            }

            $query = "UPDATE " . $this->table . " 
                      SET palabra_clave = :palabra_clave, especialidad_id = :especialidad_id, updated_at = NOW()
                      WHERE id = :id";
            
            $stmt = $this->conn->prepare($query);
            $stmt->bindParam(':id', $id, PDO::PARAM_INT);
            $stmt->bindParam(':palabra_clave', $palabra_clave, PDO::PARAM_STR);
            $stmt->bindParam(':especialidad_id', $especialidad_id, PDO::PARAM_INT);
            
            return $stmt->execute();
        } catch (PDOException $e) {
            throw new \Exception('Error al actualizar el síntoma: ' . $e->getMessage());
        }
    }

    // Eliminar un síntoma por especialidad
    public function deleteSintomaEspecialidad($id) {
        try {
            if (!is_numeric($id) || $id <= 0) {
                throw new \Exception('ID del síntoma inválido');
            }

            $query = "DELETE FROM " . $this->table . " WHERE id = :id";
            $stmt = $this->conn->prepare($query);
            $stmt->bindParam(':id', $id, PDO::PARAM_INT);
            
            return $stmt->execute();
        } catch (PDOException $e) {
            throw new \Exception('Error al eliminar el síntoma: ' . $e->getMessage());
        }
    }

    // Buscar síntomas por palabra clave
    public function buscarSintomas($palabra_clave) {
        try {
            $query = "SELECT s.*, e.nombre as especialidad_nombre
                      FROM " . $this->table . " s
                      LEFT JOIN especialidades e ON s.especialidad_id = e.id
                      WHERE s.palabra_clave LIKE :palabra_clave
                      ORDER BY e.nombre ASC, s.palabra_clave ASC";
            
            $stmt = $this->conn->prepare($query);
            $keyword = '%' . $palabra_clave . '%';
            $stmt->bindParam(':palabra_clave', $keyword, PDO::PARAM_STR);
            $stmt->execute();
            
            return $stmt->fetchAll(PDO::FETCH_ASSOC);
        } catch (PDOException $e) {
            throw new \Exception('Error al buscar síntomas: ' . $e->getMessage());
        }
    }

    // Contar síntomas
    public function countSintomas() {
        try {
            $query = "SELECT COUNT(*) as total FROM " . $this->table;
            $stmt = $this->conn->prepare($query);
            $stmt->execute();
            
            return $stmt->fetch(PDO::FETCH_ASSOC)['total'];
        } catch (PDOException $e) {
            throw new \Exception('Error al contar síntomas: ' . $e->getMessage());
        }
    }

    // Contar síntomas por especialidad
    public function countSintomasPorEspecialidad($especialidad_id) {
        try {
            $query = "SELECT COUNT(*) as total FROM " . $this->table . " 
                      WHERE especialidad_id = :especialidad_id";
            
            $stmt = $this->conn->prepare($query);
            $stmt->bindParam(':especialidad_id', $especialidad_id, PDO::PARAM_INT);
            $stmt->execute();
            
            return $stmt->fetch(PDO::FETCH_ASSOC)['total'];
        } catch (PDOException $e) {
            throw new \Exception('Error al contar síntomas de la especialidad: ' . $e->getMessage());
        }
    }

    // Verificar si existe un síntoma
    public function existeSintoma($palabra_clave, $especialidad_id) {
        try {
            $query = "SELECT id FROM " . $this->table . " 
                      WHERE palabra_clave = :palabra_clave AND especialidad_id = :especialidad_id 
                      LIMIT 1";
            
            $stmt = $this->conn->prepare($query);
            $stmt->bindParam(':palabra_clave', $palabra_clave, PDO::PARAM_STR);
            $stmt->bindParam(':especialidad_id', $especialidad_id, PDO::PARAM_INT);
            $stmt->execute();
            
            return $stmt->rowCount() > 0;
        } catch (PDOException $e) {
            throw new \Exception('Error al verificar el síntoma: ' . $e->getMessage());
        }
    }

    // Obtener síntomas con estadísticas
    public function getSintomasConEstadisticas() {
        try {
            $query = "SELECT 
                      e.id as especialidad_id,
                      e.nombre as especialidad_nombre,
                      COUNT(s.id) as total_sintomas,
                      GROUP_CONCAT(s.palabra_clave SEPARATOR ', ') as sintomas
                      FROM especialidades e
                      LEFT JOIN " . $this->table . " s ON e.id = s.especialidad_id
                      GROUP BY e.id
                      ORDER BY e.nombre ASC";
            
            $stmt = $this->conn->prepare($query);
            $stmt->execute();
            
            return $stmt->fetchAll(PDO::FETCH_ASSOC);
        } catch (PDOException $e) {
            throw new \Exception('Error al obtener estadísticas de síntomas: ' . $e->getMessage());
        }
    }
}
?>
