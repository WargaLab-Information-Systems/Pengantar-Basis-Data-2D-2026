SELECT angkatan, COUNT(*) AS Total_Mahasiswa
FROM mahasiswa
GROUP BY angkatan
HAVING COUNT(*) > 1
ORDER BY Total_Mahasiswa DESC;

SELECT
MIN(sks) AS SKS_Minimal,
MAX(sks) AS SKS_Maksimal,
AVG(sks) AS Rata_Rata_SKS,
COUNT(*) AS Total_Mata_Kuliah
FROM mata_kuliah;

SELECT mhs.nim, mhs.nama, SUM(mk.sks) AS Total_SKS
FROM mahasiswa AS mhs
JOIN krs ON mhs.nim = krs.nim
JOIN mata_kuliah AS mk ON krs.kode_mk = mk.kode_mk
WHERE krs.semester MOD 2
GROUP BY mhs.nim, mhs.nama;

SELECT krs.nim, SUM(mk.sks) AS Total_SKS
FROM krs
JOIN mata_kuliah AS mk ON krs.kode_mk = mk.kode_mk
GROUP BY krs.nim
HAVING SUM(mk.sks) > 5;

SELECT sks,
COUNT(*) AS jumlah_mata_kuliah,
SUM(sks) AS akumulasi_SKS
FROM mata_kuliah
GROUP BY sks
HAVING COUNT(*) > 1; 