SELECT 
    mk.nama_mk,
    mk.sks,
    d.nama_dosen,
    d.bidang_keahlian
FROM mata_kuliah mk
JOIN dosen d ON mk.id_dosen = d.id_dosen
WHERE d.bidang_keahlian IN ('Pemrograman', 'Basis Data');


SELECT 
    m.nama_mahasiswa,
    k.id_mata_kuliah
FROM mahasiswa m
LEFT JOIN krs k ON m.id_mahasiswa = k.id_mahasiswa;


SELECT 
    m.nama_mahasiswa,
    mk.nama_mk,
    k.semester_ambil
FROM krs k
JOIN mahasiswa m ON k.id_mahasiswa = m.id_mahasiswa
JOIN mata_kuliah mk ON k.id_mata_kuliah = mk.id_mata_kuliah
WHERE k.semester_ambil BETWEEN 3 AND 5
ORDER BY k.semester_ambil ASC;


SELECT 
    m.nama_mahasiswa,
    mk.nama_mk,
    mk.sks
FROM krs k
JOIN mahasiswa m ON k.id_mahasiswa = m.id_mahasiswa
JOIN mata_kuliah mk ON k.id_mata_kuliah = mk.id_mata_kuliah
WHERE m.program_studi = 'Sistem Informasi'
AND mk.sks > 2
ORDER BY
mk.sks DESC,
m.nama_mahasiswa ASC;



SELECT 
    m.nama_mahasiswa,
    m.angkatan,
    mk.nama_mk,
    d.nama_dosen
FROM krs k
JOIN mahasiswa m ON k.id_mahasiswa = m.id_mahasiswa
JOIN mata_kuliah mk ON k.id_mata_kuliah = mk.id_mata_kuliah
JOIN dosen d ON mk.id_dosen = d.id_dosen
WHERE m.angkatan BETWEEN 2023 AND 2025
AND nama_dosen IN ('Dr. Budi', 'Prof. Siti')
ORDER BY m.angkatan DESC;



