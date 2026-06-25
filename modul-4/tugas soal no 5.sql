SELECT m.nama_mahasiswa, m.angkatan, mk.nama_mk, d.nama_dosen
FROM krs k
JOIN mahasiswa m ON k.nim = m.nim
JOIN mata_kuliah mk ON k.id_mk = mk.id_mk
JOIN dosen d ON mk.id_dosen = d.id_dosen
WHERE angkatan BETWEEN 2023 AND 2025 
AND nama_dosen IN ('dr. budi','prof. siti')
ORDER BY angkatan ASC;
