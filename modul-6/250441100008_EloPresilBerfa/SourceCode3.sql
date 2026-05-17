SELECT nim, nama
FROM mahasiswa
WHERE EXISTS (
    SELECT *
    FROM nilai
    WHERE nilai.nim = mahasiswa.nim
);
