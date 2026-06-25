SELECT mk.nama_mk, mk.sks, d.nama_dosen
FROM mata_kuliah mk
INNER JOIN dosen d ON mk.id_dosen = d.id_dosen
WHERE bidang_keahlian IN ('pemrograman','basis data');