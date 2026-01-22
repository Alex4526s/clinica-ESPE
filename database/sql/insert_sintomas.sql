-- Script para poblar la tabla sintomas_especialidad con síntomas completos
USE clinica_espe_v2;

-- Limpiar tabla existente
TRUNCATE TABLE sintomas_especialidad;

-- MEDICINA GENERAL (ID=1)
INSERT INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('fiebre', 1), ('escalofríos', 1), ('dolor de cabeza', 1), ('mareos', 1),
('náuseas', 1), ('dolor de espalda', 1), ('dolor espalda baja', 1), 
('dolor de riñones', 1), ('cansancio', 1), ('fatiga', 1), ('debilidad', 1),
('malestar general', 1), ('gripe', 1), ('resfriado', 1), ('infección', 1),
('temperatura alta', 1), ('me siento mal', 1), ('vértigo', 1);

-- CARDIOLOGÍA (ID=3)
INSERT INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('dolor de pecho', 3), ('opresión en el pecho', 3), ('palpitaciones', 3),
('corazón acelerado', 3), ('presión alta', 3), ('hipertensión', 3),
('arritmia', 3), ('taquicardia', 3), ('infarto', 3), ('soplo cardíaco', 3),
('dolor pecho', 3), ('angina', 3), ('trombosis', 3);

-- DERMATOLOGÍA (ID=5)
INSERT INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('acné', 5), ('erupciones', 5), ('picazón', 5), ('manchas en la piel', 5),
('verrugas', 5), ('herpes', 5), ('psoriasis', 5), ('eczema', 5),
('dermatitis', 5), ('urticaria', 5), ('ronchas', 5), ('granos', 5),
('erupción cutánea', 5), ('comezón', 5);

-- NEUROLOGÍA (ID=6)
INSERT INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('dolor de cabeza severo', 6), ('migraña', 6), ('convulsiones', 6),
('temblores', 6), ('parálisis', 6), ('hormigueo', 6), ('entumecimiento', 6),
('pérdida de memoria', 6), ('confusión mental', 6), ('epilepsia', 6),
('derrame cerebral', 6), ('tics', 6);

-- ORTOPEDIA (ID=8)
INSERT INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('fractura', 8), ('lumbalgia', 8), ('dolor de cuello', 8),
('dolor de rodilla', 8), ('dolor de hombro', 8), ('dolor de muñeca', 8),
('esguince', 8), ('luxación', 8), ('artritis', 8), ('artrosis', 8),
('tendinitis', 8), ('dolor articular', 8), ('osteoporosis', 8);

-- OFTALMOLOGÍA (ID=27)
INSERT INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('visión borrosa', 27), ('miopía', 27), ('dolor de ojos', 27),
('irritación ocular', 27), ('conjuntivitis', 27), ('ojo rojo', 27),
('cataratas', 27), ('glaucoma', 27), ('ojo seco', 27), ('veo borroso', 27),
('visión doble', 27), ('fotofobia', 27);

-- GASTROENTEROLOGÍA (ID=31)
INSERT INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('dolor de estómago', 31), ('dolor abdominal', 31), ('gastritis', 31),
('úlcera', 31), ('acidez', 31), ('reflujo', 31), ('vómitos', 31),
('diarrea', 31), ('estreñimiento', 31), ('colitis', 31), ('hemorroides', 31),
('gases', 31), ('indigestión', 31), ('hinchazón abdominal', 31);

-- ENDOCRINOLOGÍA (ID=32)
INSERT INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('diabetes', 32), ('glucosa alta', 32), ('sed excesiva', 32),
('orinar frecuente', 32), ('tiroides', 32), ('hipotiroidismo', 32),
('hipertiroidismo', 32), ('obesidad', 32), ('azúcar alta', 32),
('pérdida de peso', 32), ('aumento de peso', 32);

-- NEUMOLOGÍA (ID=33)
INSERT INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('tos', 33), ('tos seca', 33), ('dificultad para respirar', 33),
('falta de aire', 33), ('asma', 33), ('bronquitis', 33), ('neumonía', 33),
('dolor al respirar', 33), ('silbido al respirar', 33), ('flemas', 33),
('congestión nasal', 33), ('dolor de garganta', 33);

-- Verificar resultados
SELECT e.nombre as especialidad, COUNT(s.id) as total_sintomas
FROM especialidades e
LEFT JOIN sintomas_especialidad s ON e.id = s.especialidad_id
GROUP BY e.id, e.nombre
ORDER BY total_sintomas DESC, e.nombre;
