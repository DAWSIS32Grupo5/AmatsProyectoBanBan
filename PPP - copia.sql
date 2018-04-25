/*
SQLyog Ultimate v9.02 
MySQL - 5.5.5-10.1.30-MariaDB : Database - canizaleznatanael
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`canizaleznatanael` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `canizaleznatanael`;

/*Table structure for table `prueba` */

DROP TABLE IF EXISTS `prueba`;

CREATE TABLE `prueba` (
  `ID` INT(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`ID`)
) ENGINE=INNODB DEFAULT CHARSET=latin1;

/*Data for the table `prueba` */

SELECT
  `ID`
FROM `canizaleznatanael`.`prueba`
LIMIT 0, 1000;`canizaleznatanael``canizaleznatanael`/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
DELETE FROM PRUEBA;

CREATE TABLE PERSONA(
ID INT NOT NULL AUTO_INCREMENT,
nombres VARCHAR (100),
apellidos VARCHAR(100),
edad INT,
direccion VARCHAR(200),
PRIMARY KEY(ID)
)
CREATE TABLE usuario(
idusuario INT NOT NULL AUTO_INCREMENT,
usuario VARCHAR(100),
contra VARCHAR(100),
nivel VARCHAR(50),
PRIMARY KEY (idusuario)
)

INSERT INTO canizaleznatanael.persona
(id,nombres,apellidos,edad,direccion)
VALUES ('','Vladimir','Valdez','20','itca')

INSERT INTO canizaleznatanael.persona
(id,nombres,apellidos,edad,direccion)
VALUES ('','Alejandro','Escobar','20','itca')

INSERT INTO canizaleznatanael.usuario
(idusuario,usuario,contra,nivel)
VALUES ('','Vlady','Valdez','admin')

INSERT INTO canizaleznatanael.usuario
(idusuario,usuario,contra,nivel)
VALUES ('','alejo','escobar','user')

USE canizaleznatanael