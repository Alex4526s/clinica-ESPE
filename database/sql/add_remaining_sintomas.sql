USE clinica_espe_v2;

-- MEDICINA INTERNA - 50 sintomas
INSERT IGNORE INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('sindrome metabolico completo', 4), ('alteraciones metabolicas multiples', 4), 
('inflamacion sistemica cronica', 4), ('citocinas inflamatorias elevadas', 4),
('proteina C reactiva elevada', 4), ('marcadores de inflamacion', 4), ('velocidad de sedimentacion', 4),
('fiebre persistente', 4), ('fiebre recurrente', 4), ('fiebre de origen desconocido', 4),
('fiebre sin razon aparente', 4), ('hipertermia', 4), ('hipotermia', 4),
('choque septico', 4), ('respuesta inflamatoria sistemica', 4), ('sindrome de respuesta inflamatoria', 4),
('SIRS', 4), ('insuficiencia multiorganica', 4), ('fallo multiorganico', 4),
('colapso circulatorio', 4), ('colapso cardiovascular', 4), ('choque', 4),
('choque cardiogenico', 4), ('choque septico grave', 4), ('choque anafilactico', 4),
('vasodilatacion excesiva', 4), ('vasoconstriccion excesiva', 4), ('presion arterial inestable', 4),
('variaciones presion extremas', 4), ('arritmias graves', 4), ('alteracion del ritmo cardiaco', 4),
('syncope recurrente', 4), ('presincope recurrente', 4), ('mareos graves', 4),
('desorientacion temporal', 4), ('confusion intermitente', 4), ('alteracion del nivel de conciencia', 4),
('letargo', 4), ('estupor', 4), ('coma', 4),
('convulsiones', 4), ('crisis convulsivas recurrentes', 4), ('estado epileptico', 4),
('delirio', 4), ('alucinaciones', 4), ('ideas delirantes', 4),
('cambios psicologicos', 4), ('cambios de comportamiento', 4), ('personalidad alterada', 4),
('incapacidad funcional', 4), ('incapacidad total', 4), ('imposibilidad de actividades', 4);

-- TRAUMATOLOGÍA - 50 sintomas
INSERT IGNORE INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('trauma multiple grave', 29), ('traumatismo cerrado severo', 29), ('herida penetrante grave', 29),
('herida por arma blanca', 29), ('herida por arma fuego', 29), ('herida por explosion', 29),
('quemadura termica', 29), ('quemadura quimica', 29), ('quemadura electrica', 29),
('congelacion', 29), ('inmersion prolongada', 29), ('asfixia por trauma', 29),
('aspiracion de cuerpo extrano', 29), ('obstruccion de via aerea', 29), ('compromiso respiratorio', 29),
('neumotorax tension', 29), ('hemotorax masivo', 29), ('taponamiento cardiaco', 29),
('hemorragia interna', 29), ('hemorragia retroperitoneal', 29), ('hemorragia pelviana', 29),
('rotura visceral', 29), ('lesion de organo solido', 29), ('contusion visceral', 29),
('trauma craneoencefalico severo', 29), ('traumatismo craneo encefálico grave', 29), ('lesion cerebral', 29),
('edema cerebral post trauma', 29), ('hernia cerebral post trauma', 29), ('hematoma epidural', 29),
('hematoma subdural agudo', 29), ('hematoma subdural cronico', 29), ('hemorragia subaracnoidea', 29),
('contusion pulmonar', 29), ('distension pulmones', 29), ('barotrauma pulmonar', 29),
('laceración hepatica', 29), ('laceración esplenica', 29), ('laceración renal', 29),
('laceración de vejiga', 29), ('laceración intestinal', 29), ('laceración mesenterica', 29),
('shock hipovolemico post trauma', 29), ('coagulopatia post trauma', 29), ('acidosis post trauma', 29),
('hipotermia post trauma', 29), ('rabdomiolisis post trauma', 29), ('mioglobinuria post trauma', 29),
('insuficiencia renal post trauma', 29), ('fallo renal agudo post trauma', 29), ('contaminacion de herida', 29),
('riesgo de infeccion alta', 29), ('contaminacion ambiental', 29), ('necesidad de cirugia urgente', 29);

-- REUMATOLOGÍA - 50 sintomas
INSERT IGNORE INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('artritis erosiva', 37), ('artritis no erosiva', 37), ('artritis cronica progresiva', 37),
('artralgias multiples', 37), ('poliartritis simetrica', 37), ('monoartritis recurrente', 37),
('oligoartritis', 37), ('artritis en grandes articulaciones', 37), ('artritis en pequeñas articulaciones', 37),
('artritis de manos', 37), ('artritis de pies', 37), ('artritis de rodillas', 37),
('artritis de codos', 37), ('artritis de hombros', 37), ('artritis de caderas', 37),
('artritis temporomandibular', 37), ('artritis esternoclavicular', 37), ('artritis acromioclavicular', 37),
('inflamacion de tendones', 37), ('tenosinovitis', 37), ('tendinitis cronica', 37),
('bursitis recurrente', 37), ('bursitis cronica', 37), ('bursitis traumatica', 37),
('fasciitis plantar', 37), ('fascitis palmar', 37), ('fibromatosis', 37),
('fenomeno de Raynaud', 37), ('fenomeno de Raynaud primario', 37), ('fenomeno de Raynaud secundario', 37),
('escleroderma localizada', 37), ('escleroderma sistemica', 37), ('piel engrosada', 37),
('rigidez de dedos', 37), ('ulceras en dedos', 37), ('amputacion espontanea de dedos', 37),
('fotosensibilidad', 37), ('erupciones malares', 37), ('ulceras orales', 37),
('alopecia cicatricial', 37), ('alopecia no cicatricial', 37), ('aftas recurrentes', 37),
('linfadenopatia', 37), ('esplenomegalia', 37), ('hepatomegalia', 37),
('serositis', 37), ('pleuritis', 37), ('pericarditis', 37),
('nefritis lupica', 37), ('proteinuria', 37), ('hematuria', 37),
('neuropatia periferica autoimmune', 37), ('neuritis multiplex', 37), ('mononeuropatia multiplex', 37),
('manifestaciones neurologicas', 37), ('convulsiones por lupus', 37), ('psicosis lupica', 37);

-- FISIOTERAPIA Y REHABILITACIÓN - 50 sintomas
INSERT IGNORE INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('debilidad muscular severa', 36), ('atrofia muscular', 36), ('desgarro muscular', 36),
('tension muscular cronica', 36), ('rigidez muscular', 36), ('espasticidad severa', 36),
('contracturas articulares', 36), ('retracciones musculares', 36), ('fibrosis muscular', 36),
('cicatrices post quirurgicas', 36), ('adherencias post quirurgicas', 36), ('limitacion post quirurgica', 36),
('trauma de ligamentos', 36), ('rotura de ligamentos', 36), ('rotura de meniscos', 36),
('inestabilidad articular post trauma', 36), ('luxacion recurrente', 36), ('subluxacion recurrente', 36),
('edema post trauma', 36), ('hematoma muscular', 36), ('calcificacion heterotopica', 36),
('osificación heterotópica', 36), ('anquilosis articular', 36), ('rigidez articular', 36),
('limitacion de rango de movimiento', 36), ('extension limitada', 36), ('flexion limitada', 36),
('abduccion limitada', 36), ('aduccion limitada', 36), ('rotacion limitada', 36),
('dolor con movimiento activo', 36), ('dolor con movimiento pasivo', 36), ('dolor con movimiento resistido', 36),
('desequilibrio', 36), ('inestabilidad al caminar', 36), ('riesgo de caidas', 36),
('coordinacion deficiente', 36), ('incoordinacion', 36), ('dismetria', 36),
('disartria post ACV', 36), ('disfagia post ACV', 36), ('problemas de deglución', 36),
('incontinencia post lesion', 36), ('incontinencia vesical', 36), ('incontinencia fecal', 36),
('retraso en cicatrizacion', 36), ('herida que no cierra', 36), ('ulcera que no cicatriza', 36),
('infeccion de herida', 36), ('contaminacion de ulcera', 36), ('escaras', 36),
('ulceras por presion severas', 36), ('necrosis tisular', 36), ('gangrena', 36),
('necesidad de asistencia total', 36), ('dependencia funcional total', 36), ('confinamiento', 36);

SELECT COUNT(*) as total_sintomas FROM sintomas_especialidad;
SELECT COUNT(DISTINCT especialidad_id) as especialidades_con_sintomas FROM sintomas_especialidad;
