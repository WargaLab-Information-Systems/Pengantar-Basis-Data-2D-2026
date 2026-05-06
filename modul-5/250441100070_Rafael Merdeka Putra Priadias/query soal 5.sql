SELECT sks, 
COUNT(*) AS total_mk,
SUM(sks) AS total_sks
FROM mata_kuliah
GROUP BY sks
HAVING COUNT(*) > 1;
