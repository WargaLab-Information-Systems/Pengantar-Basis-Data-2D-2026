CREATE DATABASE shopku;

USE shopku;

CREATE TABLE transaksi_harian (
id_transaksi INT, 
nominal INT);

DESCRIBE transaksi_harian;

INSERT INTO transaksi_harian VALUES (1, 5000);

SELECT*FROM transaksi_harian;

DROP TABLE transaksi_harian;

TRUNCATE TABLE transaksi_harian;

CREATE TABLE transaksi_harian_copy (
id_transaksi INT, 
nominal INT);

DESCRIBE transaksi_harian_copy;

INSERT INTO transaksi_harian_copy VALUES (1, 5000);

SELECT*FROM transaksi_harian_copy;

TRUNCATE TABLE transaksi_harian_copy;

SHOW TABLES;

