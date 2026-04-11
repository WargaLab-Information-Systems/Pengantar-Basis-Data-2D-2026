CREATE DATABASE ujian;

CREATE TABLE perpustakaan (
	id_buku INT PRIMARY KEY,
	judul VARCHAR (50)
);

CREATE TABLE peminjam (
	id_peminjam INT PRIMARY KEY,
	id_buku INT,
	nama VARCHAR (100),
	FOREIGN KEY id_buku REFERENCES perpustakaan (id_buku)
	ON DELETE RESTRICT 
);

DESCRIBE perpustakaan;

DESCRIBE peminjam;




