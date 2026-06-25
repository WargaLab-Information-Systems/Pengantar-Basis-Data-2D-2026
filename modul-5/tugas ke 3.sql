SELECT m.nim, m.nim, SUM(mk.sks) AS total_sks
FROM krs k
JOIN mahasiswa m
ON k.nim = m.nim
JOIN mata_kuliah mk
ON k.kode_mk = mk.kode_mk
WHERE semester IN (1, 3)
GROUP BY m.nim, m.nama;


