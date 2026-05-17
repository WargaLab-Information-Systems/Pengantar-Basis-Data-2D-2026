INSERT INTO dokter VALUES
(1, 'Dr. Andi', 'Umum'),
(2, 'Dr. Sinta', 'Gigi');

INSERT INTO pasien VALUES
(1, 'Budi', '2000-05-10', '08123456789'),
(2, 'Sari', '1999-08-15', '08234567890');

INSERT INTO rekam_medis VALUES
(1, 1, 1, '2026-04-01', 'Demam'),
(2, 2, 2, '2026-04-02', 'Sakit gigi');



INSERT INTO rekam_medis VALUES
(3, 1, 99, '2026-04-03', 'Flu');

SELECT*FROM pasien;
SELECT*FROM dokter;
SELECT*FROM rekam_medis;