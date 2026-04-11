INSERT INTO dokter VALUES 
(1, 'Dr. Andi', 'Umum'),
(2, 'Dr. Rahman', 'Gigi');

INSERT INTO pasien VALUES
(1, 'Sitti', '2007-05-04', '08123456789'),
(2, 'Mala', '2006-09-03', '08234567890');

INSERT INTO rekam_medis VALUES
(1,1,1, '2026-04-15', 'Flu'),
(2,2,2, '2026-03-16', 'Sakit gigi');


SELECT * FROM rekam_medis;
SELECT * FROM dokter;
SELECT * FROM pasien;

UPDATE pasien 
SET no_telpon = '082123454522'
WHERE id_pasien = 1;

UPDATE pasien 
SET no_telpon = '082331134432'
WHERE id_pasien = 2;

UPDATE dokter
SET spesialis = 'Telinga'
WHERE id_dokter = 2;

DELETE FROM rekam_medis
WHERE id_rekaman = 1;