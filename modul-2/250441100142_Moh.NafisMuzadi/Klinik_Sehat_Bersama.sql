CREATE DATABASE db_puskesmas;

USE db_puskesmas;

CREATE TABLE obat (
 id_obat INT PRIMARY KEY,
 nama_obat VARCHAR(100),
 kategori VARCHAR(50),
 harga INT,
 stok INT,
 supplier VARCHAR(50),
 deskripsi TEXT
);

INSERT INTO obat (id_obat, nama_obat, kategori, harga, stok, supplier,
deskripsi) VALUES
(1, 'Paracetamol', 'Analgesik', 5000, 100, 'Kimia Farma', 'Pereda nyeri'),
(2, 'Amoxicillin', 'Antibiotik', 15000, 8, 'Indofarma', 'Infeksi'),
(3, 'Vitamin C', 'Vitamin', 25000, 50, 'Enervon', NULL),
(4, 'Amoxsan', 'Antibiotik', 18000, 12, 'Indofarma', 'Infeksi berat'),
(5, 'Antasida', 'Antasida', 3000, 200, 'Kimia Farma', NULL),
(6, 'Cetirizine', 'Antihistamin', 12000, 5, 'Dexa Medica', 'Obat alergi');


select * from obat;
select nama_obat, harga from obat;

select *nama_obat, harga,
from obat where harga > 10000;

select nama_obat, harga, stok,
from obat where harga > 12000 and stok < 10;

select * from obat where nama_obat like '%amox%';

select * from obat
where kategori in ('Analgesik', 'Vitamin');


select * from obat
where harga between 5000 and 15000;

select * from obat 
where deskripsi is null;

select distinct supplier from obat;

select * from obat order by harga desc limit 3;

select nama_obat, stok,
case 
when stok >= 50 then 'aman'
when stok >= 10 then 'waspada'
else 'kritis'
end as status_stok
from obat;





