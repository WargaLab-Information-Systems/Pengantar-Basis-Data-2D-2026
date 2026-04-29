SELECT mk.nama_mk, mk.sks, d.nama_dosen
FROM mata_kuliah AS mk
INNER JOIN dosen AS d ON d.id_mata_kuliah = mk.id_mata_kuliah
WHERE d.bidang_keahlihan IN ('Pemrograman', 'Basis Data');