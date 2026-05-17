SELECT m.nim,m.nama,n.nilai_angka 
FROM nilai n
JOIN mahasiswa m 
ON n.nim = m.nim
WHERE n.nilai_angka >
(
SELECT AVG (nilai_angka)
FROM nilai n
);
