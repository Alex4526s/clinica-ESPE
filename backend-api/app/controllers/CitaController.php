<?php
namespace App\Controllers;

use App\Models\Cita;

class CitaController {
    private $cita;

    // Constructor que crea una instancia del modelo Cita
    public function __construct() {
        $this->cita = new Cita();
        header('Content-Type: application/json; charset=utf-8');
    }

    // Método para obtener todas las citas
    public function getAllCitas() {
        try {
            $citas = $this->cita->getAll();
            http_response_code(200);
            echo json_encode([
                'status' => 'success',
                'data' => $citas,
                'count' => count($citas)
            ]);
        } catch (\Exception $e) {
            http_response_code(500);
            echo json_encode(['status' => 'error', 'message' => $e->getMessage()]);
        }
    }

    // Método para obtener una cita por ID
    public function getCita($id) {
        try {
            if (!$this->validarId($id)) {
                http_response_code(400);
                echo json_encode(['status' => 'error', 'message' => 'ID inválido']);
                return;
            }

            $cita = $this->cita->getById($id);
            if ($cita) {
                http_response_code(200);
                echo json_encode(['status' => 'success', 'data' => $cita]);
            } else {
                http_response_code(404);
                echo json_encode(['status' => 'error', 'message' => 'Cita no encontrada']);
            }
        } catch (\Exception $e) {
            http_response_code(500);
            echo json_encode(['status' => 'error', 'message' => $e->getMessage()]);
        }
    }

    // Método para crear una nueva cita
    public function createCita() {
        try {
            $data = $this->obtenerDatos();
            
            // Soportar ambos nombres de parámetros (medico_id / doctor_id, razon / motivo)
            $paciente_id = $data['paciente_id'] ?? null;
            $medico_id = $data['medico_id'] ?? $data['doctor_id'] ?? null;
            $fecha = $data['fecha'] ?? null;
            $hora = $data['hora'] ?? null;
            $razon = $data['razon'] ?? $data['motivo'] ?? "";
            $estado = $data['estado'] ?? 'pendiente';
            
            // Validar campos requeridos (motivo/razon ahora es opcional)
            if (!$paciente_id || !$medico_id || !$fecha || !$hora) {
                http_response_code(400);
                echo json_encode(['status' => 'error', 'message' => 'Faltan campos requeridos']);
                return;
            }

            if (!$this->validarFecha($fecha) || !$this->validarHora($hora)) {
                http_response_code(400);
                echo json_encode(['status' => 'error', 'message' => 'Formato de fecha u hora inválido']);
                return;
            }

            $result = $this->cita->create(
                $fecha,
                $hora,
                $paciente_id,
                $medico_id,
                $estado,
                $razon
            );

            if ($result) {
                http_response_code(201);
                echo json_encode(['status' => 'success', 'message' => 'Cita creada con éxito']);
            } else {
                http_response_code(400);
                echo json_encode(['status' => 'error', 'message' => 'Error al crear la cita']);
            }
        } catch (\Exception $e) {
            http_response_code(500);
            echo json_encode(['status' => 'error', 'message' => $e->getMessage()]);
        }
    }
    public function getCitasByPaciente($pacienteId) {
        try {
            $db = $this->db; // si tu clase ya tiene $this->db (PDO)
            $stmt = $db->prepare("SELECT * FROM citas WHERE paciente_id = ? ORDER BY fecha ASC, hora ASC");
            $stmt->execute([$pacienteId]);
            $data = $stmt->fetchAll(\PDO::FETCH_ASSOC);

            echo json_encode([
                'status' => 'success',
                'data' => $data,
                'count' => count($data)
            ]);
        } catch (\Exception $e) {
            http_response_code(500);
            echo json_encode(['status' => 'error', 'message' => $e->getMessage()]);
        }
    }

    public function getCitasByDoctor($doctorId) {
        try {
            $db = $this->db;
            $stmt = $db->prepare("SELECT * FROM citas WHERE doctor_id = ? ORDER BY fecha ASC, hora ASC");
            $stmt->execute([$doctorId]);
            $data = $stmt->fetchAll(\PDO::FETCH_ASSOC);

            echo json_encode([
                'status' => 'success',
                'data' => $data,
                'count' => count($data)
            ]);
        } catch (\Exception $e) {
            http_response_code(500);
            echo json_encode(['status' => 'error', 'message' => $e->getMessage()]);
        }
    }

    // Método para actualizar una cita
    public function updateCita($id) {
        try {
            if (!$this->validarId($id)) {
                http_response_code(400);
                echo json_encode(['status' => 'error', 'message' => 'ID inválido']);
                return;
            }

            $data = $this->obtenerDatos();
            
            $campos_requeridos = ['fecha', 'hora', 'estado'];
            if (!$this->validarCampos($data, $campos_requeridos)) {
                http_response_code(400);
                echo json_encode(['status' => 'error', 'message' => 'Faltan campos requeridos']);
                return;
            }

            if (!$this->validarFecha($data['fecha']) || !$this->validarHora($data['hora'])) {
                http_response_code(400);
                echo json_encode(['status' => 'error', 'message' => 'Formato de fecha u hora inválido']);
                return;
            }

            $motivo = $data['motivo'] ?? "";
            $result = $this->cita->update($id, $data['fecha'], $data['hora'], $data['estado'], $motivo);

            if ($result) {
                http_response_code(200);
                echo json_encode(['status' => 'success', 'message' => 'Cita actualizada con éxito']);
            } else {
                http_response_code(400);
                echo json_encode(['status' => 'error', 'message' => 'Error al actualizar la cita']);
            }
        } catch (\Exception $e) {
            http_response_code(500);
            echo json_encode(['status' => 'error', 'message' => $e->getMessage()]);
        }
    }

    // Método para eliminar una cita
    public function deleteCita($id) {
        try {
            if (!$this->validarId($id)) {
                http_response_code(400);
                echo json_encode(['status' => 'error', 'message' => 'ID inválido']);
                return;
            }

            $result = $this->cita->delete($id);

            if ($result) {
                http_response_code(200);
                echo json_encode(['status' => 'success', 'message' => 'Cita eliminada con éxito']);
            } else {
                http_response_code(400);
                echo json_encode(['status' => 'error', 'message' => 'Error al eliminar la cita']);
            }
        } catch (\Exception $e) {
            http_response_code(500);
            echo json_encode(['status' => 'error', 'message' => $e->getMessage()]);
        }
    }

    // Métodos auxiliares
    private function obtenerDatos() {
        $metodo = $_SERVER['REQUEST_METHOD'];
        
        if ($metodo === 'GET') {
            return $_GET;
        } elseif ($metodo === 'POST' || $metodo === 'PUT' || $metodo === 'PATCH') {
            $entrada = file_get_contents('php://input');
            $data = json_decode($entrada, true);
            return is_array($data) ? $data : $_POST;
        }
        
        return [];
    }

    private function validarCampos($data, $campos) {
        foreach ($campos as $campo) {
            if (!isset($data[$campo]) || empty($data[$campo])) {
                return false;
            }
        }
        return true;
    }

    private function validarId($id) {
        return is_numeric($id) && $id > 0;
    }

    private function validarFecha($fecha) {
        $pattern = '/^\d{4}-\d{2}-\d{2}$/';
        if (!preg_match($pattern, $fecha)) {
            return false;
        }
        $partes = explode('-', $fecha);
        return checkdate($partes[1], $partes[2], $partes[0]);
    }

    private function validarHora($hora) {
        $pattern = '/^([0-1][0-9]|2[0-3]):[0-5][0-9]:[0-5][0-9]$|^([0-1][0-9]|2[0-3]):[0-5][0-9]$/';
        return preg_match($pattern, $hora);
    }
}
?>
