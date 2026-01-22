USE clinica_espe_v2;

-- =============================================
-- INSERTAR ESPECIALIDADES BASICAS DE CLINICA
-- =============================================

INSERT INTO especialidades (nombre, descripcion) VALUES
(1, 'Medicina General', 'Consultas generales y diagnóstico inicial'),
(2, 'Pediatria', 'Atención médica de niños y recién nacidos'),
(3, 'Cardiologia', 'Enfermedades del corazón y sistema cardiovascular'),
(4, 'Neurologia', 'Enfermedades del sistema nervioso'),
(5, 'Oftalmologia', 'Enfermedades de los ojos'),
(6, 'Otorrinolaringologia', 'Enfermedades de oído, nariz y garganta'),
(7, 'Odontologia', 'Cuidado dental y bucal'),
(8, 'Dermatologia', 'Enfermedades de la piel'),
(9, 'Gastroenterologia', 'Enfermedades del sistema digestivo'),
(10, 'Neumologia', 'Enfermedades del sistema respiratorio'),
(11, 'Urologia', 'Enfermedades del sistema urinario'),
(12, 'Ginecologia', 'Salud reproductiva femenina'),
(13, 'Traumatologia', 'Traumatismos y lesiones óseas'),
(14, 'Psiquiatria', 'Salud mental y trastornos psicológicos'),
(15, 'Endocrinologia', 'Enfermedades del sistema endocrino'),
(16, 'Reumatologia', 'Enfermedades reumáticas y articulares');

-- =============================================
-- INSERTAR MEDICOS (USERNAME: doctor1, PASSWORD: 12345678)
-- =============================================

INSERT INTO usuarios (nombre, email, password, rol) VALUES
('Dr. Juan Pérez', 'juan.perez@clinica.com', '$2y$10$YIjlrBWeffK8n3vq8WsCQO7TcHpZdZNqX/5Dq5YvDvYFxL.VpD02m', 'medico'),
('Dra. María García', 'maria.garcia@clinica.com', '$2y$10$YIjlrBWeffK8n3vq8WsCQO7TcHpZdZNqX/5Dq5YvDvYFxL.VpD02m', 'medico'),
('Dr. Carlos López', 'carlos.lopez@clinica.com', '$2y$10$YIjlrBWeffK8n3vq8WsCQO7TcHpZdZNqX/5Dq5YvDvYFxL.VpD02m', 'medico'),
('Dra. Ana Martínez', 'ana.martinez@clinica.com', '$2y$10$YIjlrBWeffK8n3vq8WsCQO7TcHpZdZNqX/5Dq5YvDvYFxL.VpD02m', 'medico'),
('Dr. Roberto Silva', 'roberto.silva@clinica.com', '$2y$10$YIjlrBWeffK8n3vq8WsCQO7TcHpZdZNqX/5Dq5YvDvYFxL.VpD02m', 'medico'),
('Dra. Sofía Rodriguez', 'sofia.rodriguez@clinica.com', '$2y$10$YIjlrBWeffK8n3vq8WsCQO7TcHpZdZNqX/5Dq5YvDvYFxL.VpD02m', 'medico'),
('Dr. Fernando Díaz', 'fernando.diaz@clinica.com', '$2y$10$YIjlrBWeffK8n3vq8WsCQO7TcHpZdZNqX/5Dq5YvDvYFxL.VpD02m', 'medico'),
('Dra. Patricia Gómez', 'patricia.gomez@clinica.com', '$2y$10$YIjlrBWeffK8n3vq8WsCQO7TcHpZdZNqX/5Dq5YvDvYFxL.VpD02m', 'medico'),
('Dr. Manuel Hernández', 'manuel.hernandez@clinica.com', '$2y$10$YIjlrBWeffK8n3vq8WsCQO7TcHpZdZNqX/5Dq5YvDvYFxL.VpD02m', 'medico'),
('Dra. Laura Torres', 'laura.torres@clinica.com', '$2y$10$YIjlrBWeffK8n3vq8WsCQO7TcHpZdZNqX/5Dq5YvDvYFxL.VpD02m', 'medico');

-- =============================================
-- INSERTAR PACIENTES (USERNAME: paciente1, PASSWORD: 12345678)
-- =============================================

INSERT INTO usuarios (nombre, email, password, rol) VALUES
('Juan Carlos Ríos', 'juan.rios@email.com', '$2y$10$YIjlrBWeffK8n3vq8WsCQO7TcHpZdZNqX/5Dq5YvDvYFxL.VpD02m', 'paciente'),
('María López Sánchez', 'maria.lopez@email.com', '$2y$10$YIjlrBWeffK8n3vq8WsCQO7TcHpZdZNqX/5Dq5YvDvYFxL.VpD02m', 'paciente'),
('Carlos Eduardo Ruiz', 'carlos.ruiz@email.com', '$2y$10$YIjlrBWeffK8n3vq8WsCQO7TcHpZdZNqX/5Dq5YvDvYFxL.VpD02m', 'paciente'),
('Ana María Flores', 'ana.flores@email.com', '$2y$10$YIjlrBWeffK8n3vq8WsCQO7TcHpZdZNqX/5Dq5YvDvYFxL.VpD02m', 'paciente'),
('Roberto Morales', 'roberto.morales@email.com', '$2y$10$YIjlrBWeffK8n3vq8WsCQO7TcHpZdZNqX/5Dq5YvDvYFxL.VpD02m', 'paciente');

-- =============================================
-- INSERTAR SINTOMAS BASICOS (LIMPIOS SIN CARACTERES ESPECIALES)
-- =============================================

-- Medicina General
INSERT INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('fiebre', 1), ('resfriado', 1), ('gripe', 1), ('dolor cabeza', 1), ('mareo', 1),
('cansancio', 1), ('malestar', 1), ('nausea', 1), ('vomito', 1), ('diarrea', 1);

-- Pediatria
INSERT INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('bebe enfermo', 2), ('nino fiebre', 2), ('colicos', 2), ('llanto bebe', 2),
('diarrea nino', 2), ('rash infantil', 2), ('vomito nino', 2), ('problemas dormir', 2);

-- Cardiologia
INSERT INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('dolor pecho', 3), ('corazon acelerado', 3), ('palpitaciones', 3), ('presion alta', 3),
('mareo cardiaco', 3), ('falta aire', 3), ('latidos irregulares', 3);

-- Neurologia
INSERT INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('migraña', 3), ('dolor cabeza intenso', 4), ('vertigo', 4), ('convulsiones', 4),
('temblores', 4), ('adormecimiento', 4), ('hormigueo', 4);

-- Oftalmologia
INSERT INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('ojo rojo', 5), ('dolor ojo', 5), ('vision borrosa', 5), ('ojo seco', 5),
('lagana', 5), ('picazon ojo', 5), ('lagrimeo', 5);

-- Otorrinolaringologia
INSERT INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('dolor garganta', 6), ('garganta inflamada', 6), ('ronquera', 6), ('congestion nasal', 6),
('sinusitis', 6), ('otitis', 6), ('dolor oido', 6);

-- Odontologia
INSERT INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('dolor muela', 7), ('dolor diente', 7), ('encia inflamada', 7), ('sangrado encia', 7),
('absceso dental', 7), ('caries', 7), ('mal aliento', 7);

-- Dermatologia
INSERT INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('ronchas', 8), ('sarpullido', 8), ('picazon piel', 8), ('eczema', 8),
('psoriasis', 8), ('acne', 8), ('hongo', 8), ('mancha roja', 8);

-- Gastroenterologia
INSERT INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('dolor estomago', 9), ('dolor abdominal', 9), ('acidez', 9), ('reflujo', 9),
('indigestion', 9), ('ulcera', 9), ('gastritis', 9), ('diarrea severa', 9);

-- Neumologia
INSERT INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('tos', 10), ('tos seca', 10), ('tos con flemas', 10), ('falta aire', 10),
('respiracion dificil', 10), ('asma', 10), ('bronquitis', 10), ('neumonía', 10);

-- Urologia
INSERT INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('dolor orina', 11), ('infeccion urinaria', 11), ('dificultad orinar', 11),
('sangre orina', 11), ('dolor riñones', 11), ('calculo renal', 11);

-- Ginecologia
INSERT INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('dolor menstrual', 12), ('regla irregular', 12), ('sangrado abundante', 12),
('dolor pelvico', 12), ('quiste ovarico', 12), ('infeccion vaginal', 12);

-- Traumatologia
INSERT INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('dolor rodilla', 13), ('esguince', 13), ('torcedura', 13), ('fractura', 13),
('golpe', 13), ('caida', 13), ('morado', 13), ('dolor hombro', 13);

-- Psiquiatria
INSERT INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('depresion', 14), ('ansiedad', 14), ('stress', 14), ('insomnio', 14),
('tristeza', 14), ('falta motivacion', 14), ('pánico', 14);

-- Endocrinologia
INSERT INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('diabetes', 15), ('glucosa alta', 15), ('sed excesiva', 15), ('micción frecuente', 15),
('hipotiroidismo', 15), ('tiroides inflamada', 15), ('aumento peso', 15);

-- Reumatologia
INSERT INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('dolor articulaciones', 16), ('artritis', 16), ('rigidez matutina', 16),
('inflamacion articular', 16), ('dolor manos', 16), ('hinchazón', 16);

-- =============================================
-- MOSTRAR RESUMEN
-- =============================================

SELECT 'BASE DE DATOS REGENERADA EXITOSAMENTE' as estado;
SELECT COUNT(*) as total_especialidades FROM especialidades;
SELECT COUNT(*) as total_usuarios FROM usuarios;
SELECT COUNT(*) as total_sintomas FROM sintomas_especialidad;

SELECT '---' as separador;
SELECT 'ESPECIALIDADES:' as seccion;
SELECT id, nombre FROM especialidades ORDER BY id;

SELECT '---' as separador;
SELECT 'USUARIOS:' as seccion;
SELECT id, nombre, email, rol FROM usuarios ORDER BY id;
