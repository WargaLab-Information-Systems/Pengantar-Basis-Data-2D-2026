SELECT mk.kode_mk, mk.nama_mk
FROM Mata_Kuliah mk
JOIN KRS k ON mk.kode_mk = k.kode_mk
JOIN Mahasiswa m ON k.nim = m.nim
WHERE m.nama = 'Budi Santoso';