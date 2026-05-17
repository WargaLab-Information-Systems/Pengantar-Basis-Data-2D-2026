SELECT 
    m.nama_mahasiswa,
    k.id_mata_kuliah
FROM mahasiswa m
LEFT JOIN krs k 
    ON m.id_mahasiswa = k.id_mahasiswa;