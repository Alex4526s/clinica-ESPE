<?php
namespace Config;

use PDO;
use PDOException;

class Database {
    private static $conn;
    
    // Configuración de la base de datos
    private static $host = 'localhost';
    private static $dbname = 'clinica_espe_v2';
    private static $user = 'root';
    private static $password = '';
    private static $charset = 'utf8mb4';

    // Método estático para obtener la conexión (Singleton)
    public static function getConnection() {
        if (self::$conn === null) {
            self::$conn = self::connect();
        }
        return self::$conn;
    }

    // Método privado para crear la conexión
    private static function connect() {
        try {
            $dsn = "mysql:host=" . self::$host . 
                   ";dbname=" . self::$dbname . 
                   ";charset=" . self::$charset;
            
            $conn = new PDO(
                $dsn,
                self::$user,
                self::$password,
                [
                    PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
                    PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
                    PDO::ATTR_EMULATE_PREPARES => false,
                    PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES " . self::$charset
                ]
            );
            
            return $conn;
        } catch (PDOException $e) {
            self::handleConnectionError($e);
        }
    }

    // Método para manejar errores de conexión
    private static function handleConnectionError(PDOException $e) {
        // Log del error (se puede guardar en un archivo de logs)
        error_log('Database Connection Error: ' . $e->getMessage(), 0);
        
        // Retornar un mensaje amigable al usuario
        if (php_sapi_name() === 'cli') {
            // CLI mode
            throw new PDOException('Error de conexión a la base de datos: ' . $e->getMessage());
        } else {
            // Web mode
            http_response_code(500);
            die(json_encode([
                'status' => 'error',
                'message' => 'Error de conexión a la base de datos',
                'error' => $e->getMessage()
            ]));
        }
    }

    // Método para cerrar la conexión (si es necesario)
    public static function closeConnection() {
        self::$conn = null;
    }

    // Método para verificar el estado de la conexión
    public static function isConnected() {
        return self::$conn !== null;
    }

    // Método para obtener información de la conexión
    public static function getConnectionInfo() {
        try {
            $conn = self::getConnection();
            $stmt = $conn->query("SELECT VERSION() as version");
            $version = $stmt->fetch();
            
            return [
                'host' => self::$host,
                'database' => self::$dbname,
                'user' => self::$user,
                'charset' => self::$charset,
                'mysql_version' => $version['version'] ?? 'Unknown'
            ];
        } catch (PDOException $e) {
            throw new \Exception('Error al obtener información de la conexión: ' . $e->getMessage());
        }
    }

    // Método para ejecutar una consulta directa (sin parámetros)
    public static function query($sql) {
        try {
            $conn = self::getConnection();
            return $conn->query($sql);
        } catch (PDOException $e) {
            throw new \Exception('Error en la consulta: ' . $e->getMessage());
        }
    }

    // Método para preparar una consulta
    public static function prepare($sql) {
        try {
            $conn = self::getConnection();
            return $conn->prepare($sql);
        } catch (PDOException $e) {
            throw new \Exception('Error al preparar la consulta: ' . $e->getMessage());
        }
    }

    // Método para ejecutar una transacción
    public static function beginTransaction() {
        try {
            self::getConnection()->beginTransaction();
        } catch (PDOException $e) {
            throw new \Exception('Error al iniciar la transacción: ' . $e->getMessage());
        }
    }

    public static function commit() {
        try {
            self::getConnection()->commit();
        } catch (PDOException $e) {
            throw new \Exception('Error al confirmar la transacción: ' . $e->getMessage());
        }
    }

    public static function rollback() {
        try {
            self::getConnection()->rollBack();
        } catch (PDOException $e) {
            throw new \Exception('Error al revertir la transacción: ' . $e->getMessage());
        }
    }
}
?>
