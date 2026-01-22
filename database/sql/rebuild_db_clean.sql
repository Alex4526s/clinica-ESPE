USE clinica_espe_v2;

-- LIMPIAR TODO
TRUNCATE TABLE sintomas_especialidad;

-- MEDICINA GENERAL (1)
INSERT INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('fiebre', 1), ('resfriado', 1), ('gripe', 1), ('dolor de cabeza', 1), ('cansancio', 1),
('fatiga', 1), ('debilidad', 1), ('mareos', 1), ('nauseas', 1), ('vomito', 1),
('diarrea', 1), ('estreñimiento', 1), ('malestar general', 1), ('escalofrios', 1),
('sudoracion', 1), ('dolor muscular', 1), ('tension muscular', 1), ('inflamacion', 1),
('enrojecimiento', 1), ('comezón', 1), ('irritacion', 1), ('infeccion leve', 1),
('mal aliento', 1), ('aftas', 1), ('herpes', 1), ('verrugas', 1), ('lunares', 1),
('manchas en piel', 1), ('cambios de peso', 1), ('aumento de apetito', 1),
('perdida de apetito', 1), ('sequedad en piel', 1), ('ojos cansados', 1);

-- PEDIATRIA (2)
INSERT INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('fiebre en nino', 2), ('bebe llora mucho', 2), ('nino irritable', 2), ('colicos', 2),
('vomito en nino', 2), ('diarrea en nino', 2), ('rash infantil', 2), ('eczema infantil', 2),
('problemas sueno nino', 2), ('nino no come', 2), ('ganancia peso lenta', 2),
('desarrollo lento', 2), ('vacunas', 2), ('bronquitis infantil', 2), ('otitis infantil', 2);

-- NEUROLOGIA (3)
INSERT INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('migraña', 3), ('dolor cabeza intenso', 3), ('vertigo', 3), ('mareo severo', 3),
('convulsiones', 3), ('epilepsia', 3), ('temblores', 3), ('paralisis', 3),
('adormecimiento', 3), ('hormigueo', 3), ('falta de concentracion', 3), ('olvidos', 3),
('confusion mental', 3), ('desorientacion', 3), ('vision borrosa severa', 3),
('zumbido en oidos', 3), ('problemas equilibrio', 3), ('caidas frecuentes', 3);

-- MEDICINA INTERNA (4)
INSERT INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('fiebre prolongada', 4), ('ganglios inflamados', 4), ('perdida de peso', 4),
('fatiga cronica', 4), ('sudores nocturnos', 4), ('malestar general', 4),
('debilidad progresiva', 4), ('infecciones recurrentes', 4), ('dolor generalizado', 4);

-- CARDIOLOGIA (35)
INSERT INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('dolor pecho', 35), ('dolor en el pecho', 35), ('opresion pecho', 35),
('corazon acelerado', 35), ('palpitaciones', 35), ('latidos irregulares', 35),
('presion alta', 35), ('presion baja', 35), ('mareo cardiaco', 35), ('falta de aire', 35),
('dificultad respirar', 35), ('hinchazón piernas', 35), ('cansancio extremo', 35),
('dolor en brazo izquierdo', 35), ('sudor frio', 35), ('sincope', 35);

-- ODONTOLOGIA (36)
INSERT INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('dolor de muela', 36), ('dolor de diente', 36), ('encia inflamada', 36),
('sangrado encia', 36), ('absceso dental', 36), ('caries', 36), ('mal aliento dental', 36),
('diente flojo', 36), ('bruxismo', 36), ('dolor mandibula', 36), ('herpes labial', 36),
('ulceras bucales', 36), ('lengua irritada', 36), ('dificultad masticar', 36);

-- TRAUMATOLOGIA (45)
INSERT INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('dolor rodilla', 45), ('rodilla inflamada', 45), ('dolor muneca', 45),
('muneca inflamada', 45), ('esguince', 45), ('torcedura', 45), ('fractura', 45),
('golpe', 45), ('caida', 45), ('dolor hombro', 45), ('dolor codo', 45),
('dolor tobillo', 45), ('morado', 45), ('moretón', 45), ('contusion', 45),
('rigidez articular', 45), ('dificultad mover extremidad', 45), ('dolor en hueso', 45);

-- NEUMOLOGIA (46)
INSERT INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('tos', 46), ('tos seca', 46), ('tos con flemas', 46), ('tos persistente', 46),
('flemas', 46), ('esputo', 46), ('falta de aire', 46), ('falta aire severa', 46),
('dificultad respirar', 46), ('respiracion acelerada', 46), ('asma', 46),
('sibilancia', 46), ('silbido pecho', 46), ('bronquitis', 46), ('neumonía', 46),
('dolor pecho al respirar', 46), ('fiebre con tos', 46), ('tos nocturna', 46);

-- GASTROENTEROLOGIA (47)
INSERT INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('dolor estomago', 47), ('dolor abdominal', 47), ('acidez', 47), ('reflujo', 47),
('indigestion', 47), ('ulcera', 47), ('gastritis', 47), ('diarrea severa', 47),
('diarrea cronica', 47), ('estreñimiento severo', 47), ('hinchazón abdominal', 47),
('gases', 47), ('meteorismo', 47), ('vomito recurrente', 47), ('perdida peso abdominal', 47),
('sangre en heces', 47), ('heces oscuras', 47), ('dolor ano', 47);

-- REUMATOLOGIA (48)
INSERT INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('dolor articulaciones', 48), ('artritis', 48), ('rigidez matutina', 48),
('rigidez articular', 48), ('dolor manos', 48), ('inflamacion articular', 48),
('articulacion hinchada', 48), ('calor en articulacion', 48), ('derrame articular', 48),
('lupus', 48), ('fibromialgia', 48), ('dolor muscular generalizado', 48),
('fatiga reumatica', 48), ('fiebre reumatica', 48);

-- ENDOCRINOLOGIA (49)
INSERT INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('diabetes', 49), ('glucosa alta', 49), ('glucosa baja', 49), ('sed excesiva', 49),
('miccion frecuente', 49), ('micción excesiva', 49), ('cansancio diabetes', 49),
('vision borrosa diabetes', 49), ('hormigueo piernas', 49), ('hipotiroidismo', 49),
('hipertiroidismo', 49), ('tiroides inflamada', 49), ('bocio', 49), ('nerviosismo', 49),
('cambios temperatura', 49), ('perdida peso inexplicable', 49), ('aumento de peso', 49);

-- ONCOLOGIA (50)
INSERT INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('bulto', 50), ('nodulo', 50), ('masa anormal', 50), ('hinchazon indolora', 50),
('perdida de peso progresiva', 50), ('fatiga extrema', 50), ('anemia', 50),
('sangrado anormal', 50), ('sangre en orina', 50), ('sangre en heces', 50),
('sangre en saliva', 50), ('cambio en lunar', 50), ('lunar maligno', 50),
('enrojecimiento piel', 50), ('dolor cronico', 50), ('fiebre sin causa', 50);

-- PSIQUIATRIA (51)
INSERT INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('depresion', 51), ('tristeza', 51), ('depresion severa', 51), ('falta de motivacion', 51),
('ansiedad', 51), ('ansiedad severa', 51), ('pánico', 51), ('ataque de pánico', 51),
('insomnio', 51), ('insomnio severo', 51), ('stress', 51), ('stress severo', 51),
('falta concentracion mental', 51), ('confusion', 51), ('cambios comportamiento', 51),
('alucinaciones', 51), ('delusiones', 51), ('ideas suicidas', 51), ('obsesiones', 51);

-- UROLOGIA (52)
INSERT INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('dolor orina', 52), ('infeccion urinaria', 52), ('dificultad orinar', 52),
('micción dolorosa', 52), ('sangre orina', 52), ('hematuria', 52), ('dolor riñones', 52),
('calculo renal', 52), ('cistitis', 52), ('prostatitis', 52), ('disfuncion erectil', 52),
('impotencia', 52), ('eyaculacion precoz', 52), ('azoospermia', 52),
('infertilidad masculina', 52), ('esterilidad masculina', 52);

-- INFECTOLOGIA (53)
INSERT INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('infeccion viral', 53), ('infeccion bacteriana', 53), ('fiebre persistente', 53),
('fiebre intermitente', 53), ('sudores nocturnos crónicos', 53), ('tuberculosis', 53),
('tos tuberculosis', 53), ('hiv', 53), ('vih', 53), ('sida', 53), ('hepatitis', 53),
('malaria', 53), ('dengue', 53), ('zika', 53), ('chikungunya', 53),
('infeccion por hongos', 53), ('candidiasis', 53), ('sepsis', 53);

-- RADIOLOGIA (54)
INSERT INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('necesita radiografia', 54), ('necesita ecografia', 54), ('necesita tomografia', 54),
('necesita resonancia', 54), ('imagen medica', 54), ('diagnostico por imagen', 54);

-- OFTALMOLOGIA (41)
INSERT INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('ojo rojo', 41), ('ojos rojos', 41), ('dolor ojo', 41), ('dolor ocular', 41),
('lagana', 41), ('lagrimas excesivas', 41), ('lagrimeo', 41), ('ojo seco', 41),
('sequedad ocular', 41), ('vision borrosa', 41), ('vision nublada', 41),
('perdida de vision', 41), ('parpadeo excesivo', 41), ('picazon ojo', 41),
('irritacion ocular', 41), ('orzuelo', 41), ('chalazion', 41), ('cataratas', 41),
('glaucoma', 41), ('miopia', 41), ('hipermetropia', 41), ('astigmatismo', 41);

-- OTORRINOLARINGOLOGIA (42)
INSERT INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('dolor garganta', 42), ('garganta inflamada', 42), ('garganta irritada', 42),
('ronquera', 42), ('voz ronca', 42), ('perdida de voz', 42), ('afonia', 42),
('congestion nasal', 42), ('nariz congestionada', 42), ('sinusitis', 42),
('senos paranasales inflamados', 42), ('otitis', 42), ('dolor oido', 42),
('zumbido oidos', 42), ('tinnitus', 42), ('vertigo otico', 42), ('hipoacusia', 42),
('sordera', 42), ('perdida auditiva', 42), ('polipos nasales', 42), ('desviacion tabique', 42);

-- GINECOLOGIA (43)
INSERT INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('dolor menstrual', 43), ('dismenorrea', 43), ('regla irregular', 43),
('sangrado abundante', 43), ('sangrado irregular', 43), ('amenorrea', 43),
('falta de menstruacion', 43), ('dolor pelvico', 43), ('quiste ovarico', 43),
('mioma uterino', 43), ('endometriosis', 43), ('inflamacion pelvis', 43),
('infeccion vaginal', 43), ('flujo anormal', 43), ('comezón vaginal', 43),
('dolor durante relaciones', 43), ('sangrado post menopausia', 43);

-- DERMATOLOGIA (40)
INSERT INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('ronchas', 40), ('roncha', 40), ('sarpullido', 40), ('erupcion cutanea', 40),
('picazon piel', 40), ('comezón piel', 40), ('inflamacion piel', 40),
('enrojecimiento piel', 40), ('mancha roja', 40), ('manchas rojas', 40),
('eczema', 40), ('psoriasis', 40), ('dermatitis', 40), ('dermatitis atopica', 40),
('hongo', 40), ('infeccion hongos', 40), ('candida', 40), ('tiña', 40),
('alopecia', 40), ('caida de cabello', 40), ('calvicie', 40), ('caspa', 40),
('seborrea', 40), ('acne', 40), ('granos', 40), ('espinilla', 40),
('pustula', 40), ('ampolla', 40), ('herpes', 40), ('varicela', 40);

-- ALERGOLOGIA (64)
INSERT INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('alergia', 64), ('alergico', 64), ('reaccion alergica', 64), ('alergia alimentaria', 64),
('alergia alimenticia', 64), ('alergia medicamento', 64), ('alergia droga', 64),
('ronchas alergia', 64), ('sarpullido alergia', 64), ('picazon alergia', 64),
('angioedema', 64), ('hinchazón facial', 64), ('hinchazón labios', 64),
('hinchazón lengua', 64), ('anafilaxis', 64), ('shock anafilactico', 64),
('asma alergica', 64), ('rinitis alergica', 64), ('conjuntivitis alergica', 64),
('eczema alergico', 64), ('dermatitis alergica', 64);

-- Mostrar resumen
SELECT 'BASE DE DATOS REGENERADA LIMPIA' as estado;
SELECT e.id, e.nombre, COUNT(s.id) as total_sintomas
FROM especialidades e
LEFT JOIN sintomas_especialidad s ON e.id = s.especialidad_id
WHERE e.id IN (1,2,3,4,35,36,40,41,42,43,45,46,47,48,49,50,51,52,53,54,64)
GROUP BY e.id, e.nombre
ORDER BY total_sintomas DESC;

SELECT '---' as separador;
SELECT CONCAT(COUNT(*), ' síntomas totales') as total FROM sintomas_especialidad;
