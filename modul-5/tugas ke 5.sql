SELECT sks, COUNT(*) AS jumlah_mk, SUM(sks) AS akumulasi
FROM mata_kuliah
GROUP BY sks
HAVING jumlah_mk > 1;