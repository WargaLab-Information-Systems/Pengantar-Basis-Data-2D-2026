CREATE DATABASE Elibrary;
CREATE TABLE koleksi_angka(
id_buku BIGINT PRIMARY KEY,
judul VARCHAR(250),
tahun_terbit YEAR,
estimasi_harga DECIMAL(15,2)
);
DESCRIBE koleksi_angka;

CREATE TABLE pelanggan_setia(
nomor_identitas INT
);

DESCRIBE pelanggan_setia;

ALTER TABLE pelanggan_setia
MODIFY nomor_identitas VARCHAR(20);

CREATE TABLE transaksi_harian(
nama_barang VARCHAR(20),
harga_barang DECIMAL(10,2)
);

TRUNCATE TABLE transaksi_harian;
DROP TABLE transaksi_harian;

DESCRIBE transaksi_harian;

CREATE TABLE umpan_balik(
isi_komentar TEXT
);

ALTER TABLE umpan_balik
MODIFY isi_komentar VARCHAR(1000);
DESCRIBE umpan_balik;

