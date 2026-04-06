CREATE TABLE pelanggan_setia (
		no_identitas INT,
		nama_pelanggan VARCHAR (20)	
   );
   
ALTER TABLE pelanggan_setia
MODIFY no_identitas VARCHAR (20);

DESCRIBE pelanggan_setia;

INSERT INTO pelanggan_setia (no_identitas, nama_pelanggan)
VALUES 
	(1, 'Anam'),
	(2, 'andi');
	
SELECT * FROM pelanggan_setia;