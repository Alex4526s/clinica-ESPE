-- Regenerar base de datos LIMPIA sin caracteres corruptos
-- =====================================================

USE clinica_espe_v2;
SET NAMES utf8mb4;

-- PASO 1: Truncar tabla de síntomas
TRUNCATE TABLE sintomas_especialidad;

-- PASO 2: Agregar síntomas comunes POR ESPECIALIDAD (SIN caracteres especiales)
-- MEDICINA GENERAL (ID=1)
INSERT IGNORE INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('fiebre', 1), ('resfriado', 1), ('gripe', 1), ('dolor cabeza', 1), ('mareo', 1),
('cansancio', 1), ('fatiga', 1), ('debilidad', 1), ('malestar', 1), ('nausea', 1),
('vomito', 1), ('diarrea', 1), ('estrenimiento', 1), ('gases', 1), ('hinchazón', 1);

-- PEDIATRIA (ID=2)
INSERT IGNORE INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('bebe enfermo', 2), ('nino enfermo', 2), ('fiebre infantil', 2), ('llanto bebe', 2),
('colico', 2), ('diarrea nino', 2), ('vomito nino', 2), ('rash infantil', 2);

-- NEUROLOGIA (ID=3)
INSERT IGNORE INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('dolor cabeza severo', 3), ('migrania', 3), ('mareo', 3), ('vertigo', 3),
('convulsiones', 3), ('epilepsia', 3), ('temblores', 3), ('parlisis', 3),
('adormecimiento', 3), ('hormigueo', 3), ('falta concentracion', 3), ('olvidos', 3);

-- OFTALMOLOGIA (ID=41)
INSERT IGNORE INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('ojo rojo', 41), ('dolor ojo', 41), ('lagana', 41), ('vision borrosa', 41),
('ojo seco', 41), ('picazon ojo', 41), ('cataratas', 41), ('glaucoma', 41);

-- OTORRINOLARINGOLOGIA (ID=42)
INSERT IGNORE INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('dolor garganta', 42), ('garganta inflamada', 42), ('ronquera', 42),
('congestion nasal', 42), ('sinusitis', 42), ('otitis', 42), ('polipos nasales', 42);

-- ODONTOLOGIA (ID=36)
INSERT IGNORE INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('dolor muela', 36), ('dolor diente', 36), ('encía inflamada', 36),
('sangrado encia', 36), ('absceso dental', 36), ('caries', 36), ('halitosis', 36);

-- CARDIOLOGIA (ID=35)
INSERT IGNORE INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('dolor pecho', 35), ('corazon acelerado', 35), ('palpitaciones', 35),
('presion alta', 35), ('presion baja', 35), ('mareo cardiaco', 35), ('falta aire', 35);

-- NEUMOLOGIA (ID=46)
INSERT IGNORE INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('tos', 46), ('tos seca', 46), ('tos con flemas', 46), ('flemas', 46),
('falta aire', 46), ('respiracion dificil', 46), ('asma', 46), ('neumonía', 46),
('bronquitis', 46), ('silbido pecho', 46);

-- GASTROENTEROLOGIA (ID=47)
INSERT IGNORE INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('dolor estomago', 47), ('estomago inflamado', 47), ('dolor abdominal', 47),
('acidez', 47), ('reflujo', 47), ('indigestion', 47), ('ulcera', 47), ('gastritis', 47);

-- DERMATOLOGIA (ID=40)
INSERT IGNORE INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('ronchas', 40), ('roncha', 40), ('sarpullido', 40), ('picazon piel', 40),
('inflamacion piel', 40), ('piel irritada', 40), ('mancha roja', 40), ('eczema', 40),
('psoriasis', 40), ('hongo', 40), ('alergia piel', 40), ('granos', 40), ('acne', 40);

-- ALERGOLOGIA (ID=64)
INSERT IGNORE INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('alergia', 64), ('alergico', 64), ('reaccion alergica', 64), ('ronchas alergia', 64),
('picazon alergia', 64), ('hinchazón facial', 64), ('anafilaxis', 64);

-- TRAUMATOLOGIA (ID=45)
INSERT IGNORE INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('dolor rodilla', 45), ('rodilla inflamada', 45), ('dolor muneca', 45),
('esguince', 45), ('torcedura', 45), ('fractura', 45), ('golpe', 45),
('caida', 45), ('dolor hombro', 45), ('dolor codo', 45), ('tobillo', 45),
('morado', 45), ('moretón', 45), ('contusión', 45);

-- UROLOGIA (ID=52)
INSERT IGNORE INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('dolor orina', 52), ('infeccion urinaria', 52), ('dificultad orinar', 52),
('sangre orina', 52), ('dolor riñones', 52), ('calculo renal', 52);

-- GINECOLOGIA (ID=43)
INSERT IGNORE INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('dolor menstrual', 43), ('regla irregular', 43), ('flujo abundante', 43),
('dolor pelvico', 43), ('quiste ovarico', 43), ('infeccion vaginal', 43);

-- ENDOCRINOLOGIA (ID=49)
INSERT IGNORE INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('diabetes', 49), ('glucosa alta', 49), ('sed excesiva', 49), ('miccion frecuente', 49),
('hipotiroidismo', 49), ('hipertiroidismo', 49), ('tiroides inflamada', 49);

-- PSIQUIATRIA (ID=51)
INSERT IGNORE INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('depresion', 51), ('ansiedad', 51), ('stress', 51), ('insomnio', 51),
('tristeza', 51), ('falta motivacion', 51), ('problemas comportamiento', 51);

-- REUMATOLOGIA (ID=48)
INSERT IGNORE INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('dolor articulaciones', 48), ('artritis', 48), ('rigidez matutina', 48),
('dolor manos', 48), ('inflamacion articular', 48), ('articulacion hinchada', 48);

-- MEDICINA INTERNA (ID=4)
INSERT IGNORE INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('fiebre prolongada', 4), ('ganglios inflamados', 4), ('perdida peso', 4),
('fatiga cronica', 4), ('sudores nocturnos', 4), ('malestar general', 4);

-- VERIFICAR CANTIDAD DE SÍNTOMAS
SELECT 'RESUMEN DE SÍNTOMAS AGREGADOS:' as estado;
SELECT e.id, e.nombre, COUNT(s.id) as total
FROM especialidades e
LEFT JOIN sintomas_especialidad s ON e.id = s.especialidad_id
GROUP BY e.id, e.nombre
ORDER BY total DESC;

SELECT 'MUESTRA DE SÍNTOMAS LIMPIOS:' as estado;
SELECT palabra_clave, especialidad_id 
FROM sintomas_especialidad 
ORDER BY especialidad_id 
LIMIT 50;
