INSERT INTO dokter (id_dokter,nama_dokter,spesialisasi)VALUES 
(1,'Dr. Andi','Umum'),
(2,'Dr. Sinta','Gigi');

INSERT INTO pasien (id_dokter,nama_dokter,spesialisasi) VALUES
(1,'Budi','2000-05-10','081234567890'),
(2,'Ani','1998-09-21','082345678901');


INSERT INTO rekam_medis (id_rekam,id_pasien,id_dokter,tanggal_periksa,diagnosis) VALUES
(1,1,1,'2026-04-01','Demam'),
(2,2,2,'2026-04-02','Sakit gigi');


INSERT INTO rekam_medis VALUES
(3,1,99,'2026-04-03','Flu');