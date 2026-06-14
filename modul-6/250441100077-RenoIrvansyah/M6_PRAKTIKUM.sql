SELECT mhs.nim, mhs.nama, n.nilai_angka
FROM mahasiswa AS mhs
JOIN nilai AS n ON mhs.nim = n.nim
WHERE n.nilai_angka >
(
SELECT AVG(nilai_angka)
FROM nilai
);

SELECT kode_mk, nama_mk
FROM mata_kuliah
WHERE kode_mk IN
(
SELECT k.kode_mk
FROM krs AS k
JOIN mahasiswa AS m ON k.nim = m.nim
WHERE m.nama = 'Budi Santoso'
);

SELECT nim, nama
FROM mahasiswa
WHERE EXISTS
(
SELECT *
FROM nilai
WHERE nilai.nim = mahasiswa.nim
);

SELECT AVG(nilai_angka) AS rata_rata_nilai
FROM
(
SELECT nilai_angka
FROM nilai
WHERE kode_mk IN ('MK01', 'MK02')
) AS nilai_mk;

CREATE VIEW v_transkrip_lengkap AS
SELECT mhs.nim, mhs.nama AS nama_mahasiswa, mk.nama_mk, n.nilai_huruf
FROM mahasiswa AS mhs
JOIN nilai AS n ON mhs.nim = n.nim
JOIN mata_kuliah AS mk ON n.kode_mk = mk.kode_mk;

SELECT * FROM v_transkrip_lengkap
WHERE nilai_huruf = 'A';
