SELECT m.nama_mahasiswa, mk.nama_mk, mk.sks
FROM mahasiswa m
JOIN krs k ON m.nim = k.nim
JOIN mata_kuliah mk ON k.id_mk = mk.id_mk
WHERE prodi = 'sistem informasi' AND sks > 2
ORDER BY sks DESC, nama_mahasiswa ASC;