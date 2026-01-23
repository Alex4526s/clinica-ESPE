<?php
namespace App\Controllers;

use App\Models\User;

class UserController {
    private $user;

    public function __construct() {
        $this->user = new User();
        header('Content-Type: application/json; charset=utf-8');
    }

    // Obtener todos los usuarios
    public function getAllUsuarios() {
        try {
            $usuarios = $this->user->getAll();
            http_response_code(200);
            echo json_encode([
                'status' => 'success',
                'data' => $usuarios,
                'count' => count($usuarios)
            ]);
        } catch (\Exception $e) {
            http_response_code(500);
            echo json_encode([
                'status' => 'error',
                'message' => 'Error en el servidor',
                'error' => $e->getMessage()
            ]);
        }
    }

    // Obtener doctores (opcionalmente por especialidad_id)
    public function getDoctores($especialidad_id = null) {
        try {
            $doctores = $this->user->getDoctores($especialidad_id);

            http_response_code(200);
            echo json_encode([
                "status" => "success",
                "data" => $doctores,
                "count" => count($doctores)
            ]);
        } catch (\Exception $e) {
            http_response_code(500);
            echo json_encode([
                "status" => "error",
                "message" => "Error en el servidor",
                "error" => $e->getMessage()
            ]);
        }
    }

    // Obtener un usuario por ID
    public function getUsuario($id) {
        try {
            if (!$this->validarId($id)) {
                http_response_code(400);
                echo json_encode(['status' => 'error', 'message' => 'ID inválido']);
                return;
            }

            $usuario = $this->user->getById($id);
            if ($usuario) {
                http_response_code(200);
                echo json_encode(['status' => 'success', 'data' => $usuario]);
            } else {
                http_response_code(404);
                echo json_encode(['status' => 'error', 'message' => 'Usuario no encontrado']);
            }
        } catch (\Exception $e) {
            http_response_code(500);
            echo json_encode(['status' => 'error', 'message' => $e->getMessage()]);
        }
    }

    // Crear un nuevo usuario
    public function createUsuario() {
        try {
            $data = $this->obtenerDatos();

            $campos_requeridos = ['nombre', 'email', 'password'];
            if (!$this->validarCampos($data, $campos_requeridos)) {
                http_response_code(400);
                echo json_encode(['status' => 'error', 'message' => 'Faltan campos requeridos']);
                return;
            }

            if (!$this->validarEmail($data['email'])) {
                http_response_code(400);
                echo json_encode(['status' => 'error', 'message' => 'Email inválido']);
                return;
            }

            $nombre = trim($data['nombre']);
            if (strlen($nombre) < 3 || strlen($nombre) > 100) {
                http_response_code(400);
                echo json_encode(['status' => 'error', 'message' => 'El nombre debe tener entre 3 y 100 caracteres']);
                return;
            }

            if (strlen($data['password']) < 6) {
                http_response_code(400);
                echo json_encode(['status' => 'error', 'message' => 'La contraseña debe tener al menos 6 caracteres']);
                return;
            }

            $email = trim($data['email']);
            $password = password_hash($data['password'], PASSWORD_DEFAULT);

            $rol = isset($data['rol']) ? trim($data['rol']) : 'paciente';
            $roles_validos = ['paciente', 'medico', 'admin'];
            if (!in_array($rol, $roles_validos)) {
                http_response_code(400);
                echo json_encode(['status' => 'error', 'message' => 'Rol inválido']);
                return;
            }

            // Si envías especialidad_id para médicos
            $especialidad_id = isset($data['especialidad_id']) ? $data['especialidad_id'] : null;
            if ($rol !== 'medico') {
                $especialidad_id = null;
            }

            $result = $this->user->create($nombre, $email, $password, $rol, $especialidad_id);

            if ($result) {
                http_response_code(201);
                echo json_encode(['status' => 'success', 'message' => 'Usuario creado exitosamente']);
            } else {
                http_response_code(400);
                echo json_encode(['status' => 'error', 'message' => 'Error al crear el usuario']);
            }
        } catch (\Exception $e) {
            http_response_code(500);
            echo json_encode(['status' => 'error', 'message' => $e->getMessage()]);
        }
    }

    // Actualizar un usuario
    public function updateUsuario($id) {
        try {
            if (!$this->validarId($id)) {
                http_response_code(400);
                echo json_encode(['status' => 'error', 'message' => 'ID inválido']);
                return;
            }

            $data = $this->obtenerDatos();

            // Campos requeridos sin password (password es opcional)
            $campos_requeridos = ['nombre', 'email', 'rol'];
            if (!$this->validarCampos($data, $campos_requeridos)) {
                http_response_code(400);
                echo json_encode(['status' => 'error', 'message' => 'Faltan campos requeridos']);
                return;
            }

            if (!$this->validarEmail($data['email'])) {
                http_response_code(400);
                echo json_encode(['status' => 'error', 'message' => 'Email inválido']);
                return;
            }

            $nombre = trim($data['nombre']);
            if (strlen($nombre) < 3 || strlen($nombre) > 100) {
                http_response_code(400);
                echo json_encode(['status' => 'error', 'message' => 'El nombre debe tener entre 3 y 100 caracteres']);
                return;
            }

            // Validar password solo si se proporciona
            $password = null;
            if (isset($data['password']) && !empty(trim($data['password']))) {
                if (strlen($data['password']) < 6) {
                    http_response_code(400);
                    echo json_encode(['status' => 'error', 'message' => 'La contraseña debe tener al menos 6 caracteres']);
                    return;
                }
                $password = password_hash($data['password'], PASSWORD_DEFAULT);
            }

            $rol = trim($data['rol']);
            $roles_validos = ['paciente', 'medico', 'admin'];
            if (!in_array($rol, $roles_validos)) {
                http_response_code(400);
                echo json_encode(['status' => 'error', 'message' => 'Rol inválido']);
                return;
            }

            $email = trim($data['email']);

            $especialidad_id = isset($data['especialidad_id']) ? $data['especialidad_id'] : null;
            if ($rol !== 'medico') {
                $especialidad_id = null;
            }

            // Si no se proporciona password, obtener el existente
            if ($password === null) {
                $usuarioExistente = $this->user->getById($id);
                if (!$usuarioExistente) {
                    http_response_code(404);
                    echo json_encode(['status' => 'error', 'message' => 'Usuario no encontrado']);
                    return;
                }
                $password = $usuarioExistente['password'];
            }

            $result = $this->user->update($id, $nombre, $email, $password, $rol, $especialidad_id);

            if ($result) {
                http_response_code(200);
                echo json_encode(['status' => 'success', 'message' => 'Usuario actualizado exitosamente']);
            } else {
                http_response_code(400);
                echo json_encode(['status' => 'error', 'message' => 'Error al actualizar el usuario']);
            }
        } catch (\Exception $e) {
            http_response_code(500);
            echo json_encode(['status' => 'error', 'message' => $e->getMessage()]);
        }
    }

    // Eliminar un usuario
    public function deleteUsuario($id) {
        try {
            if (!$this->validarId($id)) {
                http_response_code(400);
                echo json_encode(['status' => 'error', 'message' => 'ID inválido']);
                return;
            }

            $result = $this->user->delete($id);
            if ($result) {
                http_response_code(200);
                echo json_encode(['status' => 'success', 'message' => 'Usuario eliminado exitosamente']);
            } else {
                http_response_code(400);
                echo json_encode(['status' => 'error', 'message' => 'Error al eliminar el usuario']);
            }
        } catch (\Exception $e) {
            http_response_code(500);
            echo json_encode(['status' => 'error', 'message' => $e->getMessage()]);
        }
    }

    // Auxiliares
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
            if (!isset($data[$campo]) || $data[$campo] === '') {
                return false;
            }
        }
        return true;
    }

    // Login - Autenticar usuario con email y password
    public function login() {
        try {
            $data = json_decode(file_get_contents("php://input"), true);
            
            if (!isset($data['email']) || !isset($data['password'])) {
                http_response_code(400);
                echo json_encode([
                    'status' => 'error',
                    'message' => 'Email y password son requeridos'
                ]);
                return;
            }

            $email = trim($data['email']);
            $password = trim($data['password']);

            if (!$this->validarEmail($email)) {
                http_response_code(400);
                echo json_encode([
                    'status' => 'error',
                    'message' => 'Email no válido'
                ]);
                return;
            }

            // Obtener usuario por email
            $usuario = $this->user->getByEmail($email);

            if (!$usuario) {
                http_response_code(401);
                echo json_encode([
                    'status' => 'error',
                    'message' => 'Correo o contraseña incorrectos'
                ]);
                return;
            }

            // Verificar contraseña (comparar hash SHA2)
            $passwordHash = hash('sha256', $password);
            if ($usuario['password'] !== $passwordHash && $usuario['password'] !== $password) {
                http_response_code(401);
                echo json_encode([
                    'status' => 'error',
                    'message' => 'Correo o contraseña incorrectos'
                ]);
                return;
            }

            // Login exitoso - devolver datos del usuario sin password
            unset($usuario['password']);
            
            http_response_code(200);
            echo json_encode([
                'status' => 'success',
                'message' => 'Login exitoso',
                'data' => $usuario
            ]);

        } catch (\Exception $e) {
            http_response_code(500);
            echo json_encode([
                'status' => 'error',
                'message' => 'Error en el servidor: ' . $e->getMessage()
            ]);
        }
    }

    private function validarId($id) {
        return is_numeric($id) && $id > 0;
    }

    private function validarEmail($email) {
        return filter_var($email, FILTER_VALIDATE_EMAIL) !== false;
    }
}
?>
