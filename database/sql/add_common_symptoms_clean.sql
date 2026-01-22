-- Agregar síntomas comunes que faltan (sin duplicados)
USE clinica_espe_v2;

-- DERMATOLOGIA (ID=40) - Síntomas comunes
INSERT IGNORE INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('ronchas', 40), ('roncha', 40), ('sarpullido', 40), ('sarpullidos', 40),
('picazon', 40), ('picazón', 40), ('comezón', 40), ('inflamacion piel', 40),
('inflamación piel', 40), ('piel irritada', 40), ('irritacion', 40), ('irritación', 40),
('mancha roja', 40), ('manchas rojas', 40), ('descamacion', 40), ('descamación', 40),
('hongo', 40), ('hongos', 40), ('alergia piel', 40), ('granos', 40), ('grano', 40);

-- ALERGOLOGIA (ID=64) - Síntomas de alergia  
INSERT IGNORE INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('alergia', 64), ('alergico', 64), ('alérgico', 64), ('reaccion alergica', 64), 
('reacción alérgica', 64), ('ronchas alergia', 64), ('picazon alergia', 64);

-- CARDIOLOGIA (ID=35) - Síntomas comunes
INSERT IGNORE INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('dolor pecho', 35), ('pecho', 35), ('corazon', 35), ('corazón', 35),
('aceleracion corazon', 35), ('aceleración corazón', 35), ('taquicardia', 35),
('presion pecho', 35), ('presión pecho', 35), ('opresion', 35), ('opresión', 35),
('palpitaciones', 35), ('mareo', 35), ('desmayo', 35);

-- NEUMOLOGIA (ID=46) - Síntomas comunes
INSERT IGNORE INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('tos', 46), ('tos seca', 46), ('tos con flemas', 46), ('flemas', 46),
('falta aire', 46), ('falta de aire', 46), ('disnea', 46),
('respiracion dificil', 46), ('respiración difícil', 46), ('jadeo', 46),
('pecho inflamado', 46), ('silbido pecho', 46), ('silbidos', 46);

-- GASTROENTEROLOGIA (ID=47) - Síntomas comunes
INSERT IGNORE INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('dolor estomago', 47), ('dolor de estómago', 47), ('estomago', 47),
('diarrea', 47), ('nausea', 47), ('náusea', 47), ('vomito', 47), ('vómito', 47),
('dolor abdominal', 47), ('abdomen', 47), ('acidez', 47), ('reflujo', 47),
('indigestion', 47), ('estreñimiento', 47);

-- MEDICINA GENERAL (ID=1) - Síntomas básicos
INSERT IGNORE INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('fiebre', 1), ('temperatura alta', 1), ('calor', 1), ('sudor', 1),
('escalofrio', 1), ('escalofríos', 1), ('malestar', 1), ('cansancio', 1),
('fatiga', 1), ('debilidad', 1), ('mareo general', 1), ('dolor cabeza', 1),
('resfriado', 1), ('gripe', 1), ('catarro', 1), ('congestion nasal', 1),
('moco', 1), ('mocos', 1);

-- OFTALMOLOGIA (ID=41) - Síntomas comunes
INSERT IGNORE INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('dolor ojo', 41), ('ojo rojo', 41), ('ojos rojos', 41), ('lagaña', 41),
('lagañas', 41), ('ojo seco', 41), ('vision borrosa', 41), ('visión borrosa', 41),
('irritacion ocular', 41), ('irritación ocular', 41), ('parpadeo', 41);

-- ODONTOLOGIA (ID=36) - Síntomas comunes
INSERT IGNORE INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('dolor muela', 36), ('dolor de muelas', 36), ('muela', 36), ('diente', 36),
('dolor diente', 36), ('encia inflamada', 36), ('encía inflamada', 36),
('sangrado encias', 36), ('sangrado encías', 36), ('absceso dental', 36),
('absceso', 36), ('caries', 36), ('granos', 36);

-- TRAUMATOLOGIA (ID=45) - Síntomas comunes
INSERT IGNORE INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('dolor rodilla', 45), ('rodilla', 45), ('rodilla inflamada', 45),
('dolor muñeca', 45), ('muñeca', 45), ('esguince', 45), ('torcedura', 45),
('fractura', 45), ('golpe', 45), ('caida', 45), ('hombro dolor', 45),
('codo', 45), ('tobillo', 45), ('inflamacion', 45), ('hinchazón', 45);

-- Mostrar resumen
SELECT e.id, e.nombre, COUNT(s.id) AS total_sintomas
FROM especialidades e
LEFT JOIN sintomas_especialidad s ON e.id = s.especialidad_id
GROUP BY e.id, e.nombre
ORDER BY total_sintomas DESC
LIMIT 20;
