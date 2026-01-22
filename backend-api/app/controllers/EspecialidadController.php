<?php
namespace App\Controllers;

use App\Models\Especialidad;

class EspecialidadController {
    private $especialidad;

    public function __construct() {
        $this->especialidad = new Especialidad();
        header('Content-Type: application/json; charset=utf-8');
    }

    public function getEspecialidades() {
        try {
            $especialidades = $this->especialidad->getEspecialidades();
            http_response_code(200);
            echo json_encode([
                'status' => 'success',
                'data' => $especialidades,
                'count' => count($especialidades)
            ]);
        } catch (\Exception $e) {
            http_response_code(500);
            echo json_encode(['status' => 'error', 'message' => $e->getMessage()]);
        }
    }

    public function createEspecialidad() {
        try {
            $data = $this->obtenerDatos();

            if (!isset($data['nombre']) || empty($data['nombre'])) {
                http_response_code(400);
                echo json_encode(['status' => 'error', 'message' => 'El nombre es requerido']);
                return;
            }

            $nombre = trim($data['nombre']);
            if (strlen($nombre) < 3 || strlen($nombre) > 100) {
                http_response_code(400);
                echo json_encode(['status' => 'error', 'message' => 'El nombre debe tener entre 3 y 100 caracteres']);
                return;
            }

            if ($this->especialidad->createEspecialidad($nombre)) {
                http_response_code(201);
                echo json_encode(['status' => 'success', 'message' => 'Especialidad creada con éxito']);
            } else {
                http_response_code(400);
                echo json_encode(['status' => 'error', 'message' => 'Error al crear la especialidad']);
            }
        } catch (\Exception $e) {
            http_response_code(500);
            echo json_encode(['status' => 'error', 'message' => $e->getMessage()]);
        }
    }

    public function updateEspecialidad($id) {
        try {
            if (!$this->validarId($id)) {
                http_response_code(400);
                echo json_encode(['status' => 'error', 'message' => 'ID inválido']);
                return;
            }

            $data = $this->obtenerDatos();

            if (!isset($data['nombre']) || empty($data['nombre'])) {
                http_response_code(400);
                echo json_encode(['status' => 'error', 'message' => 'El nombre es requerido']);
                return;
            }

            $nombre = trim($data['nombre']);
            if (strlen($nombre) < 3 || strlen($nombre) > 100) {
                http_response_code(400);
                echo json_encode(['status' => 'error', 'message' => 'El nombre debe tener entre 3 y 100 caracteres']);
                return;
            }

            if ($this->especialidad->updateEspecialidad($id, $nombre)) {
                http_response_code(200);
                echo json_encode(['status' => 'success', 'message' => 'Especialidad actualizada con éxito']);
            } else {
                http_response_code(400);
                echo json_encode(['status' => 'error', 'message' => 'Error al actualizar la especialidad']);
            }
        } catch (\Exception $e) {
            http_response_code(500);
            echo json_encode(['status' => 'error', 'message' => $e->getMessage()]);
        }
    }

    public function deleteEspecialidad($id) {
        try {
            if (!$this->validarId($id)) {
                http_response_code(400);
                echo json_encode(['status' => 'error', 'message' => 'ID inválido']);
                return;
            }

            if ($this->especialidad->deleteEspecialidad($id)) {
                http_response_code(200);
                echo json_encode(['status' => 'success', 'message' => 'Especialidad eliminada con éxito']);
            } else {
                http_response_code(400);
                echo json_encode(['status' => 'error', 'message' => 'Error al eliminar la especialidad']);
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

    private function validarId($id) {
        return is_numeric($id) && $id > 0;
    }
}
?>
