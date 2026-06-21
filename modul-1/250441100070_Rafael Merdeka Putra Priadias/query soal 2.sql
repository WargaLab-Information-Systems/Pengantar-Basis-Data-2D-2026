CREATE DATABASE warung_madura; 
USE warung_madura; 
 
CREATE TABLE pelanggan_setia ( 
nomor_id INT PRIMARY KEY 
); 
 
ALTER TABLE pelanggan_setia 
MODIFY nomor_identitas VARCHAR(20); 
 
DESCRIBE pelanggan_setia; 
