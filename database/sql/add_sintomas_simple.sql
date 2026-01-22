USE clinica_espe_v2;

-- Limpiar duplicados y agregar síntomas por especialidad
INSERT IGNORE INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
-- MEDICINA GENERAL
('dolor generalizado', 1), ('dolor muscular', 1), ('sudoración', 1),
('escalofríos nocturnos', 1), ('estornudos', 1), ('secreción nasal', 1),
('dolor de cuerpo', 1), ('mialgia', 1), ('astenia', 1), ('adinamia', 1),
('dolor lumbar', 1), ('fiebre leve', 1), ('febrícula', 1),
-- PEDIATRÍA
('fiebre en niños', 2), ('llanto excesivo', 2), ('irritabilidad infantil', 2),
('no quiere comer', 2), ('vómito en niños', 2), ('diarrea infantil', 2),
('cólicos', 2), ('cólico del lactante', 2), ('dermatitis del pañal', 2),
('sarpullido infantil', 2), ('tos en niños', 2), ('control de niño sano', 2),
-- CARDIOLOGÍA
('dolor torácico', 3), ('sensación de ahogo', 3), ('hinchazón de piernas', 3),
('edema en tobillos', 3), ('cansancio al caminar', 3), ('síncope', 3),
('dolor en brazo izquierdo', 3), ('sudoración fría', 3),
-- DERMATOLOGÍA
('piel seca', 5), ('descamación', 5), ('irritación cutánea', 5),
('piel enrojecida', 5), ('forúnculos', 5), ('abscesos', 5),
('lunares sospechosos', 5), ('cambios en la piel', 5), ('celulitis', 5),
-- NEUROLOGÍA
('cefalea tensional', 6), ('jaqueca', 6), ('dolor neuropático', 6),
('parestesias', 6), ('debilidad muscular', 6), ('inestabilidad', 6),
('neuropatía', 6), ('ciática', 6),
-- GINECOLOGÍA
('dolor menstrual', 7), ('menstruación irregular', 7), ('sangrado abundante', 7),
('dismenorrea', 7), ('dolor pélvico', 7), ('flujo vaginal', 7),
('infección vaginal', 7), ('picazón vaginal', 7), ('quistes ováricos', 7),
('endometriosis', 7), ('síndrome premenstrual', 7), ('menopausia', 7),
('sofocos', 7), ('dolor en ovarios', 7), ('infertilidad', 7),
-- ODONTOLOGÍA
('dolor de muelas', 23), ('caries', 23), ('dolor dental', 23),
('sensibilidad dental', 23), ('sangrado de encías', 23), ('gingivitis', 23),
('mal aliento', 23), ('halitosis', 23), ('flemón', 23),
('absceso dental', 23), ('dolor al masticar', 23), ('diente roto', 23),
('bruxismo', 23), ('rechinar dientes', 23),
-- PSICOLOGÍA
('ansiedad', 24), ('estrés', 24), ('depresión', 24), ('tristeza', 24),
('angustia', 24), ('ataques de pánico', 24), ('insomnio', 24),
('pesadillas', 24), ('fobias', 24), ('baja autoestima', 24),
-- OFTALMOLOGÍA
('pérdida de visión', 27), ('manchas flotantes', 27), ('presbicia', 27),
('vista cansada', 27), ('orzuelo', 27), ('estrabismo', 27),
-- OTORRINOLARINGOLOGÍA
('dolor de oído', 28), ('otitis', 28), ('pérdida de audición', 28),
('zumbido en oídos', 28), ('acúfenos', 28), ('tinnitus', 28),
('faringitis', 28), ('amigdalitis', 28), ('anginas', 28),
('ronquera', 28), ('disfonía', 28), ('afonía', 28),
('sinusitis', 28), ('nariz tapada', 28), ('sangrado nasal', 28),
-- UROLOGÍA
('dolor al orinar', 30), ('infección urinaria', 30), ('cistitis', 30),
('sangre en la orina', 30), ('incontinencia urinaria', 30),
('problemas de próstata', 30), ('prostatitis', 30),
('dificultad para orinar', 30), ('orina frecuente', 30),
('cálculos renales', 30), ('piedras en el riñón', 30),
('cólico nefrítico', 30), ('disfunción eréctil', 30),
-- GASTROENTEROLOGÍA
('flatulencias', 31), ('eructos', 31), ('agruras', 31),
('ardor estomacal', 31), ('pirosis', 31), ('sangre en heces', 31),
('colon irritable', 31), ('hepatitis', 31), ('ictericia', 31),
-- ENDOCRINOLOGÍA
('poliuria', 32), ('polidipsia', 32), ('hormigueo en pies', 32),
('heridas que no cicatrizan', 32), ('boca seca', 32),
-- NEUMOLOGÍA
('tos persistente', 33), ('tos crónica', 33), ('expectoración', 33),
('sibilancias', 33), ('opresión torácica', 33), ('ronquidos', 33);

SELECT e.nombre, COUNT(s.id) as total_sintomas
FROM especialidades e
LEFT JOIN sintomas_especialidad s ON e.id = s.especialidad_id
GROUP BY e.id, e.nombre
ORDER BY total_sintomas DESC;
