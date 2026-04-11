CREATE TABLE dokter (
	id_dokter INT PRIMARY KEY,
	nama_dokter VARCHAR (100),
	spesialis VARCHAR (100)
);

CREATE TABLE pasien (
	id_pasien INT PRIMARY KEY,
	nama_pasien VARCHAR (100),
	tanggal_lahir DATE,
	no_telpon VARCHAR (15)
);

CREATE TABLE rekam_medis (
	id_rekaman INT PRIMARY KEY,
	id_dokter INT,
	id_pasien INT,
	tanggal_periksa DATE,
	diagnosis TEXT,
	FOREIGN KEY (id_pasien) REFERENCES pasien(id_pasien)
	ON DELETE RESTRICT ,
	FOREIGN KEY (id_dokter) REFERENCES dokter(id_dokter)
	ON DELETE RESTRICT 
);


DESCRIBE dokter;
DESCRIBE pasien;
DESCRIBE rekam_medis;




