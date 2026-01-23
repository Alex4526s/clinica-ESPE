<?php
/**
 * Punto de entrada principal de la API REST
 * Clínica ESPE - Sistema de Gestión de Citas Médicas
 */

// Configurar error reporting para no mostrar warnings/notices
error_reporting(E_ERROR | E_PARSE);
ini_set('display_errors', '1');

$autoload = __DIR__ . '/../../vendor/autoload.php';
if (!file_exists($autoload)) {
    http_response_code(500);
    echo json_encode([
        'status' => 'error',
        'message' => 'Autoload no encontrado',
        'path' => $autoload
    ]);
    exit;
}

require_once $autoload;

// Fallback directo por si el autoload no detecta las clases en despliegues case-sensitive
foreach ([
    __DIR__ . '/../app/Controllers/ApiController.php',
    __DIR__ . '/../app/Controllers/UserController.php',
    __DIR__ . '/../app/Controllers/CitaController.php',
    __DIR__ . '/../app/Controllers/EspecialidadController.php'
] as $manualFile) {
    if (file_exists($manualFile)) {
        require_once $manualFile;
    }
}

use App\Controllers\UserController;
use App\Controllers\CitaController;
use App\Controllers\EspecialidadController;
use App\Controllers\ApiController;

// CORS + JSON
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Methods: GET, POST, PUT, DELETE, PATCH, OPTIONS');
header('Access-Control-Allow-Headers: Content-Type, Authorization, X-Requested-With');
header('Content-Type: application/json; charset=utf-8');

// Preflight
if ($_SERVER['REQUEST_METHOD'] === 'OPTIONS') {
    http_response_code(200);
    exit;
}

// Endpoint/action soportados
$endpoint = isset($_GET['action'])
    ? strtolower(trim($_GET['action']))
    : (isset($_GET['endpoint']) ? strtolower(trim($_GET['endpoint'])) : '');

$id = $_GET['id'] ?? null;
$method = $_SERVER['REQUEST_METHOD'];

// Si no hay endpoint, mostrar documentación
if ($endpoint === '') {
    $apiController = new ApiController();
    $apiController->docs();
    exit;
}

try {
    switch ($endpoint) {
        // ==================== USUARIOS ====================
        case 'usuarios': {
            $userController = new UserController();

            if ($method === 'GET' && $id) {
                $userController->getUsuario($id);
                exit;
            }

            if ($method === 'GET') {
                $userController->getAllUsuarios();
                exit;
            }

            if ($method === 'POST') {
                $userController->createUsuario();
                exit;
            }

            if ($method === 'PUT' && $id) {
                $userController->updateUsuario($id);
                exit;
            }

            if ($method === 'DELETE' && $id) {
                $userController->deleteUsuario($id);
                exit;
            }

            http_response_code(405);
            echo json_encode(['status' => 'error', 'message' => 'Método no permitido']);
            exit;
        }

        // ==================== ESPECIALIDADES ====================
        case 'especialidades': {
            $especialidadController = new EspecialidadController();

            if ($method === 'GET') {
                $especialidadController->getEspecialidades();
                exit;
            }

            if ($method === 'POST') {
                $especialidadController->createEspecialidad();
                exit;
            }

            if ($method === 'PUT' && $id) {
                $especialidadController->updateEspecialidad($id);
                exit;
            }

            if ($method === 'DELETE' && $id) {
                $especialidadController->deleteEspecialidad($id);
                exit;
            }

            http_response_code(405);
            echo json_encode(['status' => 'error', 'message' => 'Método no permitido']);
            exit;
        }



        // ==================== CITAS ====================
        case 'citas': {
            $citaController = new CitaController();

            $paciente_id = $_GET['paciente_id'] ?? null;
            $doctor_id   = $_GET['doctor_id'] ?? null;

            if ($method === 'GET' && $id) {
                $citaController->getCita($id);
                exit;
            }

            if ($method === 'GET') {
                // NUEVO: filtros
                if ($paciente_id) {
                    $citaController->getCitasByPaciente($paciente_id);
                    exit;
                }

                if ($doctor_id) {
                    $citaController->getCitasByDoctor($doctor_id);
                    exit;
                }

                // Por defecto: todas
                $citaController->getAllCitas();
                exit;
            }

            if ($method === 'POST') {
                $citaController->createCita();
                exit;
            }

            if ($method === 'PUT' && $id) {
                $citaController->updateCita($id);
                exit;
            }

            if ($method === 'DELETE' && $id) {
                $citaController->deleteCita($id);
                exit;
            }

            http_response_code(405);
            echo json_encode(['status' => 'error', 'message' => 'Método no permitido']);
            exit;
        }
        case 'doctores':
            $userController = new UserController();
            $especialidad_id = $_GET['especialidad_id'] ?? null;
            $userController->getDoctores($especialidad_id);
            break;

        // ==================== LOGIN ====================
        case 'login': {
            if ($method !== 'POST') {
                http_response_code(405);
                echo json_encode(['status' => 'error', 'message' => 'Método no permitido']);
                exit;
            }

            $raw = file_get_contents("php://input");
            $body = json_decode($raw, true);

            $email = $body['email'] ?? null;
            $password = $body['password'] ?? null;

            if (!$email || !$password) {
                http_response_code(400);
                echo json_encode(['status' => 'error', 'message' => 'Email y password requeridos']);
                exit;
            }

            // Aquí validamos directo con BD usando PDO
            try {
                // Ajusta si tu archivo de conexión es diferente
                // Este ejemplo asume que tienes variables de conexión definidas o una clase.
                $host = "localhost";
                $db   = "clinica_espe_v2";
                $user = "root";
                $pass = "";
                $charset = "utf8mb4";

                $dsn = "mysql:host=$host;dbname=$db;charset=$charset";
                $pdo = new PDO($dsn, $user, $pass, [
                    PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION
                ]);

                $stmt = $pdo->prepare("SELECT id, nombre, email, password, rol FROM usuarios WHERE email = :email LIMIT 1");
                $stmt->execute(['email' => $email]);
                $u = $stmt->fetch(PDO::FETCH_ASSOC);

                if (!$u) {
                    http_response_code(401);
                    echo json_encode(['status' => 'error', 'message' => 'Correo no registrado']);
                    exit;
                }

                if ((string)$u['password'] !== (string)$password) {
                    http_response_code(401);
                    echo json_encode(['status' => 'error', 'message' => 'Contraseña incorrecta']);
                    exit;
                }

                // No devolver password
                unset($u['password']);

                echo json_encode([
                    'status' => 'success',
                    'data' => $u
                ]);
                exit;

            } catch (Throwable $e) {
                http_response_code(500);
                echo json_encode([
                    'status' => 'error',
                    'message' => 'Error en login',
                    'error' => $e->getMessage()
                ]);
                exit;
            }
        }

        // ==================== DEFAULT ====================
        default:
            http_response_code(404);
            echo json_encode([
                'status' => 'error',
                'message' => 'Endpoint no encontrado',
                'endpoint' => $endpoint,
                'help' => 'Usa: ?endpoint=usuarios|especialidades|sintomas|citas'
            ]);
            exit;
    }
} catch (Throwable $e) {
    http_response_code(500);
    echo json_encode([
        'status' => 'error',
        'message' => 'Error en el servidor',
        'error' => $e->getMessage()
    ]);
    exit;
}
