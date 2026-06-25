UPDATE pasien
SET nomor_telpon = '08763536'
WHERE id_pasien = 1;

UPDATE dokter
SET splesialis = 'jantung'
WHERE id_dokter = 1;

DELETE FROM rekam_medis
WHERE id_rekam = 1;

