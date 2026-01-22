-- Crear la base de datos
CREATE DATABASE IF NOT EXISTS clinica_espe_v2;
USE clinica_espe_v2;

-- Tabla de Usuarios (pacientes y médicos)
CREATE TABLE IF NOT EXISTS usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    rol ENUM('paciente', 'medico', 'admin') DEFAULT 'paciente',
    especialidad_id INT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Tabla de Especialidades
CREATE TABLE IF NOT EXISTS especialidades (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL UNIQUE,
    descripcion TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Tabla de Síntomas por Especialidad
CREATE TABLE IF NOT EXISTS sintomas_especialidad (
    id INT AUTO_INCREMENT PRIMARY KEY,
    palabra_clave VARCHAR(100) NOT NULL,
    especialidad_id INT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (especialidad_id) REFERENCES especialidades(id) ON DELETE CASCADE,
    UNIQUE KEY unique_sintoma_especialidad (palabra_clave, especialidad_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Tabla de Citas
CREATE TABLE IF NOT EXISTS citas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    fecha DATE NOT NULL,
    hora TIME NOT NULL,
    paciente_id INT NOT NULL,
    doctor_id INT NOT NULL,
    especialidad_id INT NULL,
    estado ENUM('pendiente', 'confirmada', 'completada', 'cancelada') DEFAULT 'pendiente',
    motivo TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (paciente_id) REFERENCES usuarios(id) ON DELETE CASCADE,
    FOREIGN KEY (doctor_id) REFERENCES usuarios(id) ON DELETE CASCADE,
    FOREIGN KEY (especialidad_id) REFERENCES especialidades(id) ON DELETE SET NULL,
    INDEX idx_fecha (fecha),
    INDEX idx_paciente (paciente_id),
    INDEX idx_doctor (doctor_id),
    INDEX idx_estado (estado)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Agregar Foreign Key para especialidad_id en usuarios si no existe
ALTER TABLE usuarios ADD CONSTRAINT fk_usuarios_especialidad 
FOREIGN KEY (especialidad_id) REFERENCES especialidades(id) ON DELETE SET NULL;

-- Inserts de ejemplo
INSERT INTO especialidades (nombre, descripcion) VALUES
('Cardiología', 'Enfermedades del corazón y sistema circulatorio'),
('Dermatología', 'Enfermedades de la piel'),
('Neurología', 'Enfermedades del sistema nervioso'),
('Pediatría', 'Medicina para niños'),
('Ortopedia', 'Enfermedades de huesos y articulaciones');

INSERT INTO usuarios (nombre, email, password, rol, especialidad_id) VALUES
('Dr. Juan Pérez', 'juan.perez@clinica.com', SHA2('password123', 256), 'medico', 1),
('Dr. María García', 'maria.garcia@clinica.com', SHA2('password123', 256), 'medico', 2),
('Dr. Carlos Rodríguez', 'carlos.rodriguez@clinica.com', SHA2('password123', 256), 'medico', 3),
('Dr. Ana López', 'ana.lopez@clinica.com', SHA2('password123', 256), 'medico', 4),
('Dr. Pedro Martínez', 'pedro.martinez@clinica.com', SHA2('password123', 256), 'medico', 5),
('Admin Usuario', 'admin@clinica.com', SHA2('admin123', 256), 'admin', NULL),
('Carlos López', 'carlos.lopez@patient.com', SHA2('patient123', 256), 'paciente', NULL),
('Ana Martínez', 'ana.martinez@patient.com', SHA2('patient123', 256), 'paciente', NULL);

INSERT INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('dolor de pecho', 1),
('palpitaciones', 1),
('acne', 2),
('eczema', 2),
('dolor de cabeza', 3),
('mareos', 3),
('fiebre', 4),
('tos', 4),
('dolor de rodilla', 5),
('fractura', 5);
