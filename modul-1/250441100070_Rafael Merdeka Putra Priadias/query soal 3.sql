TRUNCATE 
 
CREATE DATABASE toko_rafael; 
USE toko_rafael 
 
CREATE TABLE transaksi_harian ( 
 
18 
 
id_transaksi INT PRIMARY KEY, 
nama_barang VARCHAR(120), 
jumlah_barang INT, 
berat_barang DECIMAL 
); 
 
INSERT INTO transaksi_harian (id_transaksi, 
nama_barang, jumlah_barang, berat_barang) 
VALUE (01, "sabun", 2, 2.5) 
 
SELECT * FROM transaksi_harian; 
 
TRUNCATE TABLE transaksi_harian; 
 
 
DROP 
 
CREATE DATABASE toko_rafael; 
USE toko_rafael 
 
CREATE TABLE transaksi_harian ( 
id_transaksi INT PRIMARY KEY, 
nama_barang VARCHAR(120), 
jumlah_barang INT, 
berat_barang DECIMAL 
); 
 
INSERT INTO transaksi_harian (id_transaksi, 
nama_barang, jumlah_barang, berat_barang) 
VALUE (01, "sabun", 2, 2.5) 
 
SELECT * FROM transaksi_harian; 
 
DROP TABLE transaksi_harian; 