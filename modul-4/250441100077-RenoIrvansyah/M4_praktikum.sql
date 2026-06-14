SELECT mk.nama_mk, mk.sks, d.nama_dosen, d.bidang_keahlian
FROM mata_kuliah AS mk
JOIN dosen AS d ON mk.id_dosen = d.id_dosen
WHERE d.bidang_keahlian IN ("Pemrograman" , "Basis Data");


SELECT mhs.nama_mahasiswa, krs.id_mata_kuliah
FROM mahasiswa AS mhs
LEFT JOIN krs ON krs.id_mahasiswa = mhs.id_mahasiswa;


SELECT mhs.nama_mahasiswa, mk.nama_mk, krs.semester_ambil
FROM krs
JOIN mahasiswa AS mhs ON krs.id_mahasiswa = mhs.id_mahasiswa
JOIN mata_kuliah AS mk ON krs.id_mata_kuliah = mk.id_mata_kuliah
WHERE krs.semester_ambil BETWEEN 3 AND 5
ORDER BY krs.semester_ambil ASC;

SELECT mhs.nama_mahasiswa, mk.nama_mk, mk.sks
FROM krs
JOIN mahasiswa AS mhs ON krs.id_mahasiswa = mhs.id_mahasiswa
JOIN mata_kuliah AS mk ON krs.id_mata_kuliah = mk.id_mata_kuliah
WHERE mhs.program_studi = "Sistem Informasi" AND mk.sks > 2
ORDER BY mk.sks DESC, mhs.nama_mahasiswa ASC;

SELECT mhs.nama_mahasiswa, mhs.angkatan, mk.nama_mk, d.nama_dosen
FROM krs
JOIN mahasiswa AS mhs ON krs.id_mahasiswa = mhs.id_mahasiswa
JOIN mata_kuliah AS mk ON krs.id_mata_kuliah = mk.id_mata_kuliah
JOIN dosen AS d ON mk.id_dosen = d.id_dosen
WHERE mhs.angkatan BETWEEN 2023 AND 2025
AND d.nama_dosen IN ('Dr. Budi', 'Prof. Siti')
ORDER BY mhs.angkatan DESC;
