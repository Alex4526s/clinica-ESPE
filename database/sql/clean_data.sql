USE clinica_espe_v2;

-- Eliminar tabla antigua con datos corruptos
TRUNCATE TABLE sintomas_especialidad;

-- MEDICINA GENERAL - 114 sintomas
INSERT INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('fiebre', 1), ('tos', 1), ('resfriado', 1), ('gripe', 1), ('dolor de cabeza', 1),
('dolor de garganta', 1), ('congestion nasal', 1), ('estornudos', 1), ('nauseas', 1),
('vomito', 1), ('diarrea', 1), ('estrenimiento', 1), ('dolor abdominal', 1), ('acidez', 1),
('mareos', 1), ('debilidad', 1), ('fatiga', 1), ('cansancio', 1), ('escalofrios', 1),
('sudoracion', 1), ('dolores musculares', 1), ('dolor de articulaciones', 1), ('inflamacion', 1),
('enrojecimiento', 1), ('hinchazón', 1), ('comezón', 1), ('picazon', 1), ('irritacion', 1),
('infeccion', 1), ('infeccion urinaria', 1), ('infeccion respiratoria', 1), ('infeccion de piel', 1),
('dolor de oido', 1), ('dolor de muelas', 1), ('mal aliento', 1), ('aftas', 1), ('herpes', 1),
('verrugas', 1), ('lunares', 1), ('manchas en la piel', 1), ('enrojecimiento de piel', 1),
('urticaria', 1), ('eccema', 1), ('seborrea', 1), ('caspa', 1), ('caida de cabello', 1),
('alopecia', 1), ('calvicie', 1), ('boca seca', 1), ('lengua blanca', 1), ('lengua roja', 1),
('dificultad para tragar', 1), ('dolor al tragar', 1), ('cambios en voz', 1), ('ronquera', 1),
('perdida de apetito', 1), ('aumento de apetito', 1), ('cambios de peso', 1), ('aumento de peso', 1),
('perdida de peso', 1), ('obesidad', 1), ('sobrepeso', 1), ('bajo peso', 1), ('desnutricion', 1),
('cambios en la vision', 1), ('mala vision', 1), ('vision borrosa', 1), ('vision nublada', 1),
('ojos cansados', 1), ('ojos secos', 1), ('ojos llorosos', 1), ('conjuntivitis', 1), ('orzuelo', 1),
('chalazion', 1), ('cambios en audicion', 1), ('perdida auditiva', 1), ('zumbidos en oidos', 1),
('vértigo', 1), ('mareos al levantarse', 1), ('presion arterial baja', 1), ('presion arterial alta', 1),
('hipertension', 1), ('hipotension', 1), ('palpitaciones', 1), ('latidos irregulares', 1),
('dolor en el pecho', 1), ('opresion en el pecho', 1), ('falta de aire', 1), ('dificultad para respirar', 1),
('respiracion acelerada', 1), ('respiracion lenta', 1), ('bronquitis', 1), ('bronquitis aguda', 1),
('asma', 1), ('alergias', 1), ('alergia al polen', 1), ('alergia a alimentos', 1),
('anafilaxis', 1), ('shock alergico', 1), ('hinchazón de labios', 1), ('hinchazón de lengua', 1),
('hinchazón de garganta', 1), ('problemas de la glandula tiroides', 1), ('tiroides aumentada', 1),
('bocio', 1), ('diabetes', 1), ('diabetes tipo 1', 1), ('diabetes tipo 2', 1),
('glucosa alta', 1), ('glucosa baja', 1), ('cetoacidosis diabética', 1), ('coma diabetico', 1);

-- PEDIATRÍA - 41 sintomas
INSERT INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('bebe enfermo', 2), ('niño enfermo', 2), ('fiebre infantil', 2),
('problemas respiratorios niño', 2), ('dificultad al respirar niño', 2),
('recien nacido con problemas', 2), ('bebe lloron', 2), ('bebe irritable', 2),
('bebe con colico', 2), ('bebe no duerme', 2), ('problemas de sueño infantil', 2),
('alergias infantiles', 2), ('rash infantil', 2), ('eczema infantil', 2),
('dermatitis infantil', 2), ('bronquitis infantil', 2), ('asma infantil', 2),
('otitis infantil', 2), ('dolor de garganta niño', 2), ('faringitis infantil', 2),
('vomito infantil', 2), ('diarrea infantil', 2), ('estrenimiento infantil', 2),
('colicos', 2), ('reflujo infantil', 2), ('problemas de alimentacion', 2),
('bajo peso al nacer', 2), ('prematuridad', 2), ('malnutricion infantil', 2),
('retraso en desarrollo', 2), ('retraso en crecimiento', 2), ('autismo', 2),
('trastorno de deficit atencional', 2), ('TDAH', 2), ('hiperactividad', 2),
('problemas de comportamiento', 2), ('agresividad infantil', 2), ('ansiedad infantil', 2),
('depresion infantil', 2), ('problemas escolares', 2), ('bajo rendimiento academico', 2);

-- CARDIOLOGÍA - 39 sintomas
INSERT INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('malestar cardiaco', 3), ('problemas del corazon', 3), ('enfermedad cardiaca', 3),
('insuficiencia cardiaca', 3), ('miocarditis', 3), ('pericarditis', 3),
('enfermedad valvular', 3), ('válvulas del corazon', 3), ('cardiopatia congenita', 3),
('ritmo cardiaco irregular', 3), ('latido irregular', 3), ('fatiga cardiaca', 3),
('cansancio por corazon', 3), ('disnea cardiaca', 3), ('edema pulmonar', 3),
('angina inestable', 3), ('sindrome coronario', 3), ('post infarto', 3),
('palpitaciones severas', 3), ('latidos acelerados', 3), ('taquicardia', 3),
('bradicardia', 3), ('latidos lentos', 3), ('pausas en el corazon', 3),
('sincope cardiaco', 3), ('desmayo', 3), ('presincope', 3),
('mareo severo', 3), ('hipertension crisis', 3), ('crisis hipertensiva', 3),
('hipotension severa', 3), ('presion arterial muy baja', 3), ('shock cardiogenico', 3),
('insuficiencia cardiaca aguda', 3), ('edema agudo de pulmon', 3), ('pulmonía de corazon', 3),
('ortopnea', 3), ('disnea paroxistica nocturna', 3), ('cianosis cardiaca', 3);

-- NEUROLOGÍA - 36 sintomas
INSERT INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('trastorno neurologico', 6), ('enfermedad neurologica', 6), ('neuropatia periferica', 6),
('sindrome del tunel carpiano', 6), ('radiculopatia', 6), ('mielopatia', 6),
('neuropatia diabetica', 6), ('dolor de nervio', 6), ('neuralgia', 6),
('neuralgia del trigemino', 6), ('neuralgia occipital', 6), ('sindromes dolorosos', 6),
('trastornos de movimiento', 6), ('temblor esencial', 6), ('distonia', 6),
('espasticidad', 6), ('rigidez', 6), ('bradicinesia', 6),
('Parkinson', 6), ('ELA', 6), ('esclerosis lateral amiotrofica', 6),
('EM', 6), ('esclerosis múltiple', 6), ('migrañas', 6),
('migraña con aura', 6), ('migraña sin aura', 6), ('cefalea en trueno', 6),
('convulsiones', 6), ('epilepsia', 6), ('crisis convulsivas', 6),
('hemiplejia', 6), ('paralisis', 6), ('accidente cerebrovascular', 6),
('ACV', 6), ('ictus', 6), ('trombosis cerebral', 6);

-- GINECOLOGÍA - 33 sintomas
INSERT INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('problemas ginecologicos', 7), ('enfermedad ginecologica', 7), ('miomas uterinos', 7),
('fibroma uterino', 7), ('polipos uterinos', 7), ('cancer de utero', 7),
('cancer de ovario', 7), ('cancer de mama', 7), ('nodulo mamario', 7),
('secrecion mamaria', 7), ('descarga del pezon', 7), ('dolor mamario', 7),
('mastalgia', 7), ('mastitis', 7), ('embarazo ectopico', 7),
('placenta previa', 7), ('preeclampsia', 7), ('toxemia', 7),
('aborto', 7), ('sangrado vaginal profuso', 7), ('hemorragia vaginal', 7),
('menorragia', 7), ('metrorragia', 7), ('dismenorrea severa', 7),
('colicos extremos', 7), ('dispareunia', 7), ('relaciones sexuales dolorosas', 7),
('vaginismo', 7), ('ardor vaginal', 7), ('secrecion vaginal abundante', 7),
('infeccion vaginal recurrente', 7), ('tricomoniasis', 7), ('candidiasis', 7);

-- PEDIATRÍA NEONATAL - 34 sintomas
INSERT INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('recien nacido prematuro', 34), ('bebe prematuro', 34), ('pequeño para edad gestacional', 34),
('PEG', 34), ('grande para edad gestacional', 34), ('GEG', 34),
('asfixia perinatal', 34), ('encefalopatia hipoxica isquemica', 34), ('EHI neonatal', 34),
('displasia broncopulmonar', 34), ('DBP', 34), ('sindrome de dificultad respiratoria', 34),
('SDR neonatal', 34), ('hemorragia intraventricular', 34), ('HIV grado 4', 34),
('leucomalacia periventricular', 34), ('LPV', 34), ('retinopatia de la prematuridad', 34),
('ROP', 34), ('enterocolitis necrotizante', 34), ('NECN', 34),
('sepsis neonatal', 34), ('meningitis neonatal', 34), ('toxoplasmosis congenita', 34),
('rubeola congenita', 34), ('citomegalovirus congenito', 34), ('CMV congenito', 34),
('herpes neonatal', 34), ('sifilis congenita', 34), ('VIH congenito', 34),
('cardiopatia congenita compleja', 34), ('transposicion de grandes arterias', 34),
('drenaje venoso anomalo', 34), ('sindrome de corazon univentricular', 34);

-- DERMATOLOGÍA - 32 sintomas
INSERT INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('inflamacion de piel', 5), ('piel inflamada', 5), ('reaccion alergica cutanea', 5),
('alergia en piel', 5), ('vitiligo', 5), ('manchas blancas', 5),
('cicatrices', 5), ('queloides', 5), ('cicatriz hipertrofica', 5),
('pustulas', 5), ('papulas', 5), ('nodulos cutaneos', 5),
('vesiculas', 5), ('ampollas', 5), ('ulceras cutaneas', 5),
('ulcera de presion', 5), ('liquen plano', 5), ('rosacea', 5),
('fotosensibilidad', 5), ('sensibilidad solar', 5), ('reacciones al sol', 5),
('fotodermatitis', 5), ('psoriasis', 5), ('dermatitis seborreica', 5),
('dermatitis atopica', 5), ('dermatitis de contacto', 5), ('piel seca extrema', 5),
('ictericia', 5), ('piel amarillenta', 5), ('melanoma', 5),
('carcinoma basocelular', 5), ('carcinoma de celulas escamosas', 5);

-- GASTROENTEROLOGÍA - 31 sintomas
INSERT INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('enfermedad digestiva', 31), ('trastorno digestivo', 31), ('sindrome dispeptico', 31),
('dispepsia', 31), ('pirosis acida', 31), ('reflujo acido cronico', 31),
('esofagitis', 31), ('acalasia', 31), ('dificultad para tragar', 31),
('disfagia', 31), ('cancer de esofago', 31), ('Barrett', 31), ('esofago de Barrett', 31),
('enfermedad diverticular', 31), ('diverticulitis', 31), ('poliposis', 31),
('cancer de colon', 31), ('cancer colorrectal', 31), ('enfermedad de Crohn', 31),
('colitis ulcerosa', 31), ('inflamacion intestinal', 31), ('enfermedad inflamatoria', 31),
('pancreatitis', 31), ('pancreas inflamado', 31), ('calculos biliares', 31),
('vomito en fuente', 31), ('hematemesis', 31), ('melena', 31),
('hematoquezia', 31), ('sangre en heces', 31), ('diarrea profusa', 31);

-- ORTOPEDIA - 30 sintomas
INSERT INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('dolor oseo', 8), ('dolor articular cronico', 8), ('enfermedad osea', 8),
('osteoporosis', 8), ('huesos debiles', 8), ('fragilidad osea', 8),
('osteomielitis', 8), ('infeccion osea', 8), ('necrosis osea', 8),
('necrosis avascular', 8), ('displasia de cadera', 8), ('sindrome del tunel carpiano', 8),
('epicondilitis', 8), ('codo de tenista', 8), ('codo de golfista', 8),
('fascitis plantar', 8), ('talon doloroso', 8), ('espolon calcaneo', 8),
('menisco roto', 8), ('rotura de ligamentos', 8), ('desgarro muscular', 8),
('fractura complicada', 8), ('fractura expuesta', 8), ('dolor retrorrrotuliano', 8),
('artritis reumatoide', 8), ('artrosis', 8), ('gota', 8),
('pseudogota', 8), ('bursitis', 8), ('tendinitis', 8);

-- UROLOGÍA - 29 sintomas
INSERT INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('enfermedad urinaria', 30), ('trastorno urinario', 30), ('enfermedad prostatica', 30),
('adenoma prostatico', 30), ('cancer de prostata', 30), ('retencion urinaria', 30),
('incontinencia de urgencia', 30), ('incontinencia de esfuerzo', 30),
('incontinencia por rebosamiento', 30), ('enuresis', 30), ('oliguria', 30),
('anuria', 30), ('insuficiencia renal', 30), ('enfermedad renal cronica', 30),
('ERC', 30), ('nefropatia', 30), ('glomerulonefritis', 30),
('pielonefritis', 30), ('infeccion renal', 30), ('nefritis lupica', 30),
('cancer renal', 30), ('cancer de vejiga', 30), ('cistitis intersticial', 30),
('vejiga dolorosa', 30), ('fimosis', 30), ('parafimosis', 30),
('infertilidad masculina', 30), ('oligospermia', 30), ('azoospermia', 30);

-- OFTALMOLOGÍA - 28 sintomas
INSERT INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('problematica ocular', 27), ('enfermedad ocular', 27), ('retinopatia diabetica', 27),
('degeneracion macular', 27), ('degeneracion macular asociada a edad', 27),
('desprendimiento de retina', 27), ('agujero macular', 27), ('membrana epirretiniana', 27),
('uveitis', 27), ('iritis', 27), ('ceratitis', 27), ('queratocono', 27),
('nistagmo', 27), ('estrabismo', 27), ('amblopia', 27), ('ojo perezoso', 27),
('miopia progresiva', 27), ('hipermetropia', 27), ('anisometropia', 27),
('glaucoma', 27), ('glaucoma agudo', 27), ('presion intraocular alta', 27),
('catarata', 27), ('lente opaca', 27), ('vision borrosa', 27),
('cambios en vision', 27), ('perdida de vision', 27), ('ceguera', 27);

-- OTORRINOLARINGOLOGÍA - 27 sintomas
INSERT INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('enfermedad ENT', 28), ('problema otologico', 28), ('vértigo posicional paroxistico', 28),
('VPPB', 28), ('enfermedad de Meniere', 28), ('neuronitis vestibular', 28),
('hipoacusia', 28), ('sordera conductiva', 28), ('sordera neurosensorial', 28),
('presbiacusia', 28), ('otalgia', 28), ('mastoiditis', 28),
('otosclerosis', 28), ('colesteatoma', 28), ('timpanitis', 28),
('disfuncion de trompa de Eustaquio', 28), ('aerosinusitis', 28), ('estenosis laringe', 28),
('paralisis vocal', 28), ('paralisis de cuerdas vocales', 28), ('polipos vocales', 28),
('nodulos vocales', 28), ('granuloma laringeo', 28), ('laringitis cronica', 28),
('cancer de laringe', 28), ('poliposis nasal', 28), ('rinitis alergica persistente', 28);

-- ODONTOLOGÍA - 27 sintomas
INSERT INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('problemas dentales', 23), ('enfermedad dental', 23), ('caries avanzada', 23),
('periodontitis', 23), ('piorrea', 23), ('enfermedad periodontal', 23),
('perdida de piezas dentales', 23), ('edentulismo', 23), ('pulpitis', 23),
('pulpa inflamada', 23), ('necrosis pulpar', 23), ('endodoncia necesaria', 23),
('canal radicular', 23), ('granuloma apical', 23), ('quiste odontogenico', 23),
('malaoclusion', 23), ('mordida cruzada', 23), ('sobremordida', 23),
('apiñamiento dental', 23), ('espaciamiento dental', 23), ('erupcion ectopica', 23),
('impactacion', 23), ('diente impactado', 23), ('tercer molar', 23),
('bruxismo', 23), ('rechinar de dientes', 23), ('sensibilidad dental extrema', 23);

-- NUTRICIÓN Y DIETÉTICA - 27 sintomas
INSERT INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('problema nutricional', 26), ('deficiencia nutricional', 26), ('desnutricion severa', 26),
('malnutricion', 26), ('kwashiorkor', 26), ('marasmo', 26),
('deficiencia de hierro', 26), ('anemia ferropenica', 26), ('deficit de calcio', 26),
('osteoporosis nutricional', 26), ('deficit de vitamina D', 26), ('carencia vitaminica', 26),
('avitaminosis', 26), ('beriberi', 26), ('pelagra', 26), ('escorbuto', 26),
('enfermedad celiaca', 26), ('celiquia', 26), ('intolerancia al gluten', 26),
('alergia alimentaria', 26), ('anafilaxia alimentaria', 26), ('intolerancia a la lactosa', 26),
('sindrome del intestino permeable', 26), ('sobrepeso nutricional', 26),
('obesidad severa', 26), ('sobrecarga metabolica', 26), ('sindrome metabolico nutricional', 26);

-- PSICOLOGÍA CLÍNICA - 26 sintomas
INSERT INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('problema psicologico', 24), ('dificultad emocional', 24), ('trastorno emocional', 24),
('fobia especifica', 24), ('agorafobia', 24), ('fobia social', 24),
('trastorno de estres postraumatico', 24), ('TEPT', 24), ('trauma psicologico', 24),
('sindrome de estres', 24), ('trastorno adaptativo', 24),
('trastorno somatomorfo', 24), ('hipocondria', 24), ('ciber hipocondria', 24),
('trastorno de ansiedad generalizada', 24), ('TAG', 24), ('trastorno de panico recurrente', 24),
('agorafobia sin panico', 24), ('depresion reactiva', 24), ('depresion endogena', 24),
('melancolía', 24), ('ansiedad', 24), ('depresion', 24),
('trastorno bipolar', 24), ('mania', 24), ('hipomanía', 24);

-- PSIQUIATRÍA - 25 sintomas (para total 747)
INSERT INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('trastorno mental', 25), ('enfermedad mental', 25), ('trastorno de conducta', 25),
('trastorno de comportamiento', 25), ('trastorno disociativo', 25), ('trastorno de identidad', 25),
('trastorno de conversion', 25), ('trastorno facticio', 25), ('simulacion', 25),
('mutismo selectivo', 25), ('trastorno comunicativo', 25), ('afasia', 25),
('alteracion cognitiva', 25), ('demencia', 25), ('Alzheimer', 25),
('demencia vascular', 25), ('enfermedad de Pick', 25), ('cuerpos de Lewy', 25),
('trastorno neurocognitivo', 25), ('sindrome cerebral organico', 25),
('delirium', 25), ('confusion mental aguda', 25), ('psicosis', 25),
('delirio', 25), ('idea delirante', 25);

SELECT COUNT(*) as total_sintomas FROM sintomas_especialidad;
SELECT 'Limpieza completada sin caracteres corruptos' as resultado;
