SELECT m.nim, m.nama
FROM Mahasiswa m
WHERE EXISTS (
    SELECT *
    FROM Nilai n
    WHERE m.nim = n.nim
);