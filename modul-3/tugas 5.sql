SELECT nama_barang, harga_satuan, status_qc FROM inventaris_gudang_pusat
WHERE kategori <> 'furnitur' AND status_qc = 'lulus'
ORDER BY harga_satuan  DESC
LIMIT 3;