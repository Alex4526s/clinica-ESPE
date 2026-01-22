-- Agregar síntomas cardiovasculares a Cardiología
INSERT IGNORE INTO sintomas_especialidad (palabra_clave, especialidad_id) 
SELECT 'dolor pecho', id FROM especialidades WHERE nombre = 'Cardiología'
UNION ALL
SELECT 'dolor en el pecho', id FROM especialidades WHERE nombre = 'Cardiología'
UNION ALL
SELECT 'palpitaciones', id FROM especialidades WHERE nombre = 'Cardiología'
UNION ALL
SELECT 'latidos irregulares', id FROM especialidades WHERE nombre = 'Cardiología'
UNION ALL
SELECT 'taquicardia', id FROM especialidades WHERE nombre = 'Cardiología'
UNION ALL
SELECT 'presión en el pecho', id FROM especialidades WHERE nombre = 'Cardiología'
UNION ALL
SELECT 'falta de aire', id FROM especialidades WHERE nombre = 'Cardiología'
UNION ALL
SELECT 'disnea', id FROM especialidades WHERE nombre = 'Cardiología'
UNION ALL
SELECT 'mareo cardiovascular', id FROM especialidades WHERE nombre = 'Cardiología'
UNION ALL
SELECT 'hinchazón en piernas', id FROM especialidades WHERE nombre = 'Cardiología'
UNION ALL
SELECT 'edema', id FROM especialidades WHERE nombre = 'Cardiología'
UNION ALL
SELECT 'presión arterial alta', id FROM especialidades WHERE nombre = 'Cardiología'
UNION ALL
SELECT 'hipertensión', id FROM especialidades WHERE nombre = 'Cardiología'
UNION ALL
SELECT 'infarto', id FROM especialidades WHERE nombre = 'Cardiología'
UNION ALL
SELECT 'angina', id FROM especialidades WHERE nombre = 'Cardiología'
UNION ALL
SELECT 'soplo cardíaco', id FROM especialidades WHERE nombre = 'Cardiología'
UNION ALL
SELECT 'arritmia', id FROM especialidades WHERE nombre = 'Cardiología'
UNION ALL
SELECT 'fatiga al ejercitar', id FROM especialidades WHERE nombre = 'Cardiología'
UNION ALL
SELECT 'cansancio extremo', id FROM especialidades WHERE nombre = 'Cardiología'
UNION ALL
SELECT 'sudoración nocturna', id FROM especialidades WHERE nombre = 'Cardiología'
UNION ALL
SELECT 'dolor al respirar', id FROM especialidades WHERE nombre = 'Cardiología'
UNION ALL
SELECT 'pecho oprimido', id FROM especialidades WHERE nombre = 'Cardiología';
