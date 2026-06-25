SELECT m.nim, m.nama
FROM mahasiswa m
WHERE EXISTS (
SELECT *
FROM nilai n
WHERE n.nim = m.nim
);
