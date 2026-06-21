CREATE DATABASE SIAKAD;
USE SIAKAD;

CREATE TABLE Mata_kuliah (
    id_mata_kuliah VARCHAR(10) PRIMARY KEY, 
    nama_mk VARCHAR(100),
    sks INT
);

INSERT INTO mata_kuliah VALUES 
('MK01', 'Algoritma & Pemrograman', 4), 
('MK02', 'Basis Data Terdistribusi', 3), 
('MK03', 'Struktur Data', 3), 
('MK04', 'Jaringan Komputer', 3), 
('MK05', 'Kecerdasan Buatan', 3), 
('MK06', 'Sistem Informasi Akuntansi', 2), 
('MK07', 'Pemrograman Web Native', 3), 
('MK08', 'Keamanan Informasi', 3), 
('MK09', 'Etika Profesi IT', 2), 
('MK10', 'Administrasi Basis Data', 3); 

CREATE TABLE Mahasiswa (
    id_mahasiswa INT PRIMARY KEY,
    nama_mahasiswa VARCHAR(100),
    program_studi VARCHAR(100),
    angkatan INT
);

INSERT INTO mahasiswa VALUES 
(2201, 'Dhani Kusuma', 'Sistem Informasi', 2022), 
(2202, 'Rizky Pratama', 'Sistem Informasi', 2022),
(2301, 'Andi Wijaya', 'Sistem Informasi', 2023), 
(2302, 'Bunga Citra', 'Sistem Informasi', 2023), 
(2303, 'Dimas Anggara', 'Sistem Informasi', 2023), 
(2401, 'Candra Gupta', 'Sistem Informasi', 2024), 
(2402, 'Dedi Kurniawan', 'Sistem Informasi', 2024), 
(2501, 'Farah Nabila', 'Sistem Informasi', 2025),  
(2502, 'Gibran Rakabumi', 'Sistem Informasi', 2025),  
(2503, 'Hani Safira', 'Sistem Informasi', 2025),  
(2504, 'Irfan Bachdim', 'Sistem Informasi', 2025),  
(2505, 'Joko Anwar', 'Sistem Informasi', 2025); 

CREATE TABLE Dosen (
    id_dosen INT PRIMARY KEY,
    nama_dosen VARCHAR(100),
    bidang_keahlihan VARCHAR(50),
    id_mata_kuliah VARCHAR(10),
    FOREIGN KEY (id_mata_kuliah) REFERENCES Mata_kuliah (id_mata_kuliah)
);

INSERT INTO dosen VALUES 
(1, 'Dr. Budi', 'Pemrograman', 'MK01'), 
(2, 'Prof. Siti', 'Basis Data', 'MK02'), 
(3, 'Ir. Ahmad', 'Jaringan', 'MK03'), 
(4, 'Dian, M.Kom', 'Pemrograman', 'MK04'), 
(5, 'Eko, S.T', 'Kecerdasan Buatan', 'MK05'), 
(6, 'Rina, M.T', 'Basis Data', 'MK06'), 
(7, 'Hadi, Ph.D', 'Keamanan Siber', 'MK07'), 
(8, 'Siska, M.SI', 'Sistem Informasi', 'MK08'), 
(9, 'Bambang, M.Kom', 'Pemrograman', 'MK09'), 
(10, 'Laila, M.T', 'Manajemen Proyek', 'MK10');

CREATE TABLE KRS (
    id_krs INT PRIMARY KEY,
    id_mata_kuliah VARCHAR(10), -- Tipe data harus sama
    id_mahasiswa INT,
    semester_ambil INT,
    FOREIGN KEY (id_mata_kuliah) REFERENCES Mata_kuliah (id_mata_kuliah),
    FOREIGN KEY (id_mahasiswa) REFERENCES Mahasiswa (id_mahasiswa)
);
 
INSERT INTO KRS VALUES 
(101, 'MK01', 2301, 3),  
(102, 'MK02', 2301, 3),  
(103, 'MK05', 2201, 5),  
(104, 'MK04', 2302, 3),  
(105, 'MK01', 2401, 1);
(106, 'MK07', 2402, 2);
(107, 'MK010', 2202, 5);
(108, 'MK06', 2303, 4);
(109, 'MK08', 2201, 6);
(110, 'MK03', 2401, 1);
