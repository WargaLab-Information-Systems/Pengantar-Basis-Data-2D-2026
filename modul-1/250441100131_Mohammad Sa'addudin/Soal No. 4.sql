CREATE DATABASE komentar_pengguna;

CREATE TABLE umpan_balik (
	id_umpan BIGINT PRIMARY KEY AUTO_INCREMENT,
	isi_komentar TEXT
);

DESCRIBE umpan_balik;