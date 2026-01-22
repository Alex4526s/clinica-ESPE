/**
 * Ejemplos de consumo de la API con JavaScript/Fetch
 * Clínica ESPE - API REST
 */

// Base URL de la API
const API_BASE_URL = 'http://localhost/clinica-ESPE-main/backend-api/public/index.php';

// ============================================
// USUARIOS
// ============================================

/**
 * Obtener todos los usuarios
 */
async function obtenerUsuarios() {
    try {
        const response = await fetch(`${API_BASE_URL}?endpoint=usuarios`);
        const data = await response.json();
        console.log('Usuarios:', data);
        return data;
    } catch (error) {
        console.error('Error al obtener usuarios:', error);
    }
}

/**
 * Obtener usuario por ID
 */
async function obtenerUsuario(id) {
    try {
        const response = await fetch(`${API_BASE_URL}?endpoint=usuarios&id=${id}`);
        const data = await response.json();
        console.log('Usuario:', data);
        return data;
    } catch (error) {
        console.error('Error al obtener usuario:', error);
    }
}

/**
 * Crear un nuevo usuario
 */
async function crearUsuario(nombre, email, password, rol = 'paciente') {
    try {
        const response = await fetch(`${API_BASE_URL}?endpoint=usuarios`, {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify({
                nombre,
                email,
                password,
                rol
            })
        });
        const data = await response.json();
        console.log('Usuario creado:', data);
        return data;
    } catch (error) {
        console.error('Error al crear usuario:', error);
    }
}

/**
 * Actualizar un usuario
 */
async function actualizarUsuario(id, nombre, email, password, rol) {
    try {
        const response = await fetch(`${API_BASE_URL}?endpoint=usuarios&id=${id}`, {
            method: 'PUT',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify({
                nombre,
                email,
                password,
                rol
            })
        });
        const data = await response.json();
        console.log('Usuario actualizado:', data);
        return data;
    } catch (error) {
        console.error('Error al actualizar usuario:', error);
    }
}

/**
 * Eliminar un usuario
 */
async function eliminarUsuario(id) {
    try {
        const response = await fetch(`${API_BASE_URL}?endpoint=usuarios&id=${id}`, {
            method: 'DELETE',
            headers: {
                'Content-Type': 'application/json'
            }
        });
        const data = await response.json();
        console.log('Usuario eliminado:', data);
        return data;
    } catch (error) {
        console.error('Error al eliminar usuario:', error);
    }
}

// ============================================
// ESPECIALIDADES
// ============================================

/**
 * Obtener todas las especialidades
 */
async function obtenerEspecialidades() {
    try {
        const response = await fetch(`${API_BASE_URL}?endpoint=especialidades`);
        const data = await response.json();
        console.log('Especialidades:', data);
        return data;
    } catch (error) {
        console.error('Error al obtener especialidades:', error);
    }
}

/**
 * Crear una especialidad
 */
async function crearEspecialidad(nombre, descripcion = '') {
    try {
        const response = await fetch(`${API_BASE_URL}?endpoint=especialidades`, {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify({
                nombre,
                descripcion
            })
        });
        const data = await response.json();
        console.log('Especialidad creada:', data);
        return data;
    } catch (error) {
        console.error('Error al crear especialidad:', error);
    }
}

/**
 * Actualizar una especialidad
 */
async function actualizarEspecialidad(id, nombre, descripcion = '') {
    try {
        const response = await fetch(`${API_BASE_URL}?endpoint=especialidades&id=${id}`, {
            method: 'PUT',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify({
                nombre,
                descripcion
            })
        });
        const data = await response.json();
        console.log('Especialidad actualizada:', data);
        return data;
    } catch (error) {
        console.error('Error al actualizar especialidad:', error);
    }
}

/**
 * Eliminar una especialidad
 */
async function eliminarEspecialidad(id) {
    try {
        const response = await fetch(`${API_BASE_URL}?endpoint=especialidades&id=${id}`, {
            method: 'DELETE',
            headers: {
                'Content-Type': 'application/json'
            }
        });
        const data = await response.json();
        console.log('Especialidad eliminada:', data);
        return data;
    } catch (error) {
        console.error('Error al eliminar especialidad:', error);
    }
}

// ============================================
// SÍNTOMAS
// ============================================

/**
 * Obtener todos los síntomas
 */
async function obtenerSintomas() {
    try {
        const response = await fetch(`${API_BASE_URL}?endpoint=sintomas`);
        const data = await response.json();
        console.log('Síntomas:', data);
        return data;
    } catch (error) {
        console.error('Error al obtener síntomas:', error);
    }
}

/**
 * Crear un síntoma
 */
async function crearSintoma(palabra_clave, especialidad_id) {
    try {
        const response = await fetch(`${API_BASE_URL}?endpoint=sintomas`, {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify({
                palabra_clave,
                especialidad_id
            })
        });
        const data = await response.json();
        console.log('Síntoma creado:', data);
        return data;
    } catch (error) {
        console.error('Error al crear síntoma:', error);
    }
}

/**
 * Actualizar un síntoma
 */
async function actualizarSintoma(id, palabra_clave, especialidad_id) {
    try {
        const response = await fetch(`${API_BASE_URL}?endpoint=sintomas&id=${id}`, {
            method: 'PUT',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify({
                palabra_clave,
                especialidad_id
            })
        });
        const data = await response.json();
        console.log('Síntoma actualizado:', data);
        return data;
    } catch (error) {
        console.error('Error al actualizar síntoma:', error);
    }
}

/**
 * Eliminar un síntoma
 */
async function eliminarSintoma(id) {
    try {
        const response = await fetch(`${API_BASE_URL}?endpoint=sintomas&id=${id}`, {
            method: 'DELETE',
            headers: {
                'Content-Type': 'application/json'
            }
        });
        const data = await response.json();
        console.log('Síntoma eliminado:', data);
        return data;
    } catch (error) {
        console.error('Error al eliminar síntoma:', error);
    }
}

// ============================================
// CITAS
// ============================================

/**
 * Obtener todas las citas
 */
async function obtenerCitas() {
    try {
        const response = await fetch(`${API_BASE_URL}?endpoint=citas`);
        const data = await response.json();
        console.log('Citas:', data);
        return data;
    } catch (error) {
        console.error('Error al obtener citas:', error);
    }
}

/**
 * Obtener cita por ID
 */
async function obtenerCita(id) {
    try {
        const response = await fetch(`${API_BASE_URL}?endpoint=citas&id=${id}`);
        const data = await response.json();
        console.log('Cita:', data);
        return data;
    } catch (error) {
        console.error('Error al obtener cita:', error);
    }
}

/**
 * Crear una nueva cita
 */
async function crearCita(fecha, hora, paciente_id, doctor_id, estado, motivo) {
    try {
        const response = await fetch(`${API_BASE_URL}?endpoint=citas`, {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify({
                fecha,
                hora,
                paciente_id,
                doctor_id,
                estado,
                motivo
            })
        });
        const data = await response.json();
        console.log('Cita creada:', data);
        return data;
    } catch (error) {
        console.error('Error al crear cita:', error);
    }
}

/**
 * Actualizar una cita
 */
async function actualizarCita(id, fecha, hora, estado, motivo) {
    try {
        const response = await fetch(`${API_BASE_URL}?endpoint=citas&id=${id}`, {
            method: 'PUT',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify({
                fecha,
                hora,
                estado,
                motivo
            })
        });
        const data = await response.json();
        console.log('Cita actualizada:', data);
        return data;
    } catch (error) {
        console.error('Error al actualizar cita:', error);
    }
}

/**
 * Eliminar una cita
 */
async function eliminarCita(id) {
    try {
        const response = await fetch(`${API_BASE_URL}?endpoint=citas&id=${id}`, {
            method: 'DELETE',
            headers: {
                'Content-Type': 'application/json'
            }
        });
        const data = await response.json();
        console.log('Cita eliminada:', data);
        return data;
    } catch (error) {
        console.error('Error al eliminar cita:', error);
    }
}

// ============================================
// EJEMPLOS DE USO
// ============================================

/*
// Ejecutar en la consola del navegador

// 1. Obtener todos los usuarios
obtenerUsuarios();

// 2. Crear un nuevo usuario
crearUsuario('Carlos López', 'carlos@example.com', 'password123', 'paciente');

// 3. Obtener un usuario específico
obtenerUsuario(1);

// 4. Actualizar un usuario
actualizarUsuario(1, 'Carlos García', 'carlos@example.com', 'newpassword', 'medico');

// 5. Obtener especialidades
obtenerEspecialidades();

// 6. Crear especialidad
crearEspecialidad('Oftalmología', 'Especialidad para los ojos');

// 7. Obtener síntomas
obtenerSintomas();

// 8. Crear síntoma
crearSintoma('visión borrosa', 1);

// 9. Obtener citas
obtenerCitas();

// 10. Crear cita
crearCita('2026-02-01', '14:30:00', 4, 1, 'pendiente', 'Revisión general');

// 11. Actualizar cita
actualizarCita(1, '2026-02-01', '15:00:00', 'confirmada', 'Revisión cardiológica');

// 12. Eliminar cita
eliminarCita(1);
*/
