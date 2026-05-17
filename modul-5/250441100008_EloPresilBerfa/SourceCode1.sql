SELECT m.angkatan, COUNT(*) AS Total_Mahasiswa
FROM mahasiswa m
GROUP BY m.angkatan
HAVING COUNT(*) > 1
ORDER BY Total_Mahasiswa DESC;
