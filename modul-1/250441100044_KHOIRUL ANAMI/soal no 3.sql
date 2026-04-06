CREATE TABLE transaksi_harian (
		id_transaksi INT PRIMARY KEY,
		total_harga DECIMAL (10,2)
	);
	
DESCRIBE transaksi_harian;

INSERT INTO transaksi_harian(id_transaksi, total_harga)
VALUES 
	(1, 5000.00),
	(2, 6000.00);
	
SELECT * FROM transaksi_harian;
