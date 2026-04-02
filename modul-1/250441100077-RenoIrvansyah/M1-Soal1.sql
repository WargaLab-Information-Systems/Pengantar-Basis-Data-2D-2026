CREATE DATABASE perpustakaan_digital;

USE perpustakaan_digital;
  
  CREATE TABLE koleksi_langka (
  id_buku BIGINT PRIMARY KEY,
  judul VARCHAR(250),
  tahun_terbit YEAR,
  estimasi_harga DECIMAL);

DESCRIBE koleksi_langka;