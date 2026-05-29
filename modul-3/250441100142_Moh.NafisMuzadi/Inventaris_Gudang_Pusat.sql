CREATE DATABASE db_inventaris;

USE db_inventaris;

CREATE TABLE inventaris_gudang_pusat (
	id_barang INTEGER PRIMARY KEY,
	nama_barang VARCHAR(100),
	kode_sku VARCHAR(50),
	kategori VARCHAR(50),
	harga_satuan DECIMAL,
	stok INTEGER,
	lokasi_rak VARCHAR(20),
	status_qc VARCHAR(20)
);

INSERT INTO inventaris_gudang_pusat 
(id_barang, nama_barang, kode_sku, kategori, harga_satuan, stok, lokasi_rak, status_qc)
VALUES
(101, 'Gaming Laptop G5', 'ELEC-442-X', 'Laptop', 15500000, 12, 'A-01', 'Lulus'),
(102, 'Wireless Mouse', 'ACC-101-Y', 'Aksesoris', 250000, 150, NULL, 'Lulus'),
(103, 'Ultra Wide Monitor', 'ELEC-881-X', 'Monitor', 7200000, 0, 'B-05', 'Pending'),
(104, 'Mechanical Keyboard', 'ACC-202-Z', 'Aksesoris', 1200000, 45, 'B-02', 'Lulus'),
(105, 'Office Chair Pro', 'FURN-991-P', 'Furniture', 3500000, 8, 'C-01', NULL),
(106, 'USB-C Hub 10-in-1', 'ACC-303-X', 'Aksesoris', 850000, 0, NULL, 'Gagal'),
(107, 'Smartphone Z Flip', 'ELEC-112-Y', 'Smartphone', 14000000, 4, 'A-03', 'Lulus'),
(108, 'Standing Desk', 'FURN-882-Q', 'Furniture', 5000000, 15, 'C-02', 'Lulus'),
(109, 'Headset Gaming RGB', 'ACC-404-X', 'Aksesoris', 1100000, 25, NULL, 'Lulus'),
(110, 'Thunderbolt Cable', 'ACC-505-Z', 'Aksesoris', 450000, 100, 'B-03', 'Lulus');

SELECT * FROM inventaris_gudang_pusat;

select nama_barang, kategori, kode_sku
 from inventaris_gudang_pusat
  where lokasi_rak is null
  and stok > 0 
  and status_qc = 'Lulus';


select kode_sku
 from inventaris_gudang_pusat
  where kode_sku like '%ELEC%'
  AND kode_sku like '%X'
  and harga_satuan > 5000000;


select nama_barang, stok,
case
 when stok = 0 and kategori in ('Aksesoris') then 'Urgent - Restock segera'
 when stok < 10 and stok > 0 and kategori in ('Laptop', 'Smartphone') then 'High priority'
 when stok between 10 and 50 then 'medium'
 else 'aman'
 end as prioritas_restock
 from inventaris_gudang_pusat
 order by stok asc;
 
 
 select *
 from inventaris_gudang_pusat
 where lokasi_rak like 'B%'
  and harga_satuan not between 1000000 and 5000000
  and kategori <> 'Monitor';
  
  
 select nama_barang, harga_satuan, status_qc
 from inventaris_gudang_pusat
 where kategori <> 'Furniture'
  and status_qc = 'lulus'
 order by harga_satuan desc
 limit 3;
  






