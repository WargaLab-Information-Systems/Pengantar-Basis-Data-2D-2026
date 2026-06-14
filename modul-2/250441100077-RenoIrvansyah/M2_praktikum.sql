CREATE TABLE dokter (id_dokter BIGINT PRIMARY KEY, nama_dokter VARCHAR(250), spesialisasi VARCHAR(250));

CREATE TABLE pasien (id_pasien BIGINT PRIMARY KEY, nama_pasien VARCHAR(250), tanggal_lahir DATE, no_telepon CHAR(12));

CREATE TABLE rekam_medis(id_rekam BIGINT PRIMARY KEY, id_pasien BIGINT, id_dokter BIGINT, tanggal_periksa DATE, diagnosis VARCHAR(250),

FOREIGN KEY (id_pasien)
REFERENCES pasien(id_pasien)
ON DELETE RESTRICT,

FOREIGN KEY (id_dokter)
REFERENCES dokter(id_dokter)
ON DELETE RESTRICT
);

DROP TABLE dokter, pasien, rekam_medis;

DESCRIBE dokter;
DESCRIBE pasien;
DESCRIBE rekam_medis;

INSERT INTO dokter (id_dokter, nama_dokter, spesialisasi) VALUES (1, 'Reno Irvansyah Sp.B', 'Bedah Umum'), (2, 'Airen Ivansyah Sp.BA', 'Bedah Anak');

INSERT INTO pasien (id_pasien, nama_pasien, tanggal_lahir, no_telepon) VALUES (1, 'Albus Dumbledore', '1996-10-10', '089878981231'), (2, 'Ron Wesley', '2002-10-19', '089871234567');

INSERT INTO rekam_medis (id_rekam, id_pasien, id_dokter, tanggal_periksa, diagnosis) VALUES (1, 2, 1, '2026-04-02', 'demam tinggi'), (2, 1, 2, '2026-04-05', 'muntaber');

  
SELECT*FROM pasien;
SELECT*FROM rekam_medis;

INSERT INTO rekam_medis (id_rekam, id_pasien, id_dokter, tanggal_periksa, diagnosis) VALUES (3, 2, 5, '2026-04-02', 'demam tinggi');


UPDATE pasien SET no_telepon = '081234567890' WHERE id_pasien = 1;

UPDATE dokter SET spesialisasi = 'Kejiwaan' WHERE id_dokter = 2;

DELETE FROM rekam_medis WHERE id_rekam = 2;

DROP TABLE rekam_medis;

CREATE TABLE rekam_medis(id_rekam BIGINT PRIMARY KEY, id_pasien BIGINT, id_dokter BIGINT, tanggal_periksa DATE, diagnosis VARCHAR(250),

FOREIGN KEY (id_pasien)
REFERENCES pasien(id_pasien)
ON DELETE RESTRICT,

FOREIGN KEY (id_dokter)
REFERENCES dokter(id_dokter)
ON DELETE SET NULL
);

INSERT INTO rekam_medis (id_rekam, id_pasien, id_dokter, tanggal_periksa, diagnosis) VALUES (1, 1, 2, '2026-04-02', 'DBD'), (2, 2, 2, '2026-04-05', 'usus buntu');

SELECT*FROM rekam_medis;
SELECT*FROM dokter;

-- DELETE FROM rekam_medis WHERE id_dokter = 2;

DELETE FROM dokter WHERE id_dokter = 1;

CREATE TABLE rekam_medis(id_rekam BIGINT PRIMARY KEY, id_pasien BIGINT, id_dokter BIGINT, tanggal_periksa DATE, diagnosis VARCHAR(250),

FOREIGN KEY (id_pasien)
REFERENCES pasien(id_pasien)
ON DELETE RESTRICT,

FOREIGN KEY (id_dokter)
REFERENCES dokter(id_dokter)
ON DELETE RESTRICT
);

INSERT INTO rekam_medis (id_rekam, id_pasien, id_dokter, tanggal_periksa, diagnosis) VALUES (1, 1, 1, '2026-04-02', 'DBD'), (2, 2, 1, '2026-04-05', 'usus buntu');

TRUNCATE TABLE rekam_medis;
TRUNCATE TABLE pasien;
DELETE FROM pasien WHERE id_pasien = 1;

