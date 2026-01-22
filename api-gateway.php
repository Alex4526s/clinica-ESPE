<?php
// Headers CORS
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Methods: GET, POST, PUT, DELETE, PATCH, OPTIONS');
header('Access-Control-Allow-Headers: Content-Type, Authorization, X-Requested-With');
header('Content-Type: application/json; charset=utf-8');

// Manejar preflight
if ($_SERVER['REQUEST_METHOD'] === 'OPTIONS') {
    http_response_code(200);
    exit;
}

// Cargar autoload
require_once __DIR__ . '/vendor/autoload.php';

// Define autoload para evitar que index.php lo cargue de nuevo
define('AUTOLOAD_LOADED', true);

use App\Controllers\UserController;
use App\Controllers\CitaController;
use App\Controllers\EspecialidadController;
use App\Controllers\SintomaController;
use App\Controllers\ApiController;

// Obtener el endpoint
$endpoint = isset($_GET['action']) ? strtolower(trim($_GET['action'])) : 
           (isset($_GET['endpoint']) ? strtolower(trim($_GET['endpoint'])) : '');
$id = isset($_GET['id']) ? $_GET['id'] : null;
$method = $_SERVER['REQUEST_METHOD'];

// Si no hay endpoint, mostrar documentación
if (empty($endpoint)) {
    $apiController = new ApiController();
    $apiController->docs();
    exit;
}

// Endpoint de login
if ($endpoint === 'auth-login') {
    try {
        $data = json_decode(file_get_contents('php://input'), true);
        
        if (!isset($data['email']) || !isset($data['password'])) {
            http_response_code(400);
            echo json_encode(['status' => 'error', 'message' => 'Email y contraseña requeridos']);
            exit;
        }

        // Buscar usuario en la base de datos
        $db = \Config\Database::getConnection();
        $query = "SELECT id, nombre, email, rol, password FROM usuarios WHERE email = ?";
        $stmt = $db->prepare($query);
        $stmt->execute([$data['email']]);
        
        $usuario = $stmt->fetch(\PDO::FETCH_ASSOC);
        
        if (!$usuario) {
            http_response_code(401);
            echo json_encode(['status' => 'error', 'message' => 'Email o contraseña incorrectos']);
            exit;
        }

        // Verificar la contraseña (tanto hash como texto plano para compatibilidad)
        $passwordValida = false;
        
        // Intentar con password_verify (para hashes)
        if (password_verify($data['password'], $usuario['password'])) {
            $passwordValida = true;
        }
        // Si no, comparar directamente (para contraseñas en texto plano)
        elseif ($data['password'] === $usuario['password']) {
            $passwordValida = true;
        }
        // También intentar con hash SHA1 (en caso de que el hash sea de ese tipo)
        elseif (sha1($data['password']) === $usuario['password']) {
            $passwordValida = true;
        }

        if ($passwordValida) {
            http_response_code(200);
            echo json_encode([
                'status' => 'success',
                'data' => [
                    'id' => $usuario['id'],
                    'nombre' => $usuario['nombre'],
                    'email' => $usuario['email'],
                    'rol' => $usuario['rol']
                ]
            ]);
            exit;
        }

        http_response_code(401);
        echo json_encode(['status' => 'error', 'message' => 'Email o contraseña incorrectos']);
        exit;
    } catch (\Exception $e) {
        http_response_code(500);
        echo json_encode(['status' => 'error', 'message' => $e->getMessage()]);
        exit;
    }
}

try {
    // Router simple basado en endpoints
    switch ($endpoint) {
        // ==================== USUARIOS ====================
        case 'usuarios':
            $userController = new UserController();
            
            if ($method === 'GET' && $id) {
                $userController->getUsuario($id);
            } elseif ($method === 'GET') {
                $userController->getAllUsuarios();
            } elseif ($method === 'POST') {
                $userController->createUsuario();
            } elseif ($method === 'PUT' && $id) {
                $userController->updateUsuario($id);
            } elseif ($method === 'DELETE' && $id) {
                $userController->deleteUsuario($id);
            } else {
                http_response_code(405);
                echo json_encode(['status' => 'error', 'message' => 'Método no permitido']);
            }
            break;

        // ==================== ESPECIALIDADES ====================
        case 'especialidades':
            $especialidadController = new EspecialidadController();
            
            if ($method === 'GET') {
                $especialidadController->getEspecialidades();
            } elseif ($method === 'POST') {
                $especialidadController->createEspecialidad();
            } elseif ($method === 'PUT' && $id) {
                $especialidadController->updateEspecialidad($id);
            } elseif ($method === 'DELETE' && $id) {
                $especialidadController->deleteEspecialidad($id);
            } else {
                http_response_code(405);
                echo json_encode(['status' => 'error', 'message' => 'Método no permitido']);
            }
            break;

        // ==================== SÍNTOMAS ====================
        case 'sintomas':
            $sintomaController = new SintomaController();
            
            if ($method === 'GET') {
                $sintomaController->getSintomas();
            } elseif ($method === 'POST') {
                $sintomaController->createSintoma();
            } elseif ($method === 'PUT' && $id) {
                $sintomaController->updateSintoma($id);
            } elseif ($method === 'DELETE' && $id) {
                $sintomaController->deleteSintoma($id);
            } else {
                http_response_code(405);
                echo json_encode(['status' => 'error', 'message' => 'Método no permitido']);
            }
            break;

        // ==================== CITAS ====================
        case 'citas':
            $citaController = new CitaController();
            
            if ($method === 'GET' && $id) {
                $citaController->getCita($id);
            } elseif ($method === 'GET') {
                $citaController->getAllCitas();
            } elseif ($method === 'POST') {
                $citaController->createCita();
            } elseif ($method === 'PUT' && $id) {
                $citaController->updateCita($id);
            } elseif ($method === 'DELETE' && $id) {
                $citaController->deleteCita($id);
            } else {
                http_response_code(405);
                echo json_encode(['status' => 'error', 'message' => 'Método no permitido']);
            }
            break;

        default:
            http_response_code(404);
            echo json_encode([
                'status' => 'error',
                'message' => 'Endpoint no encontrado',
                'endpoint' => $endpoint,
                'help' => 'Usa: /api?endpoint=usuarios|especialidades|sintomas|citas'
            ]);
            break;
    }
} catch (Exception $e) {
    http_response_code(500);
    echo json_encode(['status' => 'error', 'message' => $e->getMessage()]);
}
