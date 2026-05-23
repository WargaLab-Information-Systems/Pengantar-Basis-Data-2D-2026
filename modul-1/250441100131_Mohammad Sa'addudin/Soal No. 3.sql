CREATE DATABASE administrator; 
 
CREATE TABLE transaksi_harian ( 
 id_transaksi BIGINT PRIMARY KEY, 
 total_harga DECIMAL (15,2) 
); 
 
DROP TABLE transaksi_harian; 
TRUNCATE TABLE transaksi_harian; 
 
DESCRIBE transaksi_harian 