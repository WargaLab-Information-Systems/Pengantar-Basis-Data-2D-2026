CREATE TABLE umpan_balik (
		id_feedback INT PRIMARY KEY,
		isi_komentar TEXT 
	);
	
DESCRIBE umpan_balik;

INSERT INTO umpan_balik (id_feedback, isi_komentar)
VALUES 
	(1, 'Bukunya sangat menarik saya pengen membeli lagi untuk manambah wawasan saya.'),
	(2, 'Bukunya sangat bagus');
	
SELECT * FROM umpan_balik;