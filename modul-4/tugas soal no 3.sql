SELECT nama_mahasiswa, nama_mk, semester_ambil
FROM krs k
JOIN mahasiswa m ON k.nim = m.nim
JOIN mata_kuliah mk ON k.id_mk = mk.id_mk
WHERE semester_ambil BETWEEN 3 AND 5
ORDER BY semester_ambil ASC;
