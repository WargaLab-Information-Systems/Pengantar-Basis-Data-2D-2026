SELECT angkatan, COUNT(*) AS total_mhs
FROM mahasiswa
GROUP BY angkatan
HAVING total_mhs > 1
ORDER BY total_mhs DESC;