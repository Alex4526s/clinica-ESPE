<?php
/**
 * Configuración de rutas de la API
 */

return [
    // Documentación
    'docs' => [
        'method' => 'GET',
        'description' => 'Obtener documentación de la API',
        'handler' => 'App\\Controllers\\ApiController@docs'
    ],

    // USUARIOS
    'login' => [
        'method' => 'POST',
        'description' => 'Autenticar usuario con email y password',
        'body' => ['email' => 'email', 'password' => 'string'],
        'handler' => 'App\\Controllers\\UserController@login'
    ],
    'usuarios' => [
        'method' => 'GET',
        'description' => 'Obtener todos los usuarios',
        'handler' => 'App\\Controllers\\UserController@getAllUsuarios'
    ],
    'usuarios/{id}' => [
        'method' => 'GET',
        'description' => 'Obtener un usuario por ID',
        'params' => ['id' => 'int'],
        'handler' => 'App\\Controllers\\UserController@getUsuario'
    ],
    'usuarios' => [
        'method' => 'POST',
        'description' => 'Crear un nuevo usuario',
        'body' => ['nombre' => 'string', 'email' => 'email', 'password' => 'string', 'rol' => 'string (opcional)'],
        'handler' => 'App\\Controllers\\UserController@createUsuario'
    ],
    'usuarios/{id}' => [
        'method' => 'PUT',
        'description' => 'Actualizar un usuario',
        'params' => ['id' => 'int'],
        'body' => ['nombre' => 'string', 'email' => 'email', 'password' => 'string', 'rol' => 'string'],
        'handler' => 'App\\Controllers\\UserController@updateUsuario'
    ],
    'usuarios/{id}' => [
        'method' => 'DELETE',
        'description' => 'Eliminar un usuario',
        'params' => ['id' => 'int'],
        'handler' => 'App\\Controllers\\UserController@deleteUsuario'
    ],

    // ESPECIALIDADES
    'especialidades' => [
        'method' => 'GET',
        'description' => 'Obtener todas las especialidades',
        'handler' => 'App\\Controllers\\EspecialidadController@getEspecialidades'
    ],
    'especialidades' => [
        'method' => 'POST',
        'description' => 'Crear una especialidad',
        'body' => ['nombre' => 'string', 'descripcion' => 'string (opcional)'],
        'handler' => 'App\\Controllers\\EspecialidadController@createEspecialidad'
    ],
    'especialidades/{id}' => [
        'method' => 'PUT',
        'description' => 'Actualizar una especialidad',
        'params' => ['id' => 'int'],
        'body' => ['nombre' => 'string', 'descripcion' => 'string (opcional)'],
        'handler' => 'App\\Controllers\\EspecialidadController@updateEspecialidad'
    ],
    'especialidades/{id}' => [
        'method' => 'DELETE',
        'description' => 'Eliminar una especialidad',
        'params' => ['id' => 'int'],
        'handler' => 'App\\Controllers\\EspecialidadController@deleteEspecialidad'
    ],

    // SÍNTOMAS
    'sintomas' => [
        'method' => 'GET',
        'description' => 'Obtener todos los síntomas por especialidad',
        'handler' => 'App\\Controllers\\SintomaController@getSintomas'
    ],
    'sintomas' => [
        'method' => 'POST',
        'description' => 'Crear un nuevo síntoma',
        'body' => ['palabra_clave' => 'string', 'especialidad_id' => 'int'],
        'handler' => 'App\\Controllers\\SintomaController@createSintoma'
    ],
    'sintomas/{id}' => [
        'method' => 'PUT',
        'description' => 'Actualizar un síntoma',
        'params' => ['id' => 'int'],
        'body' => ['palabra_clave' => 'string', 'especialidad_id' => 'int'],
        'handler' => 'App\\Controllers\\SintomaController@updateSintoma'
    ],
    'sintomas/{id}' => [
        'method' => 'DELETE',
        'description' => 'Eliminar un síntoma',
        'params' => ['id' => 'int'],
        'handler' => 'App\\Controllers\\SintomaController@deleteSintoma'
    ],

    // CITAS
    'citas' => [
        'method' => 'GET',
        'description' => 'Obtener todas las citas',
        'handler' => 'App\\Controllers\\CitaController@getAllCitas'
    ],
    'citas/{id}' => [
        'method' => 'GET',
        'description' => 'Obtener una cita por ID',
        'params' => ['id' => 'int'],
        'handler' => 'App\\Controllers\\CitaController@getCita'
    ],
    'citas' => [
        'method' => 'POST',
        'description' => 'Crear una nueva cita',
        'body' => [
            'fecha' => 'date (YYYY-MM-DD)',
            'hora' => 'time (HH:MM:SS)',
            'paciente_id' => 'int',
            'doctor_id' => 'int',
            'estado' => 'enum (pendiente, confirmada, completada, cancelada)',
            'motivo' => 'string'
        ],
        'handler' => 'App\\Controllers\\CitaController@createCita'
    ],
    'citas/{id}' => [
        'method' => 'PUT',
        'description' => 'Actualizar una cita',
        'params' => ['id' => 'int'],
        'body' => [
            'fecha' => 'date',
            'hora' => 'time',
            'estado' => 'enum',
            'motivo' => 'string'
        ],
        'handler' => 'App\\Controllers\\CitaController@updateCita'
    ],
    'citas/{id}' => [
        'method' => 'DELETE',
        'description' => 'Eliminar una cita',
        'params' => ['id' => 'int'],
        'handler' => 'App\\Controllers\\CitaController@deleteCita'
    ],
];
?>
