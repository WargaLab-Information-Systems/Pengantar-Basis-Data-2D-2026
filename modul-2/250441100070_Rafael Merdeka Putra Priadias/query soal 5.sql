TRUNCATE TABLE rekam_medis; 
TRUNCATE TABLE pasien;

#TRUNCATE digunakan untuk menghapus seluruh isi tabel dengan cepat karena tidak memproses baris satu per satu, tetapi perintah ini memiliki keterbatasan seperti tidak dapat menggunakan kondisi WHERE dan biasanya tidak bisa dijalankan jika masih ada relasi foreign key yang aktif. Sebaliknya, DELETE lebih fleksibel karena dapat menghapus data secara selektif dan masih bisa dikontrol dalam transaksi sehingga dapat di rollback. 