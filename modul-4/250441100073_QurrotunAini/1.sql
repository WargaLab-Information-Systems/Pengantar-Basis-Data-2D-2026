SELECT 
    mk.nama_mk,
    mk.sks,
    d.nama_dosen,
    bidang_keahlian
FROM mata_kuliah mk
JOIN dosen d ON mk.id_dosen = d.id_dosen
WHERE d.bidang_keahlian IN ('Pemrograman', 'Basis Data');