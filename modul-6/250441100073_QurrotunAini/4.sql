SELECT kode_mk, AVG(nilai_angka) AS rata_rata
FROM (
    SELECT *
    FROM nilai
    WHERE kode_mk IN ('MK01', 'MK02')
) AS nilai_filtered
GROUP BY kode_mk;