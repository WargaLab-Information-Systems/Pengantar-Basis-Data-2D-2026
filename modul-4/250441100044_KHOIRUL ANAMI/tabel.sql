CREATE TABLE dosen (
    id_dosen INT PRIMARY KEY,
    nama_dosen VARCHAR(100),
    bidang_keahlian VARCHAR(50)
);

CREATE TABLE mahasiswa (
    id_mahasiswa INT PRIMARY KEY,
    nama_mahasiswa VARCHAR(100),
    program_studi VARCHAR(100),
    angkatan INT
);

CREATE TABLE mata_kuliah (
    id_mata_kuliah VARCHAR(5) PRIMARY KEY,
    nama_mk VARCHAR(100),
    sks INT,
    id_dosen INT,
    FOREIGN KEY (id_dosen) REFERENCES dosen(id_dosen)
);

CREATE TABLE krs (
    id_krs INT PRIMARY KEY,
    id_mahasiswa INT,
    id_mata_kuliah VARCHAR(5),
    semester_ambil INT,
    FOREIGN KEY (id_mahasiswa) REFERENCES mahasiswa(id_mahasiswa),
    FOREIGN KEY (id_mata_kuliah) REFERENCES mata_kuliah(id_mata_kuliah)
);

SELECT * FROM dosen;
SELECT * FROM mahasiswa;
SELECT * FROM mata_kuliah;
SELECT * FROM krs;


