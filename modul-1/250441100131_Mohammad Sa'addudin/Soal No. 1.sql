CREATE DATABASE koleksi_angka; 
CREATE TABLE koleksi_langka ( 
id_buku BIGINT UNSIGNED NOT NULL AUTO_INCREMENT, 
    judul VARCHAR(250) NOT NULL, 
    tahun_terbit YEAR NOT NULL, 
    estimasi_harga DECIMAL(18, 4) NOT NULL, 
    PRIMARY KEY (id_buku) 
); 
 
DESCRIBE Koleksi_langka 