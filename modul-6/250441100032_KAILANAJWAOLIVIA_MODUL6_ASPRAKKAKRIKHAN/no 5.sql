CREATE VIEW v_transkrip_lengkap AS
SELECT 
    m.nim,
    m.nama AS nama_mahasiswa,
    mk.nama_mk,
    n.nilai_huruf
FROM Mahasiswa m
JOIN Nilai n ON m.nim = n.nim
JOIN Mata_Kuliah mk ON n.kode_mk = mk.kode_mk;

SELECT *
FROM v_transkrip_lengkap
WHERE nilai_huruf = 'A';