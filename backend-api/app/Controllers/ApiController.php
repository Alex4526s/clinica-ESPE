<?php
namespace App\Controllers;

class ApiController {
    
    public function __construct() {
        header('Content-Type: application/json; charset=utf-8');
    }

    // Mostrar documentación de la API
    public function docs() {
        http_response_code(200);
        echo json_encode([
            'status' => 'success',
            'api' => 'Clínica ESPE - API REST',
            'version' => '1.0.0',
            'documentation_url' => '/api/api-docs.html',
            'base_url' => 'http://localhost/clinica-ESPE-main/backend-api/public',
            'endpoints' => $this->getEndpoints()
        ], JSON_PRETTY_PRINT | JSON_UNESCAPED_SLASHES);
    }

    // Obtener lista de endpoints
    private function getEndpoints() {
        return [
            'usuarios' => [
                'GET /api?endpoint=usuarios' => 'Obtener todos los usuarios',
                'GET /api?endpoint=usuarios&id={id}' => 'Obtener usuario por ID',
                'POST /api?endpoint=usuarios' => 'Crear nuevo usuario',
                'PUT /api?endpoint=usuarios&id={id}' => 'Actualizar usuario',
                'DELETE /api?endpoint=usuarios&id={id}' => 'Eliminar usuario'
            ],
            'especialidades' => [
                'GET /api?endpoint=especialidades' => 'Obtener todas las especialidades',
                'POST /api?endpoint=especialidades' => 'Crear especialidad',
                'PUT /api?endpoint=especialidades&id={id}' => 'Actualizar especialidad',
                'DELETE /api?endpoint=especialidades&id={id}' => 'Eliminar especialidad'
            ],
            'citas' => [
                'GET /api?endpoint=citas' => 'Obtener todas las citas',
                'GET /api?endpoint=citas&id={id}' => 'Obtener cita por ID',
                'POST /api?endpoint=citas' => 'Crear nueva cita',
                'PUT /api?endpoint=citas&id={id}' => 'Actualizar cita',
                'DELETE /api?endpoint=citas&id={id}' => 'Eliminar cita'
            ]
        ];
    }
}
?>
