UPDATE pasien
SET no_telepon = '081111111111'
WHERE id_pasien = 1;

UPDATE dokter
SET spesialisasi = 'Penyakit Dalam'
WHERE id_dokter = 1;

DELETE FROM rekam_medis
WHERE id_rekam = 2;

SELECT * FROM rekam_medis;