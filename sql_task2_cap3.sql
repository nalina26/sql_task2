USE orase_db;
SET SESSION sql_mode = '';
DROP TABLE IF EXISTS orase;
DROP TABLE IF EXISTS temp;

-- ex1
CREATE TABLE orase(x decimal(4,2) default NULL, y decimal(4,2) default NULL, localitate varchar(20) default NULL, judet varchar(20) default NULL, codjudet varchar(2) default NULL, populatie int default NULL, regiune varchar(100) default NULL);
 
 -- ex2 - run script orase2.sql
-- ex3
LOAD DATA INFILE "/usr/local/mysql-8.0.20-macos10.15-x86_64/orase3.txt" INTO TABLE orase FIELDS TERMINATED BY ';' enclosed BY '"'  LINES TERMINATED BY '\n' IGNORE 1 lines;
-- ex4
LOAD DATA INFILE "/usr/local/mysql-8.0.20-macos10.15-x86_64/orase4.txt" INTO TABLE orase FIELDS TERMINATED BY ',' enclosed BY '#'  LINES TERMINATED BY '|||';
-- ex5
LOAD DATA INFILE  "/usr/local/mysql-8.0.20-macos10.15-x86_64/orase5.txt"  INTO TABLE orase FIELDS TERMINATED BY ',' enclosed BY '/'  LINES TERMINATED BY '\r\n' IGNORE 3 lines
(localitate,judet,codjudet,regiune,populatie, x,y);
-- ex6
LOAD DATA INFILE  "/usr/local/mysql-8.0.20-macos10.15-x86_64/orase6.txt"  INTO TABLE orase FIELDS TERMINATED BY '|' enclosed BY '"'  LINES TERMINATED BY '\n' IGNORE 3 lines
(judet,codjudet,regiune,localitate,x,y);
-- ex7
ALTER TABLE orase ADD COLUMN nrlocuinte int;

LOAD DATA INFILE  "/usr/local/mysql-8.0.20-macos10.15-x86_64/orase7.txt"  INTO TABLE orase FIELDS TERMINATED BY ';' LINES TERMINATED BY '\n' IGNORE 3 lines
(x,y,localitate,nrlocuinte,judet,codjudet,populatie,regiune);

ALTER TABLE orase DROP COLUMN nrlocuinte;

SELECT * FROM ORASE;

-- ex8
CREATE TABLE temp LIKE orase;
TRUNCATE TABLE temp;
LOAD DATA INFILE  "/usr/local/mysql-8.0.20-macos10.15-x86_64/orase8.txt"  INTO TABLE temp FIELDS TERMINATED BY '|' LINES TERMINATED BY '\n' IGNORE 3 lines;
ALTER TABLE temp MODIFY COLUMN localitate varchar(30);
ALTER TABLE temp MODIFY COLUMN judet varchar(30);
ALTER TABLE temp MODIFY COLUMN x float;
ALTER TABLE temp MODIFY COLUMN y float;
SELECT * FROM temp;
DROP TABLE temp;

ALTER TABLE orase MODIFY COLUMN localitate varchar(30);
ALTER TABLE orase MODIFY COLUMN judet varchar(30);
ALTER TABLE orase MODIFY COLUMN x float;
ALTER TABLE orase MODIFY COLUMN y float;
LOAD DATA INFILE  "/usr/local/mysql-8.0.20-macos10.15-x86_64/orase8.txt"  INTO TABLE orase FIELDS TERMINATED BY '|' LINES TERMINATED BY '\n' IGNORE 3 lines;
SELECT COUNT(*) FROM orase;