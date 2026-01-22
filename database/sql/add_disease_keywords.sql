-- Agregar nombres de enfermedades por especialidad
USE clinica_espe_v2;

-- DERMATOLOGIA (ID=40)
INSERT INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('eczema cronico', 40), ('psoriasis', 40), ('dermatitis seborreica', 40),
('acne quistico', 40), ('rosacea', 40), ('impetigo', 40),
('urticaria cronica', 40), ('vitiligo', 40), ('alopecia areata', 40),
('herpes zoster', 40), ('verrugas virales', 40), ('onicomicosis', 40),
('melanoma cutaneo', 40);

-- OFTALMOLOGIA (ID=41)
INSERT INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('cataratas', 41), ('glaucoma', 41), ('degeneracion macular', 41),
('retinopatia diabetica', 41), ('ojo seco', 41), ('queratitis', 41),
('uveitis', 41), ('conjuntivitis alergica', 41), ('blefaritis cronica', 41),
('orzuelo recurrente', 41), ('desprendimiento de retina', 41);

-- OTORRINOLARINGOLOGIA (ID=42)
INSERT INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('sinusitis cronica', 42), ('rinitis alergica', 42), ('otitis media', 42),
('otitis externa', 42), ('hipoacusia', 42), ('vertigo periferico', 42),
('amigdalitis cronica', 42), ('desviacion del tabique', 42), ('polipos nasales', 42);

-- GINECOLOGIA (ID=43)
INSERT INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('miomas uterinos', 43), ('ovario poliquistico', 43), ('endometriosis', 43),
('sindrome premenstrual severo', 43), ('enfermedad inflamatoria pelvica', 43),
('infeccion por vph', 43), ('quiste ovarico', 43), ('cervicitis cronica', 43),
('menopausia sintomatica', 43), ('fertilidad', 43);

-- PEDIATRIA (ID=44)
INSERT INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('bronquiolitis', 44), ('varicela', 44), ('sarampion', 44),
('otitis infantil recurrente', 44), ('faringitis estreptococica', 44), ('gastroenteritis viral', 44),
('parasitos intestinales', 44), ('asma infantil', 44), ('dermatitis del panal', 44),
('convulsiones febriles', 44);

-- TRAUMATOLOGIA (ID=45)
INSERT INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('fractura de femur', 45), ('fractura de radio', 45), ('rotura de ligamento cruzado', 45),
('lesion meniscal', 45), ('tendinitis aquilea', 45), ('bursitis', 45),
('luxacion de hombro', 45), ('fascitis plantar', 45), ('sindrome tunel carpiano', 45),
('cervicalgia', 45);

-- NEUMOLOGIA (ID=46)
INSERT INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('neumonia', 46), ('bronquitis cronica', 46), ('epoc', 46),
('asma moderada', 46), ('embolia pulmonar', 46), ('fibrosis pulmonar', 46),
('pleuritis', 46), ('covid 19', 46), ('influenza grave', 46), ('sarcoidosis pulmonar', 46);

-- GASTROENTEROLOGIA (ID=47)
INSERT INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('gastritis cronica', 47), ('ulcera peptica', 47), ('reflujo gastroesofagico', 47),
('pancreatitis aguda', 47), ('colecistitis', 47), ('calculos biliares', 47),
('colitis ulcerosa', 47), ('enfermedad de crohn', 47), ('hepatitis cronica', 47),
('esteatosis hepatica', 47), ('gastroenteritis', 47);

-- REUMATOLOGIA (ID=48)
INSERT INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('espondilitis anquilosante', 48), ('artritis psoriasica', 48), ('polimialgia reumatica', 48),
('fenomeno de raynaud', 48), ('sindrome antifosfolipido', 48), ('vasculitis reumatoide', 48),
('esclerodermia', 48);

-- ENDOCRINOLOGIA (ID=49)
INSERT INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('diabetes tipo 1', 49), ('diabetes tipo 2', 49), ('hipotiroidismo', 49),
('hipertiroidismo', 49), ('enfermedad de graves', 49), ('enfermedad de addison', 49),
('sindrome de cushing', 49), ('acromegalia', 49), ('feocromocitoma', 49),
('osteoporosis', 49), ('hiperprolactinemia', 49);

-- ONCOLOGIA (ID=50)
INSERT INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('cancer de mama', 50), ('cancer de pulmon', 50), ('cancer de colon', 50),
('cancer de prostata', 50), ('cancer gastrico', 50), ('melanoma', 50),
('leucemia', 50), ('linfoma', 50), ('sarcoma', 50), ('metastasis', 50),
('tumor cerebral', 50);

-- PSIQUIATRIA (ID=51)
INSERT INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('trastorno depresivo mayor', 51), ('trastorno bipolar', 51), ('esquizofrenia', 51),
('trastorno obsesivo compulsivo', 51), ('trastorno de estres postraumatico', 51), ('tdah', 51),
('trastorno limite de la personalidad', 51), ('trastorno de ansiedad generalizada', 51),
('insomnio cronico', 51), ('abuso de sustancias', 51);

-- UROLOGIA (ID=52)
INSERT INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('litiasis renal', 52), ('hiperplasia prostatica benigna', 52), ('prostatitis cronica', 52),
('cistitis recurrente', 52), ('incontinencia urinaria', 52), ('disfuncion erectil', 52),
('varicocele', 52), ('fimosis', 52), ('vejiga hiperactiva', 52), ('uretritis', 52);

-- INFECTOLOGIA (ID=53)
INSERT INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('vih', 53), ('sida', 53), ('hepatitis viral', 53), ('tuberculosis activa', 53),
('malaria', 53), ('dengue', 53), ('zika', 53), ('chikungunya', 53),
('covid 19 grave', 53), ('fiebre tifoidea', 53), ('mononucleosis', 53),
('candidiasis sistemica', 53), ('sepsis', 53);

-- RADIOLOGIA (ID=54)
INSERT INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('nodule pulmonar en tac', 54), ('masa abdominal en tac', 54), ('microcalcificaciones en mama', 54),
('fractura vista en radiografia', 54), ('hemorragia cerebral en tac', 54),
('trombo en angiotac', 54), ('lesion hepatica en resonance', 54), ('hematoma subdural', 54);

-- CIRUGIA GENERAL (ID=55)
INSERT INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('apendicitis aguda', 55), ('hernia inguinal', 55), ('hernia umbilical', 55),
('colecistitis calculosa', 55), ('oclusion intestinal', 55), ('peritonitis', 55),
('absceso abdominal', 55), ('fistula perianal', 55), ('trauma abdominal', 55),
('cirugia bariatrica', 55);

-- ANESTESIOLOGIA (ID=56)
INSERT INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('evaluacion preoperatoria', 56), ('riesgo anestesico asa', 56), ('dolor post operatorio', 56),
('analgesia epidural', 56), ('bloqueo nervioso', 56), ('sedacion consciente', 56),
('reaccion adversa a anestesia', 56), ('control de dolor cronico', 56);

-- NEFROLOGIA (ID=57)
INSERT INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('insuficiencia renal cronica', 57), ('sindrome nefrotico', 57), ('glomerulonefritis', 57),
('pielonefritis', 57), ('proteinuria', 57), ('hematuria persistente', 57),
('hiperpotasemia', 57), ('dialisis', 57), ('trasplante renal', 57);

-- HEMATOLOGIA (ID=58)
INSERT INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('anemia ferropenica', 58), ('anemia hemolitica', 58), ('trombocitopenia', 58),
('hemofilia', 58), ('coagulopatia', 58), ('trombosis venosa profunda', 58),
('leucemia mieloide cronica', 58), ('linfoma no hodgkin', 58), ('mieloma multiple', 58),
('anemia aplastica', 58);

-- FISIOTERAPIA (ID=59)
INSERT INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('lumbalgia mecanica', 59), ('cervicalgia cronica', 59), ('hombro congelado', 59),
('tendinitis del manguito rotador', 59), ('esguince cronico', 59), ('escoliosis', 59),
('rehabilitacion post accidente cerebrovascular', 59), ('lesion medular', 59),
('reeducacion de la marcha', 59), ('dolor cronico musculoesqueletico', 59);

-- PROCTOLOGIA (ID=60)
INSERT INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('hemorroides', 60), ('fisura anal', 60), ('fistula perianal', 60),
('absceso perianal', 60), ('prolapso rectal', 60), ('incontinencia fecal', 60),
('prurito anal', 60), ('condilomas anales', 60), ('sangrado rectal', 60);

-- OFTALMOLOGIA PEDIATRICA (ID=61)
INSERT INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('estrabismo infantil', 61), ('ambliopia', 61), ('conjuntivitis infantil', 61),
('obstruccion del conducto lagrimal', 61), ('retinopatia del prematuro', 61), ('catarata congenita', 61),
('glaucoma congenito', 61), ('miopia infantil', 61), ('hipermetropia', 61), ('astigmatismo infantil', 61);

-- CIRUGIA PLASTICA (ID=62)
INSERT INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('rinoplastia', 62), ('blefaroplastia', 62), ('liposuccion', 62),
('abdominoplastia', 62), ('reconstruccion mamaria', 62), ('tratamiento de quemaduras', 62),
('injerto de piel', 62), ('cicatriz queloide', 62), ('otoplastia', 62);

-- MEDICINA DEPORTIVA (ID=63)
INSERT INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('lesion de ligamentos', 63), ('tendinitis rotuliana', 63), ('periostitis tibial', 63),
('sobrecarga muscular', 63), ('fascitis plantar', 63), ('lesion de menisco', 63),
('fractura por estres', 63), ('conmocion cerebral deportiva', 63), ('recuperacion deportiva', 63);

-- ALERGOLOGIA (ID=64)
INSERT INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('rinitis alergica', 64), ('asma alergica', 64), ('dermatitis atopica', 64),
('alergia a alimentos', 64), ('alergia a medicamentos', 64), ('urticaria cronica', 64),
('anafilaxia', 64), ('alergia a picaduras', 64);

-- NUTRICION (ID=65)
INSERT INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('obesidad', 65), ('desnutricion', 65), ('deficiencia de vitaminas', 65),
('hipercolesterolemia', 65), ('intolerancia a la lactosa', 65), ('celiaquia', 65),
('malnutricion', 65), ('soporte nutricional', 65);

-- PODOLOGIA (ID=66)
INSERT INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('pie diabetico', 66), ('juanetes', 66), ('fascitis plantar podologia', 66),
('onicomicosis podologia', 66), ('una encarnada', 66), ('verruga plantar', 66),
('callosidades', 66), ('espolon calcaneo', 66);

-- AUDIOLOGIA (ID=67)
INSERT INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('hipoacusia neurosensorial', 67), ('perdida auditiva subita', 67), ('otosclerosis', 67),
('tinnitus cronico', 67), ('vertigo de meniere', 67), ('implante coclear', 67),
('uso de audifonos', 67), ('tapon de cerumen', 67);

-- ESTOMATOLOGIA (ID=68)
INSERT INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('estomatitis', 68), ('aftas orales', 68), ('candidiasis oral', 68),
('leucoplasia oral', 68), ('lichen plano oral', 68), ('halitosis severa', 68),
('glositis', 68), ('xerostomia', 68), ('ulceras en boca', 68);

-- VACUNOLOGIA (ID=69)
INSERT INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('calendario de vacunas', 69), ('refuerzo de tetanos', 69), ('vacuna influenza', 69),
('vacuna covid', 69), ('vacuna neumococo', 69), ('vacuna hepatitis b', 69),
('vacuna varicela', 69), ('vacuna vph', 69), ('vacuna fiebre amarilla', 69);

-- TOXICOLOGIA (ID=70)
INSERT INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('intoxicacion por farmacos', 70), ('sobredosis', 70), ('intoxicacion por alcohol', 70),
('intoxicacion por monoxido', 70), ('envenenamiento por alimentos', 70), ('mordedura de serpiente', 70),
('intoxicacion por plaguicidas', 70), ('inhalacion de gases', 70), ('quemadura quimica', 70);

-- NEUMOLOGIA PEDIATRICA (ID=71)
INSERT INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('asma pediatrica', 71), ('bronquiolitis', 71), ('neumonia infantil', 71),
('tos ferina', 71), ('fibrosis quistica', 71), ('apnea del sueno infantil', 71),
('displasia broncopulmonar', 71), ('aspiracion de cuerpo extrano', 71);

-- CARDIOLOGIA PEDIATRICA (ID=72)
INSERT INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('soplo cardiaco', 72), ('cardiopatia congenita', 72), ('coartacion de aorta', 72),
('defecto del septo', 72), ('arrhythmia pediatrica', 72), ('cianosis en recien nacido', 72),
('sincope en ejercicio', 72), ('taquicardia supraventricular', 72);

-- GASTROENTEROLOGIA PEDIATRICA (ID=73)
INSERT INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('reflujo infantil', 73), ('diarrea cronica infantil', 73), ('enfermedad celiaca', 73),
('invaginacion intestinal', 73), ('alergia a la proteina de la leche', 73),
('hepatitis a infantil', 73), ('colitis alergica', 73), ('parasitos en ninos', 73);

-- OFTALMOLOGIA QUIRURGICA (ID=74)
INSERT INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES
('cirugia de catarata', 74), ('vitrectomia', 74), ('queratoplastia', 74),
('lasik', 74), ('prk', 74), ('reparacion de desprendimiento de retina', 74),
('trabeculectomia', 74), ('correccion de estrabismo', 74), ('implante de lente intraocular', 74);

-- Resumen de conteo
SELECT e.id, e.nombre, COUNT(s.id) AS total_sintomas
FROM especialidades e
LEFT JOIN sintomas_especialidad s ON e.id = s.especialidad_id
GROUP BY e.id, e.nombre
ORDER BY total_sintomas DESC, e.id;
