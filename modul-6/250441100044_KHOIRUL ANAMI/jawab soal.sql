SELECT m.nim, m.nama, n.nilai_angka
FROM mahasiswa m
JOIN nilai n 
ON m.nim = n.nim
WHERE n.nilai_angka > (SELECT AVG(nilai_angka) FROM nilai);


SELECT mk.kode_mk, mk.nama_mk
FROM mata_kuliah mk
JOIN krs k 
ON mk.kode_mk = k.kode_mk
WHERE k.nim = (SELECT nim FROM mahasiswa WHERE nama = 'Budi Santoso');


SELECT m.nim, m.nama, n.nilai_angka
FROM mahasiswa m
JOIN nilai n 
ON m.nim = n.nim
WHERE EXISTS (SELECT * FROM nilai n WHERE n.nim = m.nim);



SELECT kode_mk, AVG(nilai_angka) AS rata_rata_nilai
FROM (SELECT kode_mk, nilai_angka FROM nilai WHERE kode_mk IN ('MK01', 'MK02') ) 
AS data_nilai
GROUP BY kode_mk;

CREATE VIEW v_transkrip_lengkap AS
SELECT 
    m.nim,
    m.nama AS nama_mahasiswa,
    mk.nama_mk,
    n.nilai_huruf
FROM mahasiswa m
JOIN nilai n
ON m.nim = n.nim
JOIN mata_kuliah mk
ON n.kode_mk = mk.kode_mk;


SELECT * FROM v_transkrip_lengkap
WHERE nilai_huruf = 'A';