UPDATE pasien
SET no_telepon = '08999999999'
WHERE id_pasien = 1;

UPDATE dokter
SET spesialisasi = 'Spesialis Anak'
WHERE id_dokter = 1;

DELETE FROM rekam_medis
WHERE id_rekam = 2;





SELECT*FROM pasien;
SELECT*FROM dokter;
SELECT*FROM rekam_medis;

