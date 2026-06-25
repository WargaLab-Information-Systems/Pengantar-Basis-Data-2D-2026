CREATE DATABASE penjualan;

CREATE TABLE pelanggan_setia(
identitas INT
);

ALTER TABLE pelanggan_setia
MODIFY identitas VARCHAR(20);

DESCRIBE pelanggan_setia;
