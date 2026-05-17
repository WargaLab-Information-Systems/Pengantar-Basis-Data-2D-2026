SELECT mk.sks, COUNT(*) AS Total_MK, SUM(sks) AS Total_Akumulasi_sks
FROM mata_kuliah mk
GROUP BY mk.sks
HAVING COUNT(sks) > 1;
