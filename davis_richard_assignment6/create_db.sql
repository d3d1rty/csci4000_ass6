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
(1, 'PO BLACK', 'poblack@gmail.com', 3.51),
(2, 'SHIFU HOFFMAN', 'shifuhoffman@gmail.com', 2.52),
(3, 'TIGRESS JOLIE', 'tigressjolie@gmail.com', 3.63),
(4, 'JENNIFER YUH', 'jenniferyuh@gmail.com', 1.44),
(5, 'OX STORMING', 'oxstorming@gmail.com', 3.95),
(6, 'MONKEY CHAN', 'monkeychan@gmail.com', 4.00),
(7, 'VIPER LIU', 'viperliu@gmail.com', 2.37),
(8, 'MANTIS ROGEN', 'mantisrogen@gmail.com', 3.29),
(9, 'CRANE CROSS', 'cranecross@gmail.com', 3.72),
(10, 'OOGWAY KIM', 'oogwaykim@gmail.com', 1.53),
(11, 'PING HONG', 'pinghong@gmail.com', 2.52);

/* creates user */
GRANT SELECT, INSERT, UPDATE, DELETE
ON richard_davis_assignment_db.*
TO richardweb@localhost
IDENTIFIED BY 'richardchocolate'
