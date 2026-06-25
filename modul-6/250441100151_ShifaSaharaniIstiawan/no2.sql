SELECT mk.kode_mk, mk.nama_mk
FROM mata_kuliah mk
JOIN krs k ON mk.kode_mk = k.kode_mk
WHERE k.nim = (
SELECT nim
FROM mahasiswa
 WHERE nama = 'Budi Santoso'
);

