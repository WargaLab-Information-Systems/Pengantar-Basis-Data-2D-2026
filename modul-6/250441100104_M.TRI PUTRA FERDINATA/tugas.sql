USE modul_6;

SELECT m.nim, m.nama, n.nilai_angka
FROM mahasiswa m
JOIN nilai n ON m.nim = n.nim
WHERE n.nilai_angka > (
    SELECT AVG(nilai_angka)
    FROM nilai
);

SELECT mk.kode_mk, mk.nama_mk
FROM mata_kuliah mk
WHERE mk.kode_mk IN (
    SELECT k.kode_mk
    FROM krs k
    JOIN mahasiswa m ON k.nim = m.nim
    WHERE m.nama = 'Budi Santoso'
);

SELECT m.nim, m.nama, n.nilai_angka
FROM mahasiswa m
JOIN nilai n ON m.nim = n.nim
WHERE EXISTS (
    SELECT *
    FROM nilai n
    WHERE n.nim = m.nim
);

SELECT kode_mk, AVG(nilai_angka) AS rata_rata
FROM (
    SELECT kode_mk, nilai_angka
    FROM nilai
    WHERE kode_mk IN ('MK01', 'MK02')
) AS nilai_mk
GROUP BY kode_mk;

CREATE VIEW v_transkrip_lengkap AS
SELECT
    m.nim,
    m.nama AS nama_mahasiswa,
    mk.nama_mk,
    n.nilai_huruf
FROM mahasiswa m
JOIN nilai n ON m.nim = n.nim
JOIN mata_kuliah mk ON n.kode_mk = mk.kode_mk;

SELECT *
FROM v_transkrip_lengkap
WHERE nilai_huruf = 'A';
