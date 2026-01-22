USE clinica_espe_v2;

-- MEDICINA GENERAL - SÍNTOMAS EXTENSIVOS
INSERT IGNORE INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('fiebre alta', 1), ('fiebre moderada', 1), ('fiebre baja', 1), ('febrículas', 1),
('escalofríos', 1), ('sudoración excesiva', 1), ('sofocos', 1), ('sensación de calor', 1),
('fatiga extrema', 1), ('agotamiento', 1), ('cansancio severo', 1), ('postración', 1),
('síncope', 1), ('mareos frecuentes', 1), ('vértigo', 1), ('inestabilidad', 1),
('alucinaciones', 1), ('alucinaciones visuales', 1), ('alucinaciones auditivas', 1),
('confusión mental', 1), ('desorientación', 1), ('cambios de comportamiento', 1),
('irritabilidad', 1), ('cambios de humor', 1), ('apatía', 1), ('letargo', 1);

-- PEDIATRÍA - SÍNTOMAS NEONATALES Y PEDIÁTRICOS
INSERT IGNORE INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('bebé muy pálido', 2), ('palidez extrema', 2), ('cianosis en bebé', 2), ('coloración azulada', 2),
('convulsiones en niño', 2), ('espasmos infantiles', 2), ('rigidez muscular niño', 2),
('flacidez en bebé', 2), ('hipotonía', 2), ('bebé no responde', 2), ('pérdida de conciencia infantil', 2),
('vómito recurrente niño', 2), ('vómito con sangre niño', 2), ('hematemesis infantil', 2),
('diarrea severa infantil', 2), ('diarrea con sangre niño', 2), ('melena infantil', 2),
('heces negras', 2), ('estreñimiento severo infantil', 2), ('obstrucción intestinal niño', 2),
('distensión abdominal infantil', 2), ('abdominal muy inflamado niño', 2), ('vientre distendido', 2),
('problemas de la fontanela', 2), ('fontanela abultada', 2), ('fontanela hundida', 2),
('hidrocefalia', 2), ('cabeza muy grande', 2), ('circunferencia cefálica aumentada', 2);

-- CARDIOLOGÍA - SÍNTOMAS CARDÍACOS GRAVES
INSERT IGNORE INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('palpitaciones severas', 3), ('latidos acelerados', 3), ('taquicardia', 3), ('bradicardia', 3),
('latidos lentos', 3), ('pausas en el corazón', 3), ('síncope cardíaco', 3), ('desmayo', 3),
('presíncope', 3), ('mareo severo', 3), ('hipertensión crisis', 3), ('crisis hipertensiva', 3),
('hipotensión severa', 3), ('presión arterial muy baja', 3), ('shock cardiogénico', 3),
('insuficiencia cardíaca aguda', 3), ('edema agudo de pulmón', 3), ('pulmonía de corazón', 3),
('ortopnea', 3), ('disnea paroxística nocturna', 3), ('DPN', 3), ('cianosis cardíaca', 3),
('dedos en palillo de tambor', 3), ('acropaquía', 3), ('murmullo cardíaco', 3),
('soplo cardíaco sistólico', 3), ('soplo diastólico', 3), ('roce pericárdico', 3);

-- MEDICINA INTERNA - ENFERMEDADES SISTÉMICAS
INSERT IGNORE INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('lúpus eritematoso', 4), ('LED', 4), ('artritis reumatoide severa', 4), ('esclerodermia', 4),
('piel engrosada', 4), ('síndrome de Sjögren', 4), ('sequedad ocular severa', 4),
('sequedad bucal severa', 4), ('vasculitis', 4), ('inflamación de vasos', 4),
('púrpura palpable', 4), ('manchas púrpura no blanqueables', 4), ('petequias', 4),
('equimosis', 4), ('hematomas espontáneos', 4), ('sangrado fácil', 4),
('hemorragia', 4), ('hemorragia gastrointestinal', 4), ('hemorragia cerebral', 4),
('coagulopatía', 4), ('trastorno de coagulación', 4), ('hemofilia', 4),
('trombocitopenia', 4), ('plaquetas bajas', 4), ('leucopenia', 4), ('glóbulos blancos bajos', 4),
('pancitopenia', 4), ('fallo de médula ósea', 4), ('anemia aplásica', 4);

-- DERMATOLOGÍA - AFECCIONES DERMATOLÓGICAS SEVERAS
INSERT IGNORE INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('psoriasis generalizada', 5), ('psoriasis eritrodérmica', 5), ('psoriasis pustulosa', 5),
('exantema', 5), ('erupción generalizada', 5), ('enantema', 5), ('úlceras aftosas', 5),
('aftas recurrentes', 5), ('aftas dolorosas', 5), ('estomatitis', 5), ('inflamación boca', 5),
('necrosis de tejidos', 5), ('gangrena', 5), ('piel azulada', 5), ('cianosis dermatológica', 5),
('ictericia', 5), ('piel amarillenta', 5), ('melanoma', 5), ('cáncer de piel', 5),
('carcinoma basocelular', 5), ('carcinoma de células escamosas', 5), ('papilomas', 5),
('verrugas plantares', 5), ('verrugas genitales', 5), ('molusco contagioso', 5),
('sarampión', 5), ('varicela', 5), ('herpes zóster', 5), ('herpes simple', 5),
('conjuntivitis alérgica', 5), ('orzuelo', 5), ('chalazión', 5), ('piel seca extrema', 5);

-- NEUROLOGÍA - SÍNDROMES NEUROLÓGICOS
INSERT IGNORE INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('síndrome de Guillain-Barré', 6), ('parálisis ascendente', 6), ('síndrome de Miller Fisher', 6),
('tetania', 6), ('contracciones involuntarias', 6), ('mioclonías', 6), ('espasmos', 6),
('seizura', 6), ('convulsión', 6), ('estatus epiléptico', 6), ('estado de mal epiléptico', 6),
('síncope vasovagal', 6), ('síncope cardíaco', 6), ('síncope situacional', 6),
('cefalea en trueno', 6), ('migraña oftalmopléjica', 6), ('migraña hemipléjica', 6),
('hemiplejía', 6), ('parálisis de un lado', 6), ('paraplejía', 6), ('parálisis de miembros inferiores', 6),
('tetraplejía', 6), ('cuadriplejía', 6), ('parálisis total', 6), ('akinetopsia', 6),
('ceguera de movimiento', 6), ('prosopagnosia', 6), ('no reconoce caras', 6),
('afasia motora', 6), ('afasia de Broca', 6), ('afasia receptiva', 6), ('afasia de Wernicke', 6);

-- GINECOLOGÍA - PATOLOGÍAS OBSTÉTRICAS
INSERT IGNORE INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('sangrado vaginal profuso', 7), ('hemorragia vaginal masiva', 7), ('menorragia', 7),
('metrorragia', 7), ('sangrado entre períodos', 7), ('polimenorrea', 7),
('oligomenorrea', 7), ('amenorrea', 7), ('ausencia de menstruación', 7),
('dismenorrea severa', 7), ('cólicos extremos', 7), ('dispareunia', 7), ('relaciones sexuales dolorosas', 7),
('vaginismo', 7), ('ardor vaginal', 7), ('vulvodinia', 7), ('dolor vulvar crónico', 7),
('secreción vaginal abundante', 7), ('secreción fétida', 7), ('infección vaginal recurrente', 7),
('tricomoniasis', 7), ('candidiasis recurrente', 7), ('vaginosis bacteriana', 7),
('cerclaje cervical', 7), ('incompetencia cervical', 7), ('cervicitis', 7),
('pólipo endometrial', 7), ('endometritis', 7), ('endometriosis avanzada', 7);

-- ORTOPEDIA - PATOLOGÍAS OSTEOARTICULARES SEVERAS
INSERT IGNORE INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('pseudoartrosis', 8), ('retardo de consolidación', 8), ('non union', 8),
('consolidación viciosa', 8), ('mal orden óseo', 8), ('dolor articular nocturno', 8),
('rigidez matutina', 8), ('tumefacción articular', 8), ('inflamación de articulación', 8),
('calor local', 8), ('enrojecimiento articular', 8), ('derrame articular', 8),
('efusión articular', 8), ('rodilla inflamada', 8), ('rodilla hinchada', 8),
('bloqueo articular', 8), ('knee lock', 8), ('giving way', 8), ('rodilla que cede', 8),
('subluxación', 8), ('inestabilidad articular', 8), ('laxitud ligamentaria', 8),
('hiperlaxitud', 8), ('síndrome de Ehlers-Danlos', 8), ('Marfan', 8),
('condromalacia rotuliana', 8), ('dolor retrorrotuliano', 8), ('síndrome de Hoffa', 8);

-- OFTALMOLOGÍA - PATOLOGÍAS OFTALMOLÓGICAS AVANZADAS
INSERT IGNORE INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('glaucoma agudo', 27), ('ángulo cerrado', 27), ('presión intraocular alta', 27),
('ceguera nocturna', 27), ('nictalopía', 27), ('visión borrosa nocturna', 27),
('daltonismo', 27), ('ceguera para los colores', 27), ('discromatopsia', 27),
('escotoma central', 27), ('mancha en visión', 27), ('metamorfopsia', 27),
('deformación de imágenes', 27), ('micropsia', 27), ('objetos pequeños', 27),
('macropsia', 27), ('objetos grandes', 27), ('fotofobia', 27),
('fotosensibilidad', 27), ('fotofobia severa', 27), ('diplopia', 27),
('visión doble', 27), ('diplopía monocular', 27), ('diplopía binocular', 27),
('ambliopía refractiva', 27), ('hemianopsia', 27), ('pérdida de media visión', 27);

-- GASTROENTEROLOGÍA - ENFERMEDADES GI SEVERAS
INSERT IGNORE INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('vómito en fuente', 31), ('vómito proyectil', 31), ('hematemesis', 31),
('vómito de sangre', 31), ('material como posos de café', 31), ('melena', 31),
('heces negras', 31), ('hematoquezia', 31), ('sangre roja en heces', 31),
('íleo paralítico', 31), ('íleo dinámico', 31), ('obstrucción intestinal completa', 31),
('vólvulo', 31), ('torsión intestinal', 31), ('invaginación', 31),
('impactación fecal', 31), ('bezoar', 31), ('fecaloma', 31),
('perforación intestinal', 31), ('perforación gástrica', 31), ('peritonitis generalizada', 31),
('ascitis', 31), ('distensión abdominal severa', 31), ('abdomen en tabla', 31),
('rebote abdominal', 31), ('defensa abdominal', 31), ('diarrea profusa', 31),
('diarrea secretora', 31), ('diarrea osmótica', 31), ('diarrea por malabsorción', 31);

-- ENDOCRINOLOGÍA - DESCONTROL METABÓLICO
INSERT IGNORE INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('cetoacidosis diabética', 32), ('cetoacidosis', 32), ('hiperglucemia severa', 32),
('coma hiperosmolar', 32), ('estado hiperosmolar', 32), ('hipoglucemia severa', 32),
('glucosa muy baja', 32), ('coma hipoglucémico', 32), ('shock hipoglucémico', 32),
('tiroiditis de Hashimoto', 32), ('tiroiditis autoinmune', 32), ('tiroiditis silenciosa', 32),
('tiroiditis post parto', 32), ('tiroiditis de De Quervain', 32), ('tiroiditis fibrótica', 32),
('tiroiditis de Riedel', 32), ('páncreas fibroso', 32), ('insuficiencia pancreática', 32),
('esteatorrea', 32), ('heces grasientas', 32), ('malabsorción grasa', 32),
('hiperaldosteronismo', 32), ('hiperparatiroidismo', 32), ('hipercalcemia severa', 32),
('hipocalcemia severa', 32), ('calcio muy bajo', 32), ('tetania hipocalcémica', 32);

-- NEUMOLOGÍA - PATOLOGÍAS PULMONARES CRÍTICAS
INSERT IGNORE INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('hemoptisis', 33), ('expectoración de sangre', 33), ('sangre en esputo', 33),
('insuficiencia respiratoria', 33), ('fallo respiratorio', 33), ('apnea del sueño obstructiva', 33),
('apnea central', 33), ('síndrome de apnea mixta', 33), ('respiración periódica', 33),
('respiración de Cheyne-Stokes', 33), ('respiración de Kussmaul', 33), ('respiración de Biot', 33),
('cianosis central', 33), ('cianosis periférica', 33), ('coloración azul', 33),
('polipnea', 33), ('respiración acelerada', 33), ('bradipnea', 33), ('respiración lenta', 33),
('disnea de esfuerzo', 33), ('disnea paroxística nocturna', 33), ('ortopnea extrema', 33),
('respiración abdominal', 33), ('tiraje intercostal', 33), ('tiraje supraesternal', 33),
('aleteo nasal', 33), ('quejido respiratorio', 33), ('estridor', 33), ('sibilancia', 33);

-- OTORRINOLARINGOLOGÍA - ENT COMPLICADO
INSERT IGNORE INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('hipoacusia profunda', 28), ('sordera total', 28), ('anacusia', 28), ('sordera bilateral', 28),
('vértigo posicional', 28), ('vértigo rotatorio', 28), ('vértigo lineal', 28),
('acúfenos', 28), ('zumbidos oídos', 28), ('tinitus', 28), ('ruido en oídos', 28),
('otalgia severa', 28), ('dolor de oído intenso', 28), ('miringitis', 28),
('dermatitis auricular', 28), ('eccema del conducto', 28), ('otitis externa maligna', 28),
('otitis necrotizante', 28), ('mastoiditis aguda', 28), ('mastoiditis crónica', 28),
('absceso mastoideo', 28), ('laberintitis', 28), ('neuritis vestibular severa', 28),
('vertiginosos', 28), ('disartria', 28), ('disfonía', 28), ('afonía', 28),
('pérdida de voz', 28), ('ronquera crónica', 28), ('disfonia espasmódica', 28);

-- UROLOGÍA - PATOLOGÍAS UROLÓGICAS SEVERAS
INSERT IGNORE INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('hematuria', 30), ('sangre en orina', 30), ('hematuria macroscópica', 30),
('hematuria microscópica', 30), ('piuria', 30), ('pus en orina', 30),
('proteinuria masiva', 30), ('albuminuria', 30), ('cilindros en orina', 30),
('cristales', 30), ('bacteriuria', 30), ('cristales en orina', 30),
('litiasis', 30), ('cálculos renales', 30), ('cólico nefrítico', 30),
('cólico ureteral', 30), ('hidronefrofis', 30), ('obstrucción urinaria', 30),
('uropatía obstructiva', 30), ('azoemia', 30), ('retención urinaria aguda', 30),
('globo vesical', 30), ('vejiga distendida', 30), ('dolor vesical', 30),
('supuración uretral', 30), ('uretritis', 30), ('síndrome de la próstata irritable', 30),
('prostatitis crónica', 30), ('prostatitis bacteriana', 30), ('epididimitis', 30);

-- ODONTOLOGÍA - AFECCIONES DENTALES COMPLEJAS
INSERT IGNORE INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('periodontitis agresiva', 23), ('periimplantitis', 23), ('alveolitis', 23),
('alvéolo seco', 23), ('osteítis', 23), ('infección post extracción', 23),
('absceso periapical', 23), ('absceso desmodontal', 23), ('absceso gingival', 23),
('fístula oral', 23), ('fístula intraoral', 23), ('absceso facial', 23),
('celulitis facial', 23), ('infección profunda', 23), ('Ludwig angina', 23),
('infección en piso boca', 23), ('bruxismo', 23), ('rechinar de dientes', 23),
('atrición dental', 23), ('erosión dental', 23), ('abrasión dental', 23),
('fluorosis dental', 23), ('mancha en dientes', 23), ('sensibilidad dental extrema', 23),
('hipersensibilidad', 23), ('radiografía muestra cavidad', 23), ('caries radicular', 23);

-- PSIQUIATRÍA - SÍNTOMAS PSIQUIÁTRICOS COMPLEJOS
INSERT IGNORE INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('alucinación audible', 25), ('oye voces', 25), ('psicosis', 25), ('delirio', 25),
('idea delirante', 25), ('creencia falsa fija', 25), ('delirio de persecución', 25),
('delirio de referencia', 25), ('delirio de grandeza', 25), ('delirio somático', 25),
('catatonia', 25), ('mutismo catatónico', 25), ('negativismo', 25), ('flexibilidad cérea', 25),
('estupor', 25), ('acinesia', 25), ('pobreza de movimiento', 25), ('abulia', 25),
('falta de voluntad', 25), ('anergia', 25), ('sin energía', 25), ('anhedonia severa', 25),
('no siente placer', 25), ('ideación suicida', 25), ('plan suicida', 25),
('comportamiento autolesivo', 25), ('automutilación', 25), ('comportamiento violento', 25),
('agresión', 25), ('agitación psicomotor', 25), ('síndrome neuroléptico maligno', 25);

-- PSICOLOGÍA CLÍNICA - SÍNDROMES PSICOLÓGICOS
INSERT IGNORE INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('trastorno de identidad disociativo', 24), ('personalidad múltiple', 24),
('trastorno de despersonalización', 24), ('desrealización', 24), ('disociación', 24),
('fuga disociativa', 24), ('amnesia disociativa', 24), ('amnesia psicógena', 24),
('catatonia psicógena', 24), ('síndrome de fatiga crónica', 24), ('SFC', 24),
('encefalomielitis miálgica', 24), ('EM', 24), ('fibromialgia psicosomática', 24),
('dolor generalizado crónico', 24), ('síndrome de dolor generalizado', 24),
('hipocondría severa', 24), ('fijación en enfermedad', 24), ('nomofobia', 24),
('miedo a estar sin teléfono', 24), ('ciberfobia', 24), ('miedo al internet', 24),
('nomofobia', 24), ('nomofobia severa', 24), ('síndrome de impostor', 24),
('baja autoestima severa', 24), ('perfeccionismo patológico', 24);

-- NUTRICIÓN Y DIETÉTICA - DESÓRDENES NUTRICIONALES
INSERT IGNORE INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('anorexia nerviosa', 26), ('bulimia nerviosa', 26), ('trastorno por atracón', 26),
('hiperfagia', 26), ('comer compulsivo', 26), ('pirofagia', 26), ('comer fuego', 26),
('pica', 26), ('geofargia', 26), ('comer tierra', 26), ('tricofagia', 26),
('comer cabello', 26), ('coprofagia', 26), ('comer heces', 26), ('sarcophagy', 26),
('albuminuria nutricional', 26), ('edema nutricional', 26), ('hinchazón por malnutrición', 26),
('dermatitis por deficiencia', 26), ('desigualdad nutritiva', 26), ('síndrome de realimentación', 26),
('realimentación peligrosa', 26), ('hipofosforemia', 26), ('fósforo bajo crítico', 26),
('hipokalemia crítica', 26), ('potasio bajo severo', 26), ('hipomagnesemia severa', 26),
('deficiencia de selenio', 26), ('deficiencia de cobre', 26), ('deficiencia de cinc', 26);

-- MEDICINA FAMILIAR - ATENCIÓN INTEGRAL
INSERT IGNORE INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('evaluación de riesgo cardiovascular', 35), ('screening metabólico', 35),
('programa de prevención', 35), ('educación en estilo de vida', 35),
('consejería sobre fumar', 35), ('abandono del tabaco', 35), ('cesación tabáquica', 35),
('consejería alcohólica', 35), ('reducción de alcohol', 35), ('abstinencia', 35),
('ejercicio prescrito', 35), ('programa de actividad física', 35), ('dieta prescrita', 35),
('programa de nutrición', 35), ('consejería psicosocial', 35), ('apoyo emocional', 35),
('consejería familiar', 35), ('terapia familiar', 35), ('mediación familiar', 35),
('control de cuidador', 35), ('evaluación de bienestar', 35), ('evaluación de funcionalidad', 35);

-- TRAUMATOLOGÍA - TRAUMA SEVERO
INSERT IGNORE INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('traumatismo craneoencefálico', 29), ('TCE severo', 29), ('conmoción cerebral', 29),
('contusión cerebral', 29), ('hemorragia epidural', 29), ('hematoma epidural', 29),
('hemorragia subdural', 29), ('hematoma subdural', 29), ('hemorragia subaracnoidea', 29),
('edema cerebral', 29), ('hernia cerebral', 29), ('hernia uncal', 29),
('daño axonal difuso', 29), ('DAD', 29), ('trauma torácico', 29),
('neumotórax', 29), ('hemotórax', 29), ('contusión pulmonar', 29),
('trauma abdominal', 29), ('ruptura hepática', 29), ('ruptura esplénica', 29),
('ruptura renal', 29), ('shock hipovolémico', 29), ('coagulopatía de traumatismo', 29);

-- REUMATOLOGÍA - ENFERMEDADES REUMATICAS SISTÉMICAS
INSERT IGNORE INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('vasculitis de vasos medios', 37), ('poliarteritis nodosa', 37), ('PAN', 37),
('granulomatosis', 37), ('granulomatosis con poliangeítis', 37), ('GPA', 37),
('microscopic polyangiitis', 37), ('MPA', 37), ('crioglobulinemia mixta', 37),
('enfermedad relacionada con IgA', 37), ('púrpura de Henoch-Schönlein', 37), ('HSP', 37),
('polimialgia reumática', 37), ('arteritis de células gigantes', 37), ('arteritis temporal', 37),
('síndrome antifosfolípido', 37), ('APS', 37), ('trombosis antifosfolípida', 37),
('deficiencia de complemento', 37), ('hipocomplementemia', 37), ('síndrome nefrítico post estreptocócico', 37),
('síndrome de superposición', 37), ('enfermedad mixta del tejido conectivo', 37), ('EMTC', 37);

-- FISIOTERAPIA Y REHABILITACIÓN - SECUELAS GRAVES
INSERT IGNORE INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('síndrome de confinamiento', 36), ('locked-in', 36), ('parálisis total consciente', 36),
('vegetativismo', 36), ('estado vegetativo', 36), ('estado mínimamente consciente', 36),
('síndrome de West', 36), ('espasmos infantiles', 36), ('síndrome de Lennox-Gastaut', 36),
('epilepsia refractaria', 36), ('epilepsia farmacorresistente', 36),
('distrofia muscular', 36), ('distrofia muscular de Duchenne', 36), ('DMD', 36),
('miopatía', 36), ('enfermedad muscular', 36), ('polimiositis', 36),
('dermatomiositis', 36), ('distrofia miotónica', 36), ('miotonía', 36),
('rigidez muscular sostenida', 36), ('contractura muscular', 36), ('fibrosis muscular', 36);

-- PEDIATRÍA NEONATAL - PATOLOGÍA NEONATAL SEVERA
INSERT IGNORE INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('síndrome de policitemia', 34), ('síndrome de hiperviscosidad', 34),
('síndrome de transfusión feto-fetal', 34), ('STFF', 34), ('gemelos trasudados', 34),
('síndrome de aspiración meconial', 34), ('SAM', 34), ('meconium ileus', 34),
('íleo meconial', 34), ('atresia biliar neonatal', 34), ('colestasis neonatal', 34),
('hepatitis neonatal', 34), ('infección TORCH', 34), ('toxoplasmosis congénita', 34),
('rubeola congénita', 34), ('citomegalovirus congénito', 34), ('CMV congénito', 34),
('herpes neonatal', 34), ('sífilis congénita', 34), ('VIH congénito', 34),
('cardiopatía congénita compleja', 34), ('transposición de grandes arterias', 34),
('drenaje venoso anómalo', 34), ('síndrome de corazón univentricular', 34);

-- OFTALMOLOGÍA AVANZADA
INSERT IGNORE INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('neovascularización corneal', 27), ('neovascularización retiniana', 27),
('rubeosis iris', 27), ('neoformación vascular', 27), ('cicatriz corneal', 27),
('leucoma corneal', 27), ('opacidad corneal', 27), ('queratinización', 27),
('limbal stem cell deficiency', 27), ('deficiencia de células madre limbares', 27),
('síndrome de Stevens-Johnson ocular', 27), ('necrólisis epidérmica tóxica', 27),
('ocular cicatricial pemfigoide', 27), ('pemfigoide ocular', 27),
('síndrome de Graft-versus-host ocular', 27), ('GVHD ocular', 27);

-- OTORRINOLARINGOLOGÍA AVANZADA
INSERT IGNORE INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('hipoplasia auditiva', 28), ('neuropatía auditiva', 28), ('síndrome de neuropatía auditiva', 28),
('SANA', 28), ('disincronía auditiva', 28), ('otosclerosis avanzada', 28),
('otoespongiosis', 28), ('colesteatoma congénito', 28), ('colesteatoma recurrente', 28),
('colesteatoma residual', 28), ('erosión ósea masiva', 28), ('osteítis', 28),
('petrositis', 28), ('inflamación de peña', 28), ('osteomielitis temporal', 28),
('síndrome de Wallenberg', 28), ('parálisis de pares craneales', 28);

SELECT COUNT(*) as total_sintomas FROM sintomas_especialidad;
SELECT e.nombre, COUNT(s.id) as sintomas FROM especialidades e 
LEFT JOIN sintomas_especialidad s ON e.id = s.especialidad_id 
GROUP BY e.id, e.nombre ORDER BY sintomas DESC;
