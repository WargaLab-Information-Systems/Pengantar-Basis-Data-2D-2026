USE klinik;

CREATE TABLE dokter (
  id_dokter INT PRIMARY KEY,
  nama_dokter VARCHAR (100),
  spesialisasi VARCHAR (100)
);

CREATE TABLE pasien (
  id_pasien INT PRIMARY KEY,
  nama_pasien VARCHAR(100),
  tanggal_lahir DATE,
  no_telepon VARCHAR (15)
);

DROP TABLE rekam_medis;
CREATE TABLE rekam_medis(
  id_rekam INT PRIMARY KEY,
  id_pasien INT,
  id_dokter INT,
  tanggal_periksa DATE,
  diagnosis TEXT,
FOREIGN KEY (id_pasien) REFERENCES pasien (id_pasien) ON DELETE RESTRICT,
FOREIGN KEY (id_dokter) REFERENCES dokter (id_dokter) ON DELETE RESTRICT
);
DESCRIBE rekam_medis;

INSERT INTO dokter VALUES
(1, 'Dr. kaila', 'Umum'),
(2, 'Dr. najawa', 'Gigi');
SELECT * FROM dokter;

INSERT INTO pasien VALUES
(1, 'Anto', '1981-10-15', '08123456789'),
(2, 'Evi', '1982-06-27', '08987654321');
SELECT * FROM pasien ;

INSERT INTO rekam_medis VALUES
(1, 1, 1, '2025-01-01', 'Flu'),
(2, 2, 2, '2025-01-02', 'Sakit gigi');
SELECT * FROM rekam_medis;

UPDATE pasien 
SET no_telepon = '085784550699'
WHERE id_pasien = 1;

UPDATE dokter 
SET spesialisasi = 'Mata'
WHERE id_dokter = 2;

DELETE FROM rekam_medis
WHERE id_rekam= 1;

SELECT * FROM rekam_medis;


