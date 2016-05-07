/* creates database */
DROP DATABASE IF EXISTS richard_davis_assignment_db;
CREATE DATABASE richard_davis_assignment_db;
USE richard_davis_assignment_db;

/* creates table */
CREATE TABLE student (
  studentID   INT(11)       NOT NULL   AUTO_INCREMENT,
  name        VARCHAR(255)  NOT NULL,
  email       VARCHAR(255)  NOT NULL,
  GPA         DECIMAL(4,2)  NOT NULL,
  PRIMARY KEY (studentID)
);

/* inserts test data */
INSERT INTO student VALUES
(1, 'Dirk Benson', 'dirk@diddler.com', 3.2),
(2, 'Dean Johnston', 'dean@hello.com', 3.1),
(3, 'Mac Leonard', 'macdaddy@example.com', 3.4),
(4, 'Sean Pritchard', 'bigsean@wonderworld.net', 3.8),
(5, 'Audree Paul', 'audrizzle@aol.com', 3.0),
(6, 'Kathy Biggums', 'sleepykathy@yahoo.com', 2.4),
(7, 'Marc Englewood', 'marc@gmail.com', 2.9),
(8, 'Esther Jindal', 'esther@hotmail.com', 2.0),
(9, 'Ben Manzelle', 'bennyboy@mafia.com', 3.6),
(10, 'Tom Isaiah', 'tomas@gmail.com', 2.2);

/* creates user */
GRANT SELECT, INSERT, UPDATE, DELETE
ON richard_davis_assignment_db.*
TO richardweb@localhost
IDENTIFIED BY 'richardchocolate'
