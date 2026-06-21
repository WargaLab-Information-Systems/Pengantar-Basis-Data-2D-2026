CREATE TABLE rekam_medis ( 
    id_rekam INT PRIMARY KEY, 
    id_pasien INT, 
    id_dokter INT, 
    tanggal_periksa DATE, 
    diagnosis TEXT, 
    FOREIGN KEY (id_pasien) REFERENCES 
pasien(id_pasien) 
        ON DELETE RESTRICT, 
    FOREIGN KEY (id_dokter) REFERENCES 
dokter(id_dokter) 
        ON DELETE CASCADE 
); 
 
INSERT INTO rekam_medis VALUES 
(1, 1, 1, '2025-01-10', 'Demam'), 
(2, 2, 1, '2025-01-11', 'Flu'); 
 
DELETE FROM dokter 
WHERE id_dokter = 1; 
 
SELECT * FROM rekam_medis; 
 
#Jika sebuah data dokter dihapus, maka seluruh data rekam medis yang terkait dengan dokter tersebut akan ikut terhapus secara otomatis. Mekanisme ini disebut cascading delete, yang mempermudah pengelolaan data tetapi juga berisiko jika tidak digunakan dengan hatihati, karena dapat menyebabkan hilangnya banyak data sekaligus. Berbeda dengan RESTRICT yang menolak penghapusan, CASCADE justru mengizinkan penghapusan dan menyebarkannya ke tabel terkait, sedangkan opsi lain seperti SET NULL hanya akan mengosongkan nilai foreign key tanpa menghapus data. 