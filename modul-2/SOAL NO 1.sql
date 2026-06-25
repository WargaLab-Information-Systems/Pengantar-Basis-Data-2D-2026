CREATE DATABASE klinik_sehat_bersama;

CREATE TABLE dokter (
id_dokter INT PRIMARY KEY,
nama_dokter VARCHAR(50),
splesialis VARCHAR(50)
);

CREATE TABLE pasien (
id_pasien INT PRIMARY KEY,
nama_pasien VARCHAR(50),
tanggal_lahir DATE,
nomor_telpon VARCHAR(12)
);

CREATE TABLE rekam_medis (
id_rekam INT PRIMARY KEY,
id_pasien INT,
id_dokter INT,
tanggal_periksa DATE,
diagnosis TEXT,
FOREIGN KEY (id_pasien)
 REFERENCES pasien (id_pasien)
 ON DELETE RESTRICT,
FOREIGN KEY (id_dokter)
 REFERENCES dokter (id_dokter)
 ON DELETE RESTRICT
);

DROP TABLE rekam_medis;