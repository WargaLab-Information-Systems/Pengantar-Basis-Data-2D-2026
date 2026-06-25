SELECT * FROM inventaris_gudang_pusat
WHERE lokasi_rak LIKE 'b%' AND harga_satuan NOT BETWEEN 1000000 AND 5000000 AND kategori <> 'monitor';