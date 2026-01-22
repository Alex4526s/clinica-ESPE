USE clinica_espe_v2;
TRUNCATE TABLE sintomas_especialidad;
INSERT IGNORE INTO sintomas_especialidad (palabra_clave, especialidad_id) VALUES 
('ronchas', 40), ('tos', 46), ('dolor pecho', 35), ('dolor estomago', 47),
('fiebre', 1), ('resfriado', 1), ('gripe', 1), ('mareo', 1), ('cansancio', 1), 
('debilidad', 1), ('nausea', 1), ('vomito', 1), ('diarrea', 1), ('dolor cabeza', 1),
('ojo rojo', 41), ('ojo seco', 41), ('dolor ojo', 41), ('lagana', 41),
('dolor garganta', 42), ('garganta inflamada', 42), ('congestion nasal', 42), ('ronquera', 42),
('dolor muela', 36), ('absceso dental', 36), ('caries', 36), ('encia inflamada', 36),
('corazon acelerado', 35), ('palpitaciones', 35), ('presion alta', 35), ('presion baja', 35),
('tos seca', 46), ('falta aire', 46), ('respiracion dificil', 46), ('asma', 46),
('acidez', 47), ('reflujo', 47), ('indigestion', 47), ('gastritis', 47),
('sarpullido', 40), ('picazon piel', 40), ('eczema', 40), ('psoriasis', 40), ('hongo', 40),
('alergia', 64), ('alergico', 64), ('reaccion alergica', 64), ('anafilaxis', 64),
('dolor rodilla', 45), ('esguince', 45), ('fractura', 45), ('golpe', 45), ('torcedura', 45),
('dolor riñones', 52), ('infeccion urinaria', 52), ('sangre orina', 52),
('depresion', 51), ('ansiedad', 51), ('insomnio', 51), ('stress', 51),
('dolor articulaciones', 48), ('artritis', 48), ('inflamacion articular', 48),
('bebe enfermo', 2), ('nino enfermo', 2), ('fiebre infantil', 2), ('llanto bebe', 2),
('dolor cabeza severo', 3), ('migrania', 3), ('convulsiones', 3), ('temblores', 3);
