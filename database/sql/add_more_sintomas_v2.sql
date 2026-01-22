USE clinica_espe_v2;

-- MEDICINA GENERAL - MÁS SÍNTOMAS
INSERT IGNORE INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('debilidad extrema', 1), ('cuerpo adolorido', 1), ('dolores generales', 1),
('molestia general', 1), ('sensación de malestar', 1), ('no me siento bien', 1),
('me duele todo', 1), ('tengo dolor', 1), ('dolores múltiples', 1),
('síndrome gripal', 1), ('infección general', 1), ('enfermedad general', 1);

-- PEDIATRÍA - MÁS SÍNTOMAS
INSERT IGNORE INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('bebé enfermo', 2), ('niño enfermo', 2), ('fiebre infantil', 2),
('problemas respiratorios niño', 2), ('dificultad al respirar niño', 2),
('recién nacido con problemas', 2), ('bebé llorón', 2), ('bebé irritable', 2),
('bebé con cólico', 2), ('bebé no duerme', 2), ('problemas de sueño infantil', 2),
('alergias infantiles', 2), ('rash infantil', 2), ('eczema infantil', 2),
('dermatitis infantil', 2), ('bronquitis infantil', 2), ('asma infantil', 2),
('otitis infantil', 2), ('dolor de garganta niño', 2), ('faringitis infantil', 2);

-- CARDIOLOGÍA - MÁS SÍNTOMAS
INSERT IGNORE INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('malestar cardíaco', 3), ('problemas del corazón', 3), ('enfermedad cardíaca', 3),
('insuficiencia cardíaca', 3), ('miocarditis', 3), ('pericarditis', 3),
('enfermedad valvular', 3), ('válvulas del corazón', 3), ('cardiopatía congénita', 3),
('ritmo cardíaco irregular', 3), ('latido irregular', 3), ('fatiga cardíaca', 3),
('cansancio por corazón', 3), ('disnea cardíaca', 3), ('edema pulmonar', 3),
('angina inestable', 3), ('síndrome coronario', 3), ('post infarto', 3);

-- MEDICINA INTERNA - MÁS SÍNTOMAS
INSERT IGNORE INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('afección sistémica', 4), ('enfermedad sistémica', 4), ('infección sistémica', 4),
('síndrome metabólico', 4), ('problemas metabólicos', 4), ('alteraciones metabólicas', 4),
('fiebre de origen desconocido', 4), ('FOD', 4), ('infección recurrente', 4),
('infecciones frecuentes', 4), ('inmunodepresión', 4), ('problemas inmunológicos', 4),
('enfermedad crónica', 4), ('enfermedad de larga duración', 4);

-- DERMATOLOGÍA - MÁS SÍNTOMAS
INSERT IGNORE INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('inflamación de piel', 5), ('piel inflamada', 5), ('reacción alérgica cutánea', 5),
('alergia en piel', 5), ('vitíligo', 5), ('manchas blancas', 5),
('cicatrices', 5), ('cicatriz', 5), ('queloides', 5), ('cicatriz hipertrófica', 5),
('pústulas', 5), ('pápulas', 5), ('nódulos cutáneos', 5), ('vesículas', 5),
('ampollas', 5), ('ampolla', 5), ('úlceras cutáneas', 5), ('úlcera de presión', 5),
('liquen plano', 5), ('rosácea', 5), ('acné rosácea', 5), ('fotosensibilidad', 5),
('sensibilidad solar', 5), ('reacciones al sol', 5), ('fotodermatitis', 5);

-- NEUROLOGÍA - MÁS SÍNTOMAS
INSERT IGNORE INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('trastorno neurológico', 6), ('enfermedad neurológica', 6), ('neuropatía periférica', 6),
('síndrome de túnel carpiano', 6), ('radiculopatía', 6), ('mielopatía', 6),
('neuropatía diabética', 6), ('dolor de nervio', 6), ('neuralgia', 6),
('neuralgia del trigémino', 6), ('neuralgia occipital', 6), ('síndromes dolorosos', 6),
('trastornos de movimiento', 6), ('temblor esencial', 6), ('distonía', 6),
('espasticidad', 6), ('rigidez', 6), ('bradicinesia', 6), ('Parkinson', 6),
('ELA', 6), ('esclerosis lateral amiotrófica', 6), ('EM', 6), ('esclerosis múltiple', 6);

-- GINECOLOGÍA - MÁS SÍNTOMAS
INSERT IGNORE INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('problemas ginecológicos', 7), ('enfermedad ginecológica', 7), ('miomas uterinos', 7),
('fibroma uterino', 7), ('pólipos uterinos', 7), ('cáncer de útero', 7),
('cáncer de ovario', 7), ('cáncer de mama', 7), ('nódulo mamario', 7),
('secreción mamaria', 7), ('descarga del pezón', 7), ('dolor mamario', 7),
('mastalgia', 7), ('mastitis', 7), ('embarazo ectópico', 7),
('placenta previa', 7), ('preeclampsia', 7), ('toxemia', 7), ('aborto', 7);

-- ORTOPEDIA - MÁS SÍNTOMAS
INSERT IGNORE INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('dolor óseo', 8), ('dolor articular crónico', 8), ('enfermedad ósea', 8),
('osteoporosis', 8), ('huesos débiles', 8), ('fragilidad ósea', 8),
('osteomielitis', 8), ('infección ósea', 8), ('necrosis ósea', 8),
('necrosis avascular', 8), ('displasia de cadera', 8), ('síndrome del túnel carpiano', 8),
('epicondilitis', 8), ('codo de tenista', 8), ('codo de golfista', 8),
('fascitis plantar', 8), ('talón doloroso', 8), ('espolón calcáneo', 8),
('menisco roto', 8), ('rotura de ligamentos', 8), ('desgarro muscular', 8);

-- OFTALMOLOGÍA - MÁS SÍNTOMAS
INSERT IGNORE INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('problemática ocular', 27), ('enfermedad ocular', 27), ('retinopatía diabética', 27),
('degeneración macular', 27), ('degeneración macular asociada a edad', 27),
('desprendimiento de retina', 27), ('agujero macular', 27), ('membrana epirretiniana', 27),
('uveítis', 27), ('iritis', 27), ('ceratitis', 27), ('queratocono', 27),
('nistagmo', 27), ('estrabismo', 27), ('ambliopía', 27), ('ojo perezoso', 27),
('miopía progresiva', 27), ('hipermetropía', 27), ('anisometropía', 27);

-- GASTROENTEROLOGÍA - MÁS SÍNTOMAS
INSERT IGNORE INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('enfermedad digestiva', 31), ('trastorno digestivo', 31), ('síndrome dispéptico', 31),
('dispepsia', 31), ('pirosis ácida', 31), ('reflujo ácido crónico', 31),
('esofagitis', 31), ('acalasia', 31), ('dificultad para tragar', 31),
('disfagia', 31), ('cáncer de esófago', 31), ('Barrett', 31), ('esófago de Barrett', 31),
('enfermedad diverticular', 31), ('diverticulitis', 31), ('poliposis', 31),
('cáncer de colon', 31), ('cáncer colorrectal', 31), ('enfermedad de Crohn', 31),
('colitis ulcerosa', 31), ('inflamación intestinal', 31), ('enfermedad inflamatoria', 31),
('pancreatitis', 31), ('páncreas inflamado', 31), ('cálculos biliares', 31);

-- ENDOCRINOLOGÍA - MÁS SÍNTOMAS
INSERT IGNORE INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('enfermedad endocrina', 32), ('trastorno hormonal', 32), ('desequilibrio hormonal', 32),
('problemas hormonales', 32), ('tiroiditis', 32), ('inflamación de tiroides', 32),
('bocio', 32), ('nodulación tiroidea', 32), ('cáncer de tiroides', 32),
('hipoglucemia', 32), ('glucosa baja', 32), ('cetoacidosis', 32),
('complicaciones de diabetes', 32), ('hipertensión arterial', 32), ('síndrome de Cushing', 32),
('insuficiencia adrenal', 32), ('enfermedad de Addison', 32), ('síndrome de ovario poliquístico', 32),
('PCOS', 32), ('hiperprolactinemia', 32), ('gigantismo', 32), ('acromegalia', 32);

-- NEUMOLOGÍA - MÁS SÍNTOMAS
INSERT IGNORE INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('enfermedad pulmonar', 33), ('afección pulmonar', 33), ('neumopatía', 33),
('fibrosis pulmonar', 33), ('pulmón fibrótico', 33), ('EPOC', 33),
('enfermedad pulmonar obstructiva crónica', 33), ('enfisema pulmonar', 33),
('bronquitis crónica', 33), ('asma persistente', 33), ('asma grave', 33),
('silicosis', 33), ('neumoconiosis', 33), ('asbestosis', 33),
('sarcoidosis', 33), ('tuberculosis activa', 33), ('TB activa', 33),
('tuberculosis latente', 33), ('cáncer de pulmón', 33), ('edema pulmonar', 33),
('tromboembolismo pulmonar', 33), ('TEP', 33), ('embolismo pulmonar', 33);

-- OTORRINOLARINGOLOGÍA - MÁS SÍNTOMAS
INSERT IGNORE INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('enfermedad ENT', 28), ('problema otológico', 28), ('vértigo posicional paroxístico', 28),
('VPPB', 28), ('enfermedad de Meniere', 28), ('neuronitis vestibular', 28),
('hipoacusia', 28), ('sordera conductiva', 28), ('sordera neurosensorial', 28),
('presbiacusia', 28), ('otalgia', 28), ('mastoiditis', 28),
('otosclerosis', 28), ('colesteatoma', 28), ('timpanitis', 28),
('disfunción de trompa de Eustaquio', 28), ('aerosinusitis', 28), ('estenosis laringe', 28),
('parálisis vocal', 28), ('parálisis de cuerdas vocales', 28), ('pólipos vocales', 28),
('nódulos vocales', 28), ('granuloma laríngeo', 28), ('laringitis crónica', 28),
('cáncer de laringe', 28), ('poliposis nasal', 28), ('rinitis alérgica persistente', 28);

-- UROLOGÍA - MÁS SÍNTOMAS
INSERT IGNORE INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
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

-- ODONTOLOGÍA - MÁS SÍNTOMAS
INSERT IGNORE INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('problemas dentales', 23), ('enfermedad dental', 23), ('caries avanzada', 23),
('periodontitis', 23), ('piorrea', 23), ('enfermedad periodontal', 23),
('pérdida de piezas dentales', 23), ('edentulismo', 23), ('pulpitis', 23),
('pulpa inflamada', 23), ('necrosis pulpar', 23), ('endodoncia necesaria', 23),
('canal radicular', 23), ('granuloma apical', 23), ('quiste odontogénico', 23),
('maloclusión', 23), ('mordida cruzada', 23), ('sobremordida', 23),
('apiñamiento dental', 23), ('espaciamiento dental', 23), ('erupción ectópica', 23),
('impactación', 23), ('diente impactado', 23), ('tercer molar', 23);

-- PSIQUIATRÍA - MÁS SÍNTOMAS
INSERT IGNORE INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('trastorno mental', 25), ('enfermedad mental', 25), ('trastorno de conducta', 25),
('trastorno de comportamiento', 25), ('trastorno disociativo', 25), ('trastorno de identidad', 25),
('trastorno de conversión', 25), ('trastorno facticio', 25), ('simulación', 25),
('mutismo selectivo', 25), ('mutismo electivo', 25), ('trastorno comunicativo', 25),
('afasia', 25), ('alteración cognitiva', 25), ('demencia', 25), ('Alzheimer', 25),
('demencia vascular', 25), ('enfermedad de Pick', 25), ('cuerpos de Lewy', 25),
('trastorno neurocognitivo', 25), ('síndrome cerebral orgánico', 25),
('delirium', 25), ('confusión mental aguda', 25);

-- PSICOLOGÍA CLÍNICA - MÁS SÍNTOMAS
INSERT IGNORE INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('problema psicológico', 24), ('dificultad emocional', 24), ('trastorno emocional', 24),
('fobia específica', 24), ('agorafobia', 24), ('fobia social', 24),
('trastorno de estrés postraumático', 24), ('TEPT', 24), ('trauma psicológico', 24),
('síndrome de estrés', 24), ('trastorno adaptativo', 24),
('trastorno somatomorfo', 24), ('hipocondría', 24), ('ciber hipocondría', 24),
('trastorno de ansiedad generalizada', 24), ('TAG', 24), ('trastorno de pánico recurrente', 24),
('agorafobia sin pánico', 24), ('depresión reactiva', 24), ('depresión endógena', 24),
('melancolía', 24), ('alexitimia', 24), ('anhedonia', 24);

-- NUTRICIÓN Y DIETÉTICA - MÁS SÍNTOMAS
INSERT IGNORE INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('problema nutricional', 26), ('deficiencia nutricional', 26), ('desnutrición severa', 26),
('malnutrición', 26), ('kwashiorkor', 26), ('marasmo', 26),
('deficiencia de hierro', 26), ('anemia ferropénica', 26), ('déficit de calcio', 26),
('osteoporosis nutricional', 26), ('déficit de vitamina D', 26), ('carencia vitamínica', 26),
('avitaminosis', 26), ('beriberi', 26), ('pelagra', 26), ('escorbuto', 26),
('enfermedad celíaca', 26), ('celiaquía', 26), ('intolerancia al gluten', 26),
('alergia alimentaria', 26), ('anafilaxia alimentaria', 26), ('intolerancia a la lactosa', 26),
('sensibilidad al gluten no celíaca', 26), ('síndrome del intestino permeable', 26);

-- MEDICINA FAMILIAR - MÁS SÍNTOMAS
INSERT IGNORE INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('consejería médica', 35), ('orientación en salud', 35), ('educación sanitaria', 35),
('prevención de enfermedades', 35), ('promoción de salud', 35),
('seguimiento de paciente crónico', 35), ('control de comorbilidades', 35),
('coordinación de cuidados', 35), ('evaluación del estado de salud', 35),
('chequeo médico completo', 35), ('revisión periódica', 35), ('screening', 35),
('derivación especializada', 35), ('medicina comunitaria', 35), ('salud pública', 35);

-- TRAUMATOLOGÍA - MÁS SÍNTOMAS
INSERT IGNORE INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('lesión traumática', 29), ('herida traumática', 29), ('traumatismo múltiple', 29),
('politraumatizado', 29), ('shock traumático', 29), ('hemorragia traumática', 29),
('fractura complicada', 29), ('fractura expuesta', 29), ('fractura patológica', 29),
('fractura de fatiga', 29), ('fractura por estrés', 29), ('lesión de órganos', 29),
('laceración', 29), ('contusión profunda', 29), ('aplastamiento', 29),
('síndrome compartimental', 29), ('síndrome de crush', 29), ('embolia gaseosa', 29);

-- REUMATOLOGÍA - MÁS SÍNTOMAS
INSERT IGNORE INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('enfermedad reumática', 37), ('trastorno reumático', 37), ('artropatía', 37),
('poliartropa', 37), ('monoartritis', 37), ('oligoartritis', 37),
('síndrome de Raynaud', 37), ('vasculitis de pequeños vasos', 37),
('granulomatosis con poliangeítis', 37), ('poliartritis nodosa', 37),
('vasculitis sistémica', 37), ('crioglobulinemia', 37),
('enfermedad de Behçet', 37), ('sarcoidosis articular', 37),
('osteoartritis erosiva', 37), ('artrosis grave', 37), ('artrosis múltiple', 37),
('espondiloartritis', 37), ('artritis anquilosante', 37), ('espondiloartritis psoriásica', 37);

-- FISIOTERAPIA Y REHABILITACIÓN - MÁS SÍNTOMAS
INSERT IGNORE INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('discapacidad motora', 36), ('limitación funcional severa', 36),
('recuperación post accidente', 36), ('rehabilitación cardiaca', 36),
('rehabilitación pulmonar', 36), ('rehabilitación neurológica', 36),
('parálisis cerebral', 36), ('secuela de ACV', 36), ('recuperación de ictus', 36),
('ataxia', 36), ('problemas de equilibrio severos', 36), ('inestabilidad postural', 36),
('marcha patológica', 36), ('problema de marcha', 36), ('cojera', 36),
('alteración de la marcha', 36), ('marcha espástica', 36), ('marcha atáxica', 36);

-- PEDIATRÍA NEONATAL - MÁS SÍNTOMAS
INSERT IGNORE INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('recién nacido prematuro', 34), ('bebé prematuro', 34), ('pequeño para edad gestacional', 34),
('PEG', 34), ('grande para edad gestacional', 34), ('GEG', 34),
('asfixia perinatal', 34), ('encefalopatía hipóxica isquémica', 34), ('EHI neonatal', 34),
('displasia broncopulmonar', 34), ('DBP', 34), ('síndrome de dificultad respiratoria', 34),
('SDR neonatal', 34), ('hemorragia intraventricular', 34), ('HIV grado 4', 34),
('leucomalacia periventricular', 34), ('LPV', 34), ('retinopatía de la prematuridad', 34),
('ROP', 34), ('enterocolitis necrotizante', 34), ('NECN', 34),
('sepsis neonatal', 34), ('meningitis neonatal', 34);

SELECT COUNT(*) as total_sintomas FROM sintomas_especialidad;
SELECT e.nombre, COUNT(s.id) as sintomas 
FROM especialidades e 
LEFT JOIN sintomas_especialidad s ON e.id = s.especialidad_id 
GROUP BY e.id, e.nombre 
ORDER BY sintomas DESC;
