DROP TABLE rekam_medis;

CREATE TABLE rekam_medis (
 id INT AUTO_INCREMENT PRIMARY KEY,
 id_pasien INT,
 id_dokter INT,
 tanggal DATE,
 diagnosa VARCHAR(100),
 FOREIGN KEY (id_dokter) REFERENCES dokter(id_dokter) ON DELETE RESTRICT,
 FOREIGN KEY (id_pasien) REFERENCES pasien(id_pasien) ON DELETE RESTRICT
);

TRUNCATE TABLE rekam_medis;
