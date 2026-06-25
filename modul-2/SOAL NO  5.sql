CREATE TABLE rekam_medis (
id_rekam INT PRIMARY KEY,
id_dokter INT,
id_pasien INT,
tanggal_periksa DATE,
diagnosis TEXT,
FOREIGN KEY (id_dokter) 
 REFERENCES dokter (id_dokter)
 ON DELETE RESTRICT,
FOREIGN KEY (id_pasien) 
 REFERENCES pasien (id_pasien)
 ON DELETE RESTRICT
);

TRUNCATE TABLE rekam_medis;
TRUNCATE TABLE pasien;


