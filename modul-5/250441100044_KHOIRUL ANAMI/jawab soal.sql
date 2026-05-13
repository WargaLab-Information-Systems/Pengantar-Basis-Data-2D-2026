SELECT angkatan, COUNT(*) AS Total_Mahasiswa
FROM mahasiswa 
GROUP BY angkatan
HAVING COUNT(*) > 1 
ORDER BY Total_Mahasiswa DESC;

SELECT 
		MIN(sks) AS SKS_minimal,
		MAX(sks) AS SKS_maksimal,
		AVG(sks) AS rata_rata_SKS,
		COUNT(*) AS Total_mata_kuliah
FROM mata_kuliah;

SELECT m.nim, m.nama,k.semester, SUM(mk.sks) AS Total_sks
FROM mahasiswa m
JOIN krs k 
		ON m.nim = k.nim
JOIN mata_kuliah mk
		ON k.kode_mk = mk.kode_mk
WHERE semester IN (1,3)
GROUP BY m.nim, m.nama,k.semester
ORDER BY nim DESC;

SELECT k.nim,
SUM(mk.sks) AS Total_SKS
FROM krs k
JOIN mata_kuliah mk
		ON k.kode_mk = mk.kode_mk
GROUP BY k.nim
HAVING SUM(mk.sks) > 5;

SELECT sks, COUNT(*) AS jumlah_mata_kuliah
FROM mata_kuliah
GROUP BY sks
HAVING COUNT(*) > 1;
 
