CREATE DATABASE e_library;

CREATE TABLE koleksi_langka (
id_buku BIGINT PRIMARY KEY,
judul VARCHAR(250),
tahun_terbit YEAR,
estimasi DECIMAL(10, 2)
);

DESCRIBE koleksi_langka;