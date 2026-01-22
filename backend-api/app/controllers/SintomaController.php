<?php
namespace App\Controllers;

use App\Models\SintomaEspecialidad;

class SintomaController {
    private $sintoma;

    public function __construct() {
        $this->sintoma = new SintomaEspecialidad();
        header('Content-Type: application/json; charset=utf-8');
    }

    // Obtener todos los síntomas por especialidad
    public function getSintomas() {
        try {
            $sintomas = $this->sintoma->getSintomasPorEspecialidad();
            http_response_code(200);
            echo json_encode([
                'status' => 'success',
                'data' => $sintomas,
                'count' => count($sintomas)
            ]);
        } catch (\Exception $e) {
            http_response_code(500);
            echo json_encode(['status' => 'error', 'message' => $e->getMessage()]);
        }
    }

    // Crear un nuevo síntoma
    public function createSintoma() {
        try {
            $data = $this->obtenerDatos();

            $campos_requeridos = ['palabra_clave', 'especialidad_id'];
            if (!$this->validarCampos($data, $campos_requeridos)) {
                http_response_code(400);
                echo json_encode(['status' => 'error', 'message' => 'Faltan campos requeridos']);
                return;
            }

            $palabra_clave = trim($data['palabra_clave']);
            if (strlen($palabra_clave) < 2 || strlen($palabra_clave) > 100) {
                http_response_code(400);
                echo json_encode(['status' => 'error', 'message' => 'La palabra clave debe tener entre 2 y 100 caracteres']);
                return;
            }

            if (!$this->validarId($data['especialidad_id'])) {
                http_response_code(400);
                echo json_encode(['status' => 'error', 'message' => 'ID de especialidad inválido']);
                return;
            }

            if ($this->sintoma->createSintomaEspecialidad($palabra_clave, $data['especialidad_id'])) {
                http_response_code(201);
                echo json_encode(['status' => 'success', 'message' => 'Síntoma creado con éxito']);
            } else {
                http_response_code(400);
                echo json_encode(['status' => 'error', 'message' => 'Error al crear el síntoma']);
            }
        } catch (\Exception $e) {
            http_response_code(500);
            echo json_encode(['status' => 'error', 'message' => $e->getMessage()]);
        }
    }

    // Actualizar un síntoma
    public function updateSintoma($id) {
        try {
            if (!$this->validarId($id)) {
                http_response_code(400);
                echo json_encode(['status' => 'error', 'message' => 'ID inválido']);
                return;
            }

            $data = $this->obtenerDatos();

            $campos_requeridos = ['palabra_clave', 'especialidad_id'];
            if (!$this->validarCampos($data, $campos_requeridos)) {
                http_response_code(400);
                echo json_encode(['status' => 'error', 'message' => 'Faltan campos requeridos']);
                return;
            }

            $palabra_clave = trim($data['palabra_clave']);
            if (strlen($palabra_clave) < 2 || strlen($palabra_clave) > 100) {
                http_response_code(400);
                echo json_encode(['status' => 'error', 'message' => 'La palabra clave debe tener entre 2 y 100 caracteres']);
                return;
            }

            if (!$this->validarId($data['especialidad_id'])) {
                http_response_code(400);
                echo json_encode(['status' => 'error', 'message' => 'ID de especialidad inválido']);
                return;
            }

            if ($this->sintoma->updateSintomaEspecialidad($id, $palabra_clave, $data['especialidad_id'])) {
                http_response_code(200);
                echo json_encode(['status' => 'success', 'message' => 'Síntoma actualizado con éxito']);
            } else {
                http_response_code(400);
                echo json_encode(['status' => 'error', 'message' => 'Error al actualizar el síntoma']);
            }
        } catch (\Exception $e) {
            http_response_code(500);
            echo json_encode(['status' => 'error', 'message' => $e->getMessage()]);
        }
    }

    // Eliminar un síntoma
    public function deleteSintoma($id) {
        try {
            if (!$this->validarId($id)) {
                http_response_code(400);
                echo json_encode(['status' => 'error', 'message' => 'ID inválido']);
                return;
            }

            if ($this->sintoma->deleteSintomaEspecialidad($id)) {
                http_response_code(200);
                echo json_encode(['status' => 'success', 'message' => 'Síntoma eliminado con éxito']);
            } else {
                http_response_code(400);
                echo json_encode(['status' => 'error', 'message' => 'Error al eliminar el síntoma']);
            }
        } catch (\Exception $e) {
            http_response_code(500);
            echo json_encode(['status' => 'error', 'message' => $e->getMessage()]);
        }
    }

    // Analizar síntomas del usuario y recomendar especialidades
    public function analizarSintomas($textoSintomas) {
        try {
            // Obtener todos los síntomas de la base de datos
            $todosSintomas = $this->sintoma->getSintomasPorEspecialidad();
            
            // Si no hay síntomas en BD, retornar 0 confianza para activar IA
            if (empty($todosSintomas)) {
                http_response_code(200);
                echo json_encode([
                    'status' => 'success',
                    'especialidades' => [],
                    'message' => 'Sin síntomas en BD - usar IA'
                ]);
                return;
            }

            // Normalizar entrada del usuario
            $textoNormalizado = $this->normalizarTexto($textoSintomas);
            $palabrasUsuario = preg_split('/[\s,;.!?\-]+/', $textoNormalizado, -1, PREG_SPLIT_NO_EMPTY);
            $palabrasUsuario = array_filter($palabrasUsuario, function($p) { return strlen($p) > 2; });

            // Palabras que tienen bajo valor diagnóstico
            $palabrasBajoValor = ['dolor', 'malestar', 'problemas', 'molestias', 'cambios', 'de', 'el', 'la', 'y', 'o', 'al', 'en', 'con', 'sin', 'por', 'para', 'todo', 'muy'];

            // Calcular puntajes por especialidad
            $puntajes = [];
            $detalles = [];
            $conteoSintomas = [];

            foreach ($todosSintomas as $sintoma) {
                $palabraClaveNorm = $this->normalizarTexto($sintoma['palabra_clave']);
                $palabrasClave = preg_split('/[\s]+/', $palabraClaveNorm, -1, PREG_SPLIT_NO_EMPTY);
                $especialidad = $sintoma['especialidad_nombre'];

                $puntaje = 0;
                $tipoCoincidencia = 'ninguna';

                // 1. Coincidencia exacta de frase completa
                if (strpos($textoNormalizado, $palabraClaveNorm) !== false) {
                    $puntaje = 150;
                    $tipoCoincidencia = 'exacta_frase';
                } else {
                    // 2. Análisis palabra por palabra con criterios mejorados
                    $palabrasExactas = 0;
                    $puntajeParcial = 0;
                    $palabrasValidasClave = 0;

                    foreach ($palabrasClave as $palClave) {
                        // Saltar palabras con bajo valor diagnóstico
                        if (in_array($palClave, $palabrasBajoValor) || strlen($palClave) <= 2) {
                            continue;
                        }
                        $palabrasValidasClave++;

                        foreach ($palabrasUsuario as $palUsuario) {
                            // Coincidencia exacta
                            if ($palUsuario === $palClave) {
                                $palabrasExactas++;
                                // Puntuación aumentada para mayor diferenciación
                                $puntaje += strlen($palClave) > 6 ? 50 : 35;
                            }
                            // Coincidencia parcial (substring)
                            else if (strlen($palClave) > 5 && strlen($palUsuario) > 5 && 
                                    (strpos($palUsuario, $palClave) !== false || strpos($palClave, $palUsuario) !== false)) {
                                $puntajeParcial += 10;
                                }
                                // Coincidencia tolerante a faltas ortográficas (Levenshtein ligero)
                                else if ($this->sonSimilares($palClave, $palUsuario)) {
                                    $puntajeParcial += 15;
                            }
                        }
                    }

                    // Bonificación agresiva por múltiples coincidencias exactas
                    if ($palabrasExactas > 0) {
                        $tipoCoincidencia = "exactas({$palabrasExactas})";
                        if ($palabrasExactas >= 2) {
                            $puntaje += 80; // Bonus muy alto por múltiples coincidencias
                        } else if ($palabrasExactas === 1) {
                            if ($palabrasValidasClave >= 2) {
                                $puntaje += 20; // Bonus si hay al menos 2 palabras clave válidas
                            } else {
                                $puntaje += 10;
                            }
                        }
                        $puntaje += $puntajeParcial;
                    }
                }

                // Acumular puntaje
                if ($puntaje > 0) {
                    if (!isset($puntajes[$especialidad])) {
                        $puntajes[$especialidad] = 0;
                        $detalles[$especialidad] = [];
                        $conteoSintomas[$especialidad] = 0;
                    }
                    $puntajes[$especialidad] += $puntaje;
                    $conteoSintomas[$especialidad]++;
                    $detalles[$especialidad][] = [
                        'sintoma' => $sintoma['palabra_clave'],
                        'puntaje' => $puntaje,
                        'tipo' => $tipoCoincidencia
                    ];
                }
            }

            // Ajustes contextuales para priorizar garganta/medicina general frente a tos genérica
            $textoLower = $textoNormalizado;
            $throatKeywords = ['dolor de garganta','garganta inflamada','dolor al tragar','faringitis','amigdalitis','laringitis','ronquera','placas en la garganta'];
            $respSevereKeywords = ['dificultad para respirar','falta de aire','disnea','sibilancias','opresion toracica','opresion en el pecho'];
            $handKeywords = ['dolor de manos','dolor en las manos','dolor en la mano','rigidez en manos','hinchazon de manos','inflamacion en manos','tenosinovitis de mano','fractura de mano','esguince de mano'];

            $hayGarganta = false;
            foreach ($throatKeywords as $k) {
                if (strpos($textoLower, $k) !== false) {
                    $hayGarganta = true;
                    break;
                }
            }

            $hayRespSevero = false;
            foreach ($respSevereKeywords as $k) {
                if (strpos($textoLower, $k) !== false) {
                    $hayRespSevero = true;
                    break;
                }
            }

            $hayManos = false;
            foreach ($handKeywords as $k) {
                if (strpos($textoLower, $k) !== false) {
                    $hayManos = true;
                    break;
                }
            }

            // Normalizar puntajes SIN penalización excesiva
            // El conteo de síntomas no debería penalizar si tienen alta especificidad
            foreach ($puntajes as $especialidad => &$puntaje) {
                // Solo penalizar si hay MUCHAS coincidencias con puntajes muy bajos
                if (isset($conteoSintomas[$especialidad]) && $conteoSintomas[$especialidad] > 10) {
                    $promedioPuntaje = $puntaje / $conteoSintomas[$especialidad];
                    if ($promedioPuntaje < 15) { // Muy bajo promedio
                        $puntaje = $puntaje * 0.7; // Penalizar levemente
                    }
                }

                // Boost Otorrinolaringología cuando hay síntomas de garganta y no hay respiratorios severos
                if ($hayGarganta && !$hayRespSevero && $especialidad === 'Otorrinolaringología') {
                    $puntaje += 200;
                }

                // Atenuar Neumología cuando no hay síntomas respiratorios severos
                if ($especialidad === 'Neumología') {
                    if ($hayGarganta && !$hayRespSevero) {
                        $puntaje = $puntaje * 0.3;
                    } elseif (!$hayRespSevero && !$hayGarganta) {
                        $puntaje = $puntaje * 0.6;
                    }
                }

                // Reforzar Medicina General cuando síntomas son inespecíficos (sin garganta ni respiratorios severos)
                if (!$hayRespSevero && !$hayGarganta && !$hayManos && $especialidad === 'Medicina General') {
                    $puntaje += 80;
                }

                // Boost Reumatología y Traumatología/Ortopedia para síntomas de manos
                if ($hayManos) {
                    if ($especialidad === 'Reumatología') {
                        $puntaje += 180;
                    }
                    if ($especialidad === 'Traumatología' || $especialidad === 'Ortopedia') {
                        $puntaje += 140;
                    }
                }
            }

            // Ordenar por puntaje descendente
            arsort($puntajes);

            // Separar Medicina General del resto
            $medicinGeneral = isset($puntajes['Medicina General']) ? $puntajes['Medicina General'] : 0;
            $otrasEspecialidades = [];
            $recomendaciones = [];

            foreach ($puntajes as $especialidad => $puntaje) {
                if ($especialidad !== 'Medicina General') {
                    $otrasEspecialidades[$especialidad] = $puntaje;
                }
            }

            // Ordenar otras especialidades
            arsort($otrasEspecialidades);

            // Generar recomendaciones: listar todas las especialidades ordenadas por puntaje
            // Incluye Medicina General si tiene puntaje > 0
            $recomendaciones = [];
            $puntajeMaximoGlobal = !empty($puntajes) ? max($puntajes) : 0;

            // Agregar todas las especialidades (incluida Medicina General) con confianza relativa
            foreach ($puntajes as $especialidad => $puntaje) {
                if ($puntaje <= 0) {
                    continue;
                }

                $confianza = $puntajeMaximoGlobal > 0 ? min(100, round(($puntaje / $puntajeMaximoGlobal) * 100)) : 50;

                $recomendaciones[] = [
                    'nombre' => $this->normalizarUtf8($especialidad),
                    'confianza' => max(40, $confianza),
                    'puntaje' => $puntaje,
                    'detalles' => array_slice($detalles[$especialidad] ?? [], 0, 3)
                ];
            }

            // Si no hubo puntajes, devolver Medicina General por defecto
            if (empty($recomendaciones)) {
                $recomendaciones[] = [
                    'nombre' => 'Medicina General',
                    'confianza' => 35,
                    'puntaje' => 0,
                    'detalles' => []
                ];
            }

            http_response_code(200);
            echo json_encode([
                'status' => 'success',
                'sintomas_analizados' => $textoSintomas,
                'especialidades' => $recomendaciones,
                'puntajes_completos' => $puntajes
            ]);

        } catch (\Exception $e) {
            http_response_code(500);
            echo json_encode([
                'status' => 'error',
                'message' => 'Error al analizar síntomas: ' . $e->getMessage()
            ]);
        }
    }

    // Normalizar texto: eliminar tildes y convertir a minúsculas
    // Función para normalizar texto con UTF-8 correcto
    private function normalizarUtf8($texto) {
        // Limpiar caracteres corruptos
        $texto = iconv('UTF-8', 'UTF-8//IGNORE', $texto);
        // Remover caracteres de control
        $texto = preg_replace('/[\x00-\x08\x0B\x0C\x0E-\x1F\x7F]/u', '', $texto);
        return trim($texto);
    }

    // Función existente normalizarTexto
    private function normalizarTexto($texto) {
        $texto = strtolower($texto);
        $buscar = [
            'á', 'à', 'ä', 'â', 'ª',
            'é', 'è', 'ë', 'ê',
            'í', 'ì', 'ï', 'î',
            'ó', 'ò', 'ö', 'ô', 'º',
            'ú', 'ù', 'ü', 'û',
            'ñ', 'ç'
        ];
        $reemplazar = [
            'a', 'a', 'a', 'a', 'a',
            'e', 'e', 'e', 'e',
            'i', 'i', 'i', 'i',
            'o', 'o', 'o', 'o', 'o',
            'u', 'u', 'u', 'u',
            'n', 'c'
        ];
        return str_replace($buscar, $reemplazar, $texto);
    }

    // Coincidencia tolerante a faltas ortográficas (distancia de Levenshtein acotada)
    private function sonSimilares($a, $b) {
        $lenA = strlen($a);
        $lenB = strlen($b);
        if ($lenA === 0 || $lenB === 0) {
            return false;
        }

        // Si alguno es substring del otro, ya fue capturado antes; aquí solo leves variaciones
        $dist = levenshtein($a, $b);
        $maxLen = max($lenA, $lenB);

        // Umbral adaptativo: 1 para cortas, 2 para medias, 3 para largas
        if ($maxLen <= 4) {
            return $dist <= 1;
        }
        if ($maxLen <= 8) {
            return $dist <= 2;
        }
        return $dist <= 3;
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
}
?>
