DROP TABLE rekam_medis;

CREATE TABLE rekam_medis (
  id INT AUTO_INCREMENT PRIMARY KEY,
  id_pasien INT,
  id_dokter INT,
  tanggal DATE,
  diagnosis VARCHAR(100),
  FOREIGN KEY (id_dokter) REFERENCES dokter(id_dokter) ON DELETE CASCADE,
  FOREIGN KEY (id_pasien) REFERENCES pasien(id_pasien) ON DELETE RESTRICT
);

DESCRIBE rekam_medis;

INSERT INTO rekam_medis (id_dokter, id_pasien, tanggal, diagnosa)
VALUES 
(1, 1, '2025-01-01', 'Flu'),
(2, 1, '2025-01-02', 'Demam');


INSERT INTO dokter (id_dokter, nama_dokter)
VALUES (1, 'Dr. Andi');

UPDATE rekam_medis
SET id_dokter = 1;


DELETE FROM dokter WHERE id_dokter= 1;

SELECT * FROM rekam_medis;