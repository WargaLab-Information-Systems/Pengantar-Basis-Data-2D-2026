UPDATE pasien 
SET no_telepon = '08111111111' 
WHERE id_pasien = 1; 
 
UPDATE dokter 
SET spesialis = 'Spesialis Anak'
WHERE id_dokter = 1; 
 
DELETE FROM rekam_medis 
WHERE id_rekam = 2;