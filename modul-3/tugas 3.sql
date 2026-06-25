SELECT nama_barang, stok,
CASE 
 WHEN stok = 0 AND kategori = 'aksesoris' THEN 'urgent- restock segera'
 WHEN stok  < 10 AND kategori IN ('laptop','smartphone') THEN 'high priority'
 WHEN stok BETWEEN 10 AND 50 THEN 'medium'
 ELSE 'aman'
 END AS prioritas_restock
 FROM inventaris_gudang_pusat
 ORDER BY stok ASC;