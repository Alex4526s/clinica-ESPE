-- Agregar más síntomas a todas las especialidades
USE clinica_espe_v2;

-- MEDICINA GENERAL (ID=1) - Agregar más síntomas
INSERT INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('dolor generalizado', 1), ('malestar', 1), ('dolor muscular', 1),
('sudoración', 1), ('escalofríos nocturnos', 1), ('dolor de garganta leve', 1),
('congestión', 1), ('estornudos', 1), ('secreción nasal', 1),
('tos leve', 1), ('dolor de cuerpo', 1), ('mialgia', 1),
('astenia', 1), ('adinamia', 1), ('dolor lumbar', 1),
('dolor renal', 1), ('fiebre leve', 1), ('febrícula', 1);

-- PEDIATRÍA (ID=2) - Agregar síntomas
INSERT INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('fiebre en niños', 2), ('llanto excesivo', 2), ('irritabilidad infantil', 2),
('no quiere comer', 2), ('vómito en niños', 2), ('diarrea infantil', 2),
('cólicos', 2), ('cólico del lactante', 2), ('dermatitis del pañal', 2),
('sarpullido infantil', 2), ('tos en niños', 2), ('resfriado infantil', 2),
('dolor de oído infantil', 2), ('conjuntivitis infantil', 2),
('vacunación', 2), ('control de niño sano', 2), ('desarrollo infantil', 2),
('problemas de alimentación', 2), ('estreñimiento infantil', 2);

-- CARDIOLOGÍA (ID=3) - Más síntomas
INSERT INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('dolor torácico', 3), ('sensación de ahogo', 3), ('palpitaciones nocturnas', 3),
('hinchazón de piernas', 3), ('edema en tobillos', 3), ('cansancio al caminar', 3),
('disnea de esfuerzo', 3), ('mareos cardiovasculares', 3),
('síncope', 3), ('desmayo cardíaco', 3), ('dolor en brazo izquierdo', 3),
('sudoración fría', 3), ('presión arterial irregular', 3);

-- MEDICINA INTERNA (ID=4) - Agregar síntomas
INSERT INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('fatiga crónica', 4), ('pérdida de apetito', 4), ('pérdida de peso inexplicable', 4),
('fiebre prolongada', 4), ('sudoración nocturna', 4), ('anemia', 4),
('debilidad extrema', 4), ('dolor articular múltiple', 4),
('inflamación generalizada', 4), ('malestar crónico', 4);

-- DERMATOLOGÍA (ID=5) - Más síntomas
INSERT INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('piel seca', 5), ('descamación', 5), ('eccema atópico', 5),
('irritación cutánea', 5), ('piel enrojecida', 5), ('infección de piel', 5),
('forúnculos', 5), ('abscesos', 5), ('lunares sospechosos', 5),
('cambios en la piel', 5), ('prurito intenso', 5), ('ronchas alérgicas', 5),
('quemaduras solares', 5), ('melanoma', 5), ('celulitis', 5);

-- NEUROLOGÍA (ID=6) - Más síntomas
INSERT INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('cefalea tensional', 6), ('jaqueca', 6), ('dolor neuropático', 6),
('parestesias', 6), ('debilidad muscular', 6), ('trastornos del movimiento', 6),
('vértigo', 6), ('inestabilidad', 6), ('alteraciones del equilibrio', 6),
('problemas de coordinación', 6), ('neuropatía', 6), ('ciática', 6);

-- GINECOLOGÍA (ID=7) - Agregar síntomas
INSERT INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('dolor menstrual', 7), ('menstruación irregular', 7), ('sangrado abundante', 7),
('amenorrea', 7), ('dismenorrea', 7), ('dolor pélvico', 7),
('flujo vaginal', 7), ('infección vaginal', 7), ('picazón vaginal', 7),
('dolor durante relaciones', 7), ('quistes ováricos', 7), ('endometriosis', 7),
('síndrome premenstrual', 7), ('menopausia', 7), ('sofocos', 7),
('sangrado anormal', 7), ('dolor en ovarios', 7), ('infertilidad', 7);

-- ORTOPEDIA (ID=8) - Más síntomas
INSERT INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('dolor en la cadera', 8), ('dolor de tobillo', 8), ('dolor de codo', 8),
('dolor de muñeca', 8), ('dolor en las articulaciones', 8),
('rigidez articular', 8), ('inflamación articular', 8), ('chasquidos articulares', 8),
('limitación de movimiento', 8), ('dolor al caminar', 8),
('claudicación', 8), ('deformidad ósea', 8), ('escoliosis', 8),
('hernia discal', 8), ('lumbago', 8), ('ciática ortopédica', 8);

-- ODONTOLOGÍA (ID=23) - Agregar síntomas
INSERT INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('dolor de muelas', 23), ('caries', 23), ('dolor dental', 23),
('sensibilidad dental', 23), ('sangrado de encías', 23), ('gingivitis', 23),
('mal aliento', 23), ('halitosis', 23), ('inflamación de encías', 23),
('flemón', 23), ('absceso dental', 23), ('dolor al masticar', 23),
('diente roto', 23), ('pérdida de diente', 23), ('ortodoncia', 23),
('bruxismo', 23), ('rechinar dientes', 23);

-- PSICOLOGÍA CLÍNICA (ID=24) - Agregar síntomas
INSERT INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('ansiedad', 24), ('estrés', 24), ('depresión', 24), ('tristeza', 24),
('angustia', 24), ('ataques de pánico', 24), ('insomnio', 24),
('pesadillas', 24), ('fobias', 24), ('miedo excesivo', 24),
('problemas de pareja', 24), ('duelo', 24), ('baja autoestima', 24),
('irritabilidad', 24), ('cambios de humor', 24), ('problemas familiares', 24);

-- PSIQUIATRÍA (ID=25) - Agregar síntomas
INSERT INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('depresión mayor', 25), ('trastorno bipolar', 25), ('alucinaciones', 25),
('delirios', 25), ('esquizofrenia', 25), ('trastorno obsesivo', 25),
('ansiedad generalizada', 25), ('trastorno de pánico', 25),
('trastorno del sueño', 25), ('ideas suicidas', 25), ('psicosis', 25),
('paranoia', 25), ('trastorno de personalidad', 25);

-- NUTRICIÓN Y DIETÉTICA (ID=26) - Agregar síntomas
INSERT INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('sobrepeso', 26), ('obesidad mórbida', 26), ('desnutrición', 26),
('bajo peso', 26), ('anorexia', 26), ('bulimia', 26),
('trastorno alimentario', 26), ('colesterol alto', 26), ('triglicéridos altos', 26),
('resistencia a la insulina', 26), ('prediabetes', 26),
('necesito bajar de peso', 26), ('quiero adelgazar', 26), ('dieta', 26);

-- OFTALMOLOGÍA (ID=27) - Más síntomas
INSERT INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('pérdida de visión', 27), ('visión nocturna', 27), ('deslumbramiento', 27),
('halos de luz', 27), ('manchas flotantes', 27), ('retinopatía', 27),
('desprendimiento de retina', 27), ('presbicia', 27), ('vista cansada', 27),
('lagañas', 27), ('secreción ocular', 27), ('blefaritis', 27),
('orzuelo', 27), ('chalazión', 27), ('estrabismo', 27);

-- OTORRINOLARINGOLOGÍA (ID=28) - Agregar síntomas
INSERT INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('dolor de oído', 28), ('otitis', 28), ('pérdida de audición', 28),
('sordera', 28), ('zumbido en oídos', 28), ('acúfenos', 28), ('tinnitus', 28),
('vértigo otológico', 28), ('mareo por oído', 28), ('supuración del oído', 28),
('dolor de garganta', 28), ('faringitis', 28), ('amigdalitis', 28), ('anginas', 28),
('ronquera', 28), ('disfonía', 28), ('afonía', 28), ('pérdida de voz', 28),
('sinusitis', 28), ('congestión nasal', 28), ('nariz tapada', 28),
('epistaxis', 28), ('sangrado nasal', 28), ('rinitis', 28), ('pólipos nasales', 28);

-- TRAUMATOLOGÍA (ID=29) - Agregar síntomas
INSERT INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('trauma', 29), ('golpe', 29), ('contusión', 29), ('hematoma', 29),
('fractura abierta', 29), ('fractura cerrada', 29), ('lesión deportiva', 29),
('esguince de tobillo', 29), ('esguince de rodilla', 29), ('luxación de hombro', 29),
('trauma craneal', 29), ('politraumatismo', 29), ('herida', 29),
('corte profundo', 29), ('accidente', 29), ('caída', 29);

-- UROLOGÍA (ID=30) - Agregar síntomas
INSERT INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('dolor al orinar', 30), ('infección urinaria', 30), ('cistitis', 30),
('sangre en la orina', 30), ('hematuria', 30), ('incontinencia urinaria', 30),
('problemas de próstata', 30), ('prostatitis', 30), ('hiperplasia prostática', 30),
('dificultad para orinar', 30), ('orina frecuente', 30), ('urgencia urinaria', 30),
('cálculos renales', 30), ('piedras en el riñón', 30), ('dolor renal intenso', 30),
('cólico nefrítico', 30), ('problemas de erección', 30), ('disfunción eréctil', 30);

-- GASTROENTEROLOGÍA (ID=31) - Más síntomas
INSERT INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('dolor abdominal superior', 31), ('dolor abdominal inferior', 31),
('distensión abdominal', 31), ('flatulencias', 31), ('eructos', 31),
('agruras', 31), ('ardor estomacal', 31), ('pirosis', 31),
('sangre en heces', 31), ('heces negras', 31), ('melena', 31),
('enfermedad inflamatoria intestinal', 31), ('síndrome de intestino irritable', 31),
('colon irritable', 31), ('hepatitis', 31), ('cirrosis', 31), ('ictericia', 31);

-- ENDOCRINOLOGÍA (ID=32) - Más síntomas
INSERT INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('poliuria', 32), ('polidipsia', 32), ('polifagia', 32),
('hormigueo en pies', 32), ('visión borrosa diabetes', 32),
('heridas que no cicatrizan', 32), ('boca seca', 32), ('sequedad bucal', 32),
('crecimiento anormal', 32), ('alteraciones hormonales', 32),
('descontrol metabólico', 32), ('resistencia insulina', 32);

-- NEUMOLOGÍA (ID=33) - Más síntomas
INSERT INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('tos persistente', 33), ('tos crónica', 33), ('expectoración', 33),
('esputo con sangre', 33), ('hemoptisis', 33), ('sibilancias', 33),
('respiración sibilante', 33), ('opresión torácica', 33),
('dolor torácico al respirar', 33), ('dificultad respiratoria', 33),
('insuficiencia respiratoria', 33), ('apnea', 33), ('ronquidos', 33),
('tuberculosis', 33), ('enfermedad pulmonar', 33);

-- PEDIATRÍA NEONATAL (ID=34) - Agregar síntomas
INSERT INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('ictericia neonatal', 34), ('bebé amarillo', 34), ('problemas al nacer', 34),
('bajo peso al nacer', 34), ('prematuro', 34), ('dificultad respiratoria neonatal', 34),
('problemas de succión', 34), ('no quiere lactar', 34), ('cianosis', 34),
('bebé azul', 34), ('hipotermia neonatal', 34), ('convulsiones neonatales', 34);

-- MEDICINA FAMILIAR (ID=35) - Agregar síntomas
INSERT INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('control prenatal', 35), ('chequeo general', 35), ('prevención', 35),
('vacunas', 35), ('medicina preventiva', 35), ('atención familiar', 35),
('problemas de salud familiar', 35), ('orientación médica', 35),
('seguimiento médico', 35), ('control de enfermedades crónicas', 35);

-- FISIOTERAPIA Y REHABILITACIÓN (ID=36) - Agregar síntomas
INSERT INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('necesito rehabilitación', 36), ('recuperación post cirugía', 36),
('dolor post operatorio', 36), ('limitación funcional', 36),
('necesito terapia física', 36), ('contractura muscular', 36),
('espasmo muscular', 36), ('rigidez muscular', 36),
('pérdida de movilidad', 36), ('atrofia muscular', 36),
('recuperación de lesión', 36), ('dolor crónico', 36);

-- REUMATOLOGÍA (ID=37) - Agregar síntomas
INSERT INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('artritis reumatoide', 37), ('lupus', 37), ('fibromialgia', 37),
('dolor articular crónico', 37), ('inflamación articular crónica', 37),
('rigidez matutina', 37), ('gota', 37), ('artritis gotosa', 37),
('dolor en múltiples articulaciones', 37), ('poliartralgia', 37),
('síndrome de Sjögren', 37), ('esclerodermia', 37), ('vasculitis', 37),
('enfermedad autoinmune', 37), ('dolor reumático', 37);

-- Verificar resultados finales
SELECT 
    e.nombre as especialidad, 
    COUNT(s.id) as total_sintomas
FROM especialidades e
LEFT JOIN sintomas_especialidad s ON e.id = s.especialidad_id
GROUP BY e.id, e.nombre
ORDER BY total_sintomas DESC, e.nombre;
