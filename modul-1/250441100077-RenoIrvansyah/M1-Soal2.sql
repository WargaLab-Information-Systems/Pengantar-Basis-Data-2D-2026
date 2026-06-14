CREATE TABLE pelanggan_setia (
nomor_identitas INT);

DESCRIBE pelanggan_setia;

INSERT INTO pelanggan_setia VALUES (25077);

SELECT*FROM pelanggan_setia;

ALTER TABLE pelanggan_setia MODIFY nomor_identitas CHAR(20);

ALTER TABLE pelanggan_setia MODIFY nomor_identitas VARCHAR(25);

INSERT INTO pelanggan_setia VALUES ('ID25001');

TRUNCATE TABLE pelanggan_setia;

CREATE TABLE inicoba (
cobaaja VARCHAR(25));

DESCRIBE inicoba;

INSERT INTO inicoba VALUES ('ABC123');

SELECT*FROM inicoba;

ALTER TABLE inicoba MODIFY cobaaja INT;
