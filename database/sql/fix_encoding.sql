USE clinica_espe_v2;

-- SET NAMES para asegurar UTF-8
SET NAMES utf8mb4;
SET CHARACTER_SET_CLIENT = utf8mb4;
SET CHARACTER_SET_CONNECTION = utf8mb4;
SET CHARACTER_SET_RESULTS = utf8mb4;

-- 1. LIMPIAR ESPECIALIDADES DE CARACTERES CORRUPTOS
UPDATE especialidades SET nombre = TRIM(REPLACE(REPLACE(REPLACE(REPLACE(nombre, 'Ý', 'Í'), 'á', 'á'), 'é', 'é'), 'ó', 'ó'));

-- 2. Verificar que specialidades están limpias
SELECT 'ESPECIALIDADES LIMPIAS:' as estado;
SELECT id, nombre FROM especialidades WHERE id <= 10;

-- 3. Convertir tablas a UTF-8 correctamente
ALTER TABLE especialidades CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
ALTER TABLE sintomas_especialidad CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- 4. Eliminar todos los síntomas (se van a regenerar)
DELETE FROM sintomas_especialidad;

-- Reinsertar síntomas correctamente codificados
INSERT INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
-- MEDICINA GENERAL
('fiebre', 1), ('tos', 1), ('resfriado', 1), ('gripe', 1), ('dolor de cabeza', 1),
('dolor de garganta', 1), ('congestión nasal', 1), ('estornudos', 1), ('náuseas', 1),
('vómito', 1), ('diarrea', 1), ('estreñimiento', 1), ('dolor abdominal', 1), ('acidez', 1),
('mareos', 1), ('debilidad', 1), ('fatiga', 1), ('cansancio', 1), ('escalofríos', 1),
('sudoración', 1), ('dolores musculares', 1), ('dolor de articulaciones', 1), ('inflamación', 1),
('enrojecimiento', 1), ('hinchazón', 1), ('comezón', 1), ('picazón', 1), ('irritación', 1),
('infección', 1), ('infección urinaria', 1), ('infección respiratoria', 1), ('infección de piel', 1),
('dolor de oído', 1), ('dolor de muelas', 1), ('mal aliento', 1), ('aftas', 1), ('herpes', 1),
('verrugas', 1), ('lunares', 1), ('manchas en la piel', 1), ('enrojecimiento de piel', 1),
('urticaria', 1), ('eccema', 1), ('seborrea', 1), ('caspa', 1), ('caída de cabello', 1),
('alopecia', 1), ('calvicie', 1), ('seborrea del cuero cabelludo', 1), ('mal aliento crónico', 1),
('boca seca', 1), ('lengua blanca', 1), ('lengua roja', 1), ('dificultad para tragar', 1),
('dolor al tragar', 1), ('cambios en voz', 1), ('ronquera', 1), ('pérdida de apetito', 1),
('aumento de apetito', 1), ('cambios de peso', 1), ('aumento de peso', 1), ('pérdida de peso', 1),
('obesidad', 1), ('sobrepeso', 1), ('bajo peso', 1), ('desnutrición', 1), ('cambios en la visión', 1),
('mala visión', 1), ('visión borrosa', 1), ('visión nublada', 1), ('ojos cansados', 1),
('ojos secos', 1), ('ojos llorosos', 1), ('conjuntivitis', 1), ('orzuelo', 1), ('chalazión', 1),
('cambios en audición', 1), ('pérdida auditiva', 1), ('zumbidos en oídos', 1), ('vértigo', 1),
('mareos al levantarse', 1), ('presión arterial baja', 1), ('presión arterial alta', 1),
('hipertensión', 1), ('hipotensión', 1), ('palpitaciones', 1), ('latidos irregulares', 1),
('dolor en el pecho', 1), ('opresión en el pecho', 1), ('falta de aire', 1), ('dificultad para respirar', 1),
('respiración acelerada', 1), ('respiración lenta', 1), ('bronquitis', 1), ('bronquitis aguda', 1),
('asma', 1), ('alergias', 1), ('alergia al polen', 1), ('alergia a alimentos', 1),
('anafilaxis', 1), ('shock alérgico', 1), ('hinchazón de labios', 1), ('hinchazón de lengua', 1),
('hinchazón de garganta', 1), ('problemas de la glándula tiroides', 1), ('tiroides aumentada', 1),
('bocio', 1), ('diabetes', 1), ('diabetes tipo 1', 1), ('diabetes tipo 2', 1),
('glucosa alta', 1), ('glucosa baja', 1), ('cetoacidosis diabética', 1), ('coma diabético', 1);

-- PEDIATRÍA
INSERT INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('bebé enfermo', 2), ('niño enfermo', 2), ('fiebre infantil', 2),
('problemas respiratorios niño', 2), ('dificultad al respirar niño', 2),
('recién nacido con problemas', 2), ('bebé llorón', 2), ('bebé irritable', 2),
('bebé con cólico', 2), ('bebé no duerme', 2), ('problemas de sueño infantil', 2),
('alergias infantiles', 2), ('rash infantil', 2), ('eczema infantil', 2),
('dermatitis infantil', 2), ('bronquitis infantil', 2), ('asma infantil', 2),
('otitis infantil', 2), ('dolor de garganta niño', 2), ('faringitis infantil', 2),
('vómito infantil', 2), ('diarrea infantil', 2), ('estreñimiento infantil', 2),
('cólicos', 2), ('reflujo infantil', 2), ('problemas de alimentación', 2),
('bajo peso al nacer', 2), ('prematuridad', 2), ('malnutrición infantil', 2),
('retraso en desarrollo', 2), ('retraso en crecimiento', 2), ('autismo', 2),
('trastorno de déficit atencional', 2), ('TDAH', 2), ('hiperactividad', 2),
('problemas de comportamiento', 2), ('agresividad infantil', 2), ('ansiedad infantil', 2),
('depresión infantil', 2), ('problemas escolares', 2), ('bajo rendimiento académico', 2);

-- CARDIOLOGÍA
INSERT INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('malestar cardíaco', 3), ('problemas del corazón', 3), ('enfermedad cardíaca', 3),
('insuficiencia cardíaca', 3), ('miocarditis', 3), ('pericarditis', 3),
('enfermedad valvular', 3), ('válvulas del corazón', 3), ('cardiopatía congénita', 3),
('ritmo cardíaco irregular', 3), ('latido irregular', 3), ('fatiga cardíaca', 3),
('cansancio por corazón', 3), ('disnea cardíaca', 3), ('edema pulmonar', 3),
('angina inestable', 3), ('síndrome coronario', 3), ('post infarto', 3),
('palpitaciones severas', 3), ('latidos acelerados', 3), ('taquicardia', 3),
('bradicardia', 3), ('latidos lentos', 3), ('pausas en el corazón', 3),
('síncope cardíaco', 3), ('desmayo', 3), ('presíncope', 3),
('mareo severo', 3), ('hipertensión crisis', 3), ('crisis hipertensiva', 3),
('hipotensión severa', 3), ('presión arterial muy baja', 3), ('shock cardiogénico', 3),
('insuficiencia cardíaca aguda', 3), ('edema agudo de pulmón', 3), ('pulmonía de corazón', 3),
('ortopnea', 3), ('disnea paroxística nocturna', 3), ('cianosis cardíaca', 3);

-- MEDICINA INTERNA
INSERT INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('afección sistémica', 4), ('enfermedad sistémica', 4), ('infección sistémica', 4),
('síndrome metabólico', 4), ('problemas metabólicos', 4), ('alteraciones metabólicas', 4),
('fiebre de origen desconocido', 4), ('infección recurrente', 4), ('infecciones frecuentes', 4),
('inmunodepresión', 4), ('problemas inmunológicos', 4), ('enfermedad crónica', 4),
('enfermedad de larga duración', 4), ('lúpus eritematoso', 4), ('LED', 4),
('esclerodermia', 4), ('síndrome de Sjögren', 4), ('vasculitis', 4),
('púrpura palpable', 4), ('petequias', 4), ('equimosis', 4),
('hematomas espontáneos', 4), ('sangrado fácil', 4), ('coagulopatía', 4);

-- DERMATOLOGÍA
INSERT INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('inflamación de piel', 5), ('piel inflamada', 5), ('reacción alérgica cutánea', 5),
('alergia en piel', 5), ('vitíligo', 5), ('manchas blancas', 5),
('cicatrices', 5), ('queloides', 5), ('cicatriz hipertrófica', 5),
('pústulas', 5), ('pápulas', 5), ('nódulos cutáneos', 5),
('vesículas', 5), ('ampollas', 5), ('úlceras cutáneas', 5),
('úlcera de presión', 5), ('liquen plano', 5), ('rosácea', 5),
('fotosensibilidad', 5), ('sensibilidad solar', 5), ('reacciones al sol', 5),
('fotodermatitis', 5), ('psoriasis', 5), ('dermatitis seborreica', 5),
('dermatitis atópica', 5), ('dermatitis de contacto', 5), ('piel seca extrema', 5),
('ictericia', 5), ('piel amarillenta', 5), ('melanoma', 5),
('carcinoma basocelular', 5), ('carcinoma de células escamosas', 5);

-- NEUROLOGÍA
INSERT INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('trastorno neurológico', 6), ('enfermedad neurológica', 6), ('neuropatía periférica', 6),
('síndrome de túnel carpiano', 6), ('radiculopatía', 6), ('mielopatía', 6),
('neuropatía diabética', 6), ('dolor de nervio', 6), ('neuralgia', 6),
('neuralgia del trigémino', 6), ('neuralgia occipital', 6), ('síndromes dolorosos', 6),
('trastornos de movimiento', 6), ('temblor esencial', 6), ('distonía', 6),
('espasticidad', 6), ('rigidez', 6), ('bradicinesia', 6),
('Parkinson', 6), ('ELA', 6), ('esclerosis lateral amiotrófica', 6),
('EM', 6), ('esclerosis múltiple', 6), ('migrañas', 6),
('migraña con aura', 6), ('migraña sin aura', 6), ('cefalea en trueno', 6),
('convulsiones', 6), ('epilepsia', 6), ('crisis convulsivas', 6),
('hemiplejía', 6), ('parálisis', 6), ('accidente cerebrovascular', 6),
('ACV', 6), ('ictus', 6), ('trombosis cerebral', 6);

-- GINECOLOGÍA
INSERT INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('problemas ginecológicos', 7), ('enfermedad ginecológica', 7), ('miomas uterinos', 7),
('fibroma uterino', 7), ('pólipos uterinos', 7), ('cáncer de útero', 7),
('cáncer de ovario', 7), ('cáncer de mama', 7), ('nódulo mamario', 7),
('secreción mamaria', 7), ('descarga del pezón', 7), ('dolor mamario', 7),
('mastalgia', 7), ('mastitis', 7), ('embarazo ectópico', 7),
('placenta previa', 7), ('preeclampsia', 7), ('toxemia', 7),
('aborto', 7), ('sangrado vaginal profuso', 7), ('hemorragia vaginal', 7),
('menorragia', 7), ('metrorragia', 7), ('dismenorrea severa', 7),
('cólicos extremos', 7), ('dispareunia', 7), ('relaciones sexuales dolorosas', 7),
('vaginismo', 7), ('ardor vaginal', 7), ('secreción vaginal abundante', 7),
('infección vaginal recurrente', 7), ('tricomoniasis', 7), ('candidiasis', 7);

-- ORTOPEDIA
INSERT INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('dolor óseo', 8), ('dolor articular crónico', 8), ('enfermedad ósea', 8),
('osteoporosis', 8), ('huesos débiles', 8), ('fragilidad ósea', 8),
('osteomielitis', 8), ('infección ósea', 8), ('necrosis ósea', 8),
('necrosis avascular', 8), ('displasia de cadera', 8), ('síndrome del túnel carpiano', 8),
('epicondilitis', 8), ('codo de tenista', 8), ('codo de golfista', 8),
('fascitis plantar', 8), ('talón doloroso', 8), ('espolón calcáneo', 8),
('menisco roto', 8), ('rotura de ligamentos', 8), ('desgarro muscular', 8),
('fractura complicada', 8), ('fractura expuesta', 8), ('dolor retrorrotuliano', 8),
('artritis reumatoide', 8), ('artrosis', 8), ('gota', 8),
('pseudogota', 8), ('bursitis', 8), ('tendinitis', 8);

-- OFTALMOLOGÍA
INSERT INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('problemática ocular', 27), ('enfermedad ocular', 27), ('retinopatía diabética', 27),
('degeneración macular', 27), ('degeneración macular asociada a edad', 27),
('desprendimiento de retina', 27), ('agujero macular', 27), ('membrana epirretiniana', 27),
('uveítis', 27), ('iritis', 27), ('ceratitis', 27), ('queratocono', 27),
('nistagmo', 27), ('estrabismo', 27), ('ambliopía', 27), ('ojo perezoso', 27),
('miopía progresiva', 27), ('hipermetropía', 27), ('anisometropía', 27),
('glaucoma', 27), ('glaucoma agudo', 27), ('presión intraocular alta', 27),
('catarata', 27), ('lente opaca', 27), ('visión borrosa', 27),
('cambios en visión', 27), ('pérdida de visión', 27), ('ceguera', 27);

-- GASTROENTEROLOGÍA
INSERT INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('enfermedad digestiva', 31), ('trastorno digestivo', 31), ('síndrome dispéptico', 31),
('dispepsia', 31), ('pirosis ácida', 31), ('reflujo ácido crónico', 31),
('esofagitis', 31), ('acalasia', 31), ('dificultad para tragar', 31),
('disfagia', 31), ('cáncer de esófago', 31), ('Barrett', 31), ('esófago de Barrett', 31),
('enfermedad diverticular', 31), ('diverticulitis', 31), ('poliposis', 31),
('cáncer de colon', 31), ('cáncer colorrectal', 31), ('enfermedad de Crohn', 31),
('colitis ulcerosa', 31), ('inflamación intestinal', 31), ('enfermedad inflamatoria', 31),
('pancreatitis', 31), ('páncreas inflamado', 31), ('cálculos biliares', 31),
('vómito en fuente', 31), ('hematemesis', 31), ('melena', 31),
('hematoquezia', 31), ('sangre en heces', 31), ('diarrea profusa', 31);

-- ENDOCRINOLOGÍA
INSERT INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('enfermedad endocrina', 32), ('trastorno hormonal', 32), ('desequilibrio hormonal', 32),
('problemas hormonales', 32), ('tiroiditis', 32), ('inflamación de tiroides', 32),
('bocio', 32), ('nodulación tiroidea', 32), ('cáncer de tiroides', 32),
('hipoglucemia', 32), ('glucosa baja', 32), ('cetoacidosis', 32),
('complicaciones de diabetes', 32), ('hipertensión arterial', 32), ('síndrome de Cushing', 32),
('insuficiencia adrenal', 32), ('enfermedad de Addison', 32), ('síndrome de ovario poliquístico', 32),
('PCOS', 32), ('hiperprolactinemia', 32), ('gigantismo', 32), ('acromegalia', 32),
('hipercalcemia', 32), ('hipocalcemia', 32), ('hipermagnesemia', 32);

-- NEUMOLOGÍA
INSERT INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('enfermedad pulmonar', 33), ('afección pulmonar', 33), ('neumopatía', 33),
('fibrosis pulmonar', 33), ('pulmón fibrótico', 33), ('EPOC', 33),
('enfermedad pulmonar obstructiva crónica', 33), ('enfisema pulmonar', 33),
('bronquitis crónica', 33), ('asma persistente', 33), ('asma grave', 33),
('silicosis', 33), ('neumoconiosis', 33), ('asbestosis', 33),
('sarcoidosis', 33), ('tuberculosis activa', 33), ('TB activa', 33),
('tuberculosis latente', 33), ('cáncer de pulmón', 33), ('edema pulmonar', 33),
('tromboembolismo pulmonar', 33), ('TEP', 33), ('embolismo pulmonar', 33),
('hemoptisis', 33), ('expectoración de sangre', 33), ('insuficiencia respiratoria', 33);

-- OTORRINOLARINGOLOGÍA
INSERT INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('enfermedad ENT', 28), ('problema otológico', 28), ('vértigo posicional paroxístico', 28),
('VPPB', 28), ('enfermedad de Meniere', 28), ('neuronitis vestibular', 28),
('hipoacusia', 28), ('sordera conductiva', 28), ('sordera neurosensorial', 28),
('presbiacusia', 28), ('otalgia', 28), ('mastoiditis', 28),
('otosclerosis', 28), ('colesteatoma', 28), ('timpanitis', 28),
('disfunción de trompa de Eustaquio', 28), ('aerosinusitis', 28), ('estenosis laringe', 28),
('parálisis vocal', 28), ('parálisis de cuerdas vocales', 28), ('pólipos vocales', 28),
('nódulos vocales', 28), ('granuloma laríngeo', 28), ('laringitis crónica', 28),
('cáncer de laringe', 28), ('poliposis nasal', 28), ('rinitis alérgica persistente', 28);

-- UROLOGÍA
INSERT INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('enfermedad urinaria', 30), ('trastorno urinario', 30), ('enfermedad prostática', 30),
('adenoma prostático', 30), ('cáncer de próstata', 30), ('retención urinaria', 30),
('incontinencia de urgencia', 30), ('incontinencia de esfuerzo', 30),
('incontinencia por rebosamiento', 30), ('enuresis', 30), ('oliguria', 30),
('anuria', 30), ('insuficiencia renal', 30), ('enfermedad renal crónica', 30),
('ERC', 30), ('nefropatía', 30), ('glomerulonefritis', 30),
('pielonefritis', 30), ('infección renal', 30), ('nefritis lúpica', 30),
('cáncer renal', 30), ('cáncer de vejiga', 30), ('cistitis intersticial', 30),
('vejiga dolorosa', 30), ('fimosis', 30), ('parafimosis', 30),
('infertilidad masculina', 30), ('oligospermia', 30), ('azoospermia', 30);

-- ODONTOLOGÍA
INSERT INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('problemas dentales', 23), ('enfermedad dental', 23), ('caries avanzada', 23),
('periodontitis', 23), ('piorrea', 23), ('enfermedad periodontal', 23),
('pérdida de piezas dentales', 23), ('edentulismo', 23), ('pulpitis', 23),
('pulpa inflamada', 23), ('necrosis pulpar', 23), ('endodoncia necesaria', 23),
('canal radicular', 23), ('granuloma apical', 23), ('quiste odontogénico', 23),
('maloclusión', 23), ('mordida cruzada', 23), ('sobremordida', 23),
('apiñamiento dental', 23), ('espaciamiento dental', 23), ('erupción ectópica', 23),
('impactación', 23), ('diente impactado', 23), ('tercer molar', 23),
('bruxismo', 23), ('rechinar de dientes', 23), ('sensibilidad dental extrema', 23);

-- PSIQUIATRÍA
INSERT INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('trastorno mental', 25), ('enfermedad mental', 25), ('trastorno de conducta', 25),
('trastorno de comportamiento', 25), ('trastorno disociativo', 25), ('trastorno de identidad', 25),
('trastorno de conversión', 25), ('trastorno facticio', 25), ('simulación', 25),
('mutismo selectivo', 25), ('trastorno comunicativo', 25), ('afasia', 25),
('alteración cognitiva', 25), ('demencia', 25), ('Alzheimer', 25),
('demencia vascular', 25), ('enfermedad de Pick', 25), ('cuerpos de Lewy', 25),
('trastorno neurocognitivo', 25), ('síndrome cerebral orgánico', 25),
('delirium', 25), ('confusión mental aguda', 25), ('psicosis', 25),
('delirio', 25), ('idea delirante', 25), ('alucinación', 25);

-- PSICOLOGÍA CLÍNICA
INSERT INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('problema psicológico', 24), ('dificultad emocional', 24), ('trastorno emocional', 24),
('fobia específica', 24), ('agorafobia', 24), ('fobia social', 24),
('trastorno de estrés postraumático', 24), ('TEPT', 24), ('trauma psicológico', 24),
('síndrome de estrés', 24), ('trastorno adaptativo', 24),
('trastorno somatomorfo', 24), ('hipocondría', 24), ('ciber hipocondría', 24),
('trastorno de ansiedad generalizada', 24), ('TAG', 24), ('trastorno de pánico recurrente', 24),
('agorafobia sin pánico', 24), ('depresión reactiva', 24), ('depresión endógena', 24),
('melancolía', 24), ('ansiedad', 24), ('depresión', 24),
('trastorno bipolar', 24), ('manía', 24), ('hipomanía', 24);

-- NUTRICIÓN Y DIETÉTICA
INSERT INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('problema nutricional', 26), ('deficiencia nutricional', 26), ('desnutrición severa', 26),
('malnutrición', 26), ('kwashiorkor', 26), ('marasmo', 26),
('deficiencia de hierro', 26), ('anemia ferropénica', 26), ('déficit de calcio', 26),
('osteoporosis nutricional', 26), ('déficit de vitamina D', 26), ('carencia vitamínica', 26),
('avitaminosis', 26), ('beriberi', 26), ('pelagra', 26), ('escorbuto', 26),
('enfermedad celíaca', 26), ('celiaquía', 26), ('intolerancia al gluten', 26),
('alergia alimentaria', 26), ('anafilaxia alimentaria', 26), ('intolerancia a la lactosa', 26),
('síndrome del intestino permeable', 26), ('sobrepeso nutricional', 26),
('obesidad severa', 26), ('sobrecarga metabólica', 26), ('síndrome metabólico nutricional', 26);

-- MEDICINA FAMILIAR
INSERT INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('consejería médica', 35), ('orientación en salud', 35), ('educación sanitaria', 35),
('prevención de enfermedades', 35), ('promoción de salud', 35),
('seguimiento de paciente crónico', 35), ('control de comorbilidades', 35),
('coordinación de cuidados', 35), ('evaluación del estado de salud', 35),
('chequeo médico completo', 35), ('revisión periódica', 35), ('screening', 35),
('derivación especializada', 35), ('medicina comunitaria', 35), ('salud pública', 35),
('programa preventivo', 35), ('consulta general', 35), ('atención integral', 35),
('cuidado centrado en paciente', 35), ('medicina de precisión', 35), ('medicina personalizada', 35);

-- TRAUMATOLOGÍA
INSERT INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('lesión traumática', 29), ('herida traumática', 29), ('traumatismo múltiple', 29),
('politraumatizado', 29), ('shock traumático', 29), ('hemorragia traumática', 29),
('fractura complicada', 29), ('fractura expuesta', 29), ('fractura patológica', 29),
('fractura de fatiga', 29), ('fractura por estrés', 29), ('lesión de órganos', 29),
('laceración', 29), ('contusión profunda', 29), ('aplastamiento', 29),
('síndrome compartimental', 29), ('síndrome de crush', 29), ('embolia gaseosa', 29),
('amputación', 29), ('quemadura', 29), ('congelamiento', 29),
('trauma ocular', 29), ('trauma dental', 29), ('trauma facial', 29);

-- REUMATOLOGÍA
INSERT INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('enfermedad reumática', 37), ('trastorno reumático', 37), ('artropatía', 37),
('poliartropa', 37), ('monoartritis', 37), ('oligoartritis', 37),
('síndrome de Raynaud', 37), ('vasculitis de pequeños vasos', 37),
('granulomatosis con poliangeítis', 37), ('poliartritis nodosa', 37),
('vasculitis sistémica', 37), ('crioglobulinemia', 37),
('enfermedad de Behçet', 37), ('sarcoidosis articular', 37),
('osteoartritis erosiva', 37), ('artrosis grave', 37), ('artrosis múltiple', 37),
('espondiloartritis', 37), ('artritis anquilosante', 37), ('espondiloartritis psoriásica', 37),
('lupus eritematoso', 37), ('esclerosis sistémica', 37), ('síndrome de Sjögren', 37);

-- FISIOTERAPIA Y REHABILITACIÓN
INSERT INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('discapacidad motora', 36), ('limitación funcional severa', 36),
('recuperación post accidente', 36), ('rehabilitación cardiaca', 36),
('rehabilitación pulmonar', 36), ('rehabilitación neurológica', 36),
('parálisis cerebral', 36), ('secuela de ACV', 36), ('recuperación de ictus', 36),
('ataxia', 36), ('problemas de equilibrio severos', 36), ('inestabilidad postural', 36),
('marcha patológica', 36), ('problema de marcha', 36), ('cojera', 36),
('alteración de la marcha', 36), ('marcha espástica', 36), ('marcha atáxica', 36),
('espasticidad', 36), ('contractura muscular', 36), ('debilidad muscular', 36),
('distrofia muscular', 36), ('miopatía', 36), ('neuropatía periférica', 36);

-- PEDIATRÍA NEONATAL
INSERT INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('recién nacido prematuro', 34), ('bebé prematuro', 34), ('pequeño para edad gestacional', 34),
('PEG', 34), ('grande para edad gestacional', 34), ('GEG', 34),
('asfixia perinatal', 34), ('encefalopatía hipóxica isquémica', 34), ('EHI neonatal', 34),
('displasia broncopulmonar', 34), ('DBP', 34), ('síndrome de dificultad respiratoria', 34),
('SDR neonatal', 34), ('hemorragia intraventricular', 34), ('HIV grado 4', 34),
('leucomalacia periventricular', 34), ('LPV', 34), ('retinopatía de la prematuridad', 34),
('ROP', 34), ('enterocolitis necrotizante', 34), ('NECN', 34),
('sepsis neonatal', 34), ('meningitis neonatal', 34), ('toxoplasmosis congénita', 34),
('rubeola congénita', 34), ('citomegalovirus congénito', 34), ('CMV congénito', 34),
('herpes neonatal', 34), ('sífilis congénita', 34), ('VIH congénito', 34),
('cardiopatía congénita compleja', 34), ('transposición de grandes arterias', 34),
('drenaje venoso anómalo', 34), ('síndrome de corazón univentricular', 34);

-- Verificación final
SELECT COUNT(*) as total_sintomas FROM sintomas_especialidad;
