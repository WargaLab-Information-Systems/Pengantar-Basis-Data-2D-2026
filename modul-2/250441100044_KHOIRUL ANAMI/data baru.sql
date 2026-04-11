
INSERT INTO rekam_medis VALUES
(1, 1, 1, '2024-01-10', 'Flu'),
(2, 2, 1, '2024-01-11', 'Batuk');


SELECT * FROM rekam_medis;

DELETE FROM dokter 
WHERE id_dokter = 1;