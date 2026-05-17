CREATE VIEW v_transkrip_lengkap AS
SELECT 
    mahasiswa.nim,
    mahasiswa.nama AS nama_mahasiswa,
    mata_kuliah.nama_mk,
    nilai.nilai_huruf
FROM mahasiswa
JOIN nilai 
    ON mahasiswa.nim = nilai.nim
JOIN mata_kuliah 
    ON nilai.kode_mk = mata_kuliah.kode_mk;
    
SELECT *
FROM v_transkrip_lengkap
WHERE nilai_huruf = 'A';
