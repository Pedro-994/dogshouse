/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 5.5.5-10.1.38-MariaDB : Database - dogs_house
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `donaciones` */

DROP TABLE IF EXISTS `donaciones`;

CREATE TABLE `donaciones` (
  `id_donacion` int(11) NOT NULL,
  `cantidad_don` int(8) DEFAULT NULL,
  `fecha_don` date DEFAULT NULL,
  `id_usuario` int(8) DEFAULT NULL,
  `estado_donacion` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_donacion`),
  KEY `id_usuario` (`id_usuario`),
  KEY `EstadoDonaciones` (`estado_donacion`),
  CONSTRAINT `donaciones_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`),
  CONSTRAINT `donaciones_ibfk_2` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `empleado` */

DROP TABLE IF EXISTS `empleado`;

CREATE TABLE `empleado` (
  `id_empleado` int(11) NOT NULL,
  `nom_emp` varchar(20) DEFAULT NULL,
  `app_emp` varchar(20) DEFAULT NULL,
  `apm_emp` varchar(20) DEFAULT NULL,
  `genero_emp` varchar(20) DEFAULT NULL,
  `fnac_emp` date DEFAULT NULL,
  `telefono_emp` int(8) DEFAULT NULL,
  `calle_emp` varchar(20) DEFAULT NULL,
  `nocalle_emp` varchar(20) DEFAULT NULL,
  `colonia_emp` varchar(20) DEFAULT NULL,
  `municipio_emp` varchar(20) DEFAULT NULL,
  `cp_emp` int(8) DEFAULT NULL,
  `correo_emp` varchar(40) DEFAULT NULL,
  `estado_empleado` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_empleado`),
  KEY `Nombre_Empleado` (`nom_emp`,`app_emp`,`apm_emp`),
  KEY `Contacto_Empleado` (`correo_emp`,`telefono_emp`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `perros` */

DROP TABLE IF EXISTS `perros`;

CREATE TABLE `perros` (
  `id_perro` int(11) NOT NULL,
  `color_perro` varchar(20) DEFAULT NULL,
  `tamaño_perro` varchar(20) DEFAULT NULL,
  `condicion_perro` varchar(10) DEFAULT NULL,
  `raza_perro` varchar(30) DEFAULT NULL,
  `id_empleado` int(8) DEFAULT NULL,
  `id_adopcion` int(8) DEFAULT NULL,
  PRIMARY KEY (`id_perro`),
  KEY `id_empleado` (`id_empleado`),
  KEY `id_adopcion` (`id_adopcion`),
  KEY `Razas` (`raza_perro`),
  KEY `Condicion_Perro` (`condicion_perro`),
  CONSTRAINT `perros_ibfk_1` FOREIGN KEY (`id_empleado`) REFERENCES `empleado` (`id_empleado`),
  CONSTRAINT `perros_ibfk_2` FOREIGN KEY (`id_adopcion`) REFERENCES `perros_adoptivos` (`id_adopcion`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `perros_adoptivos` */

DROP TABLE IF EXISTS `perros_adoptivos`;

CREATE TABLE `perros_adoptivos` (
  `id_adopcion` int(11) NOT NULL,
  `color_perro` varchar(20) DEFAULT NULL,
  `tamaño_perro` varchar(20) DEFAULT NULL,
  `condicion_perro` varchar(20) DEFAULT NULL,
  `raza_perro` varchar(20) DEFAULT NULL,
  `nom_adop` varchar(20) DEFAULT NULL,
  `fecha_adop` date DEFAULT NULL,
  `id_usuario` int(8) DEFAULT NULL,
  PRIMARY KEY (`id_adopcion`),
  KEY `id_usuario` (`id_usuario`),
  KEY `Adopciones` (`raza_perro`,`nom_adop`,`fecha_adop`),
  KEY `Razas_Adopcion` (`raza_perro`),
  CONSTRAINT `perros_adoptivos_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `usuario` */

DROP TABLE IF EXISTS `usuario`;

CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL,
  `nom_us` varchar(20) DEFAULT NULL,
  `app_us` varchar(20) DEFAULT NULL,
  `apm_us` varchar(20) DEFAULT NULL,
  `genero_us` varchar(20) DEFAULT NULL,
  `contra_us` blob,
  `telefono_us` int(8) DEFAULT NULL,
  `calle_us` varchar(20) DEFAULT NULL,
  `nocalle_us` varchar(20) DEFAULT NULL,
  `colonia_us` varchar(20) DEFAULT NULL,
  `municipio_us` varchar(20) DEFAULT NULL,
  `cp_us` int(8) DEFAULT NULL,
  `estado_us` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_usuario`),
  KEY `Nombre_Usuario` (`nom_us`,`app_us`,`apm_us`,`genero_us`),
  KEY `Contacto_Us` (`telefono_us`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/* Trigger structure for table `perros` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `ESTADOS` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `ESTADOS` BEFORE UPDATE ON `perros` FOR EACH ROW BEGIN
declare pushadop int(8);
set pushadop=(select maxid_adoptivos());
IF(new.condicion_perro="bien") 
THEN
INSERT INTO perros_adoptivos(id_adopcion, color_perro,tamaño_perro,condicion_perro, raza_perro) 
VALUES (pushadop, old.color_perro,old.tamaño_perro,new.condicion_perro, old.raza_perro);
END IF;
END */$$


DELIMITER ;

/* Function  structure for function  `cantidad_perros` */

/*!50003 DROP FUNCTION IF EXISTS `cantidad_perros` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` FUNCTION `cantidad_perros`() RETURNS int(11)
begin
declare cantidad int(8);
set cantidad = (select max(id_perro) from perros);
return cantidad;
end */$$
DELIMITER ;

/* Function  structure for function  `decisiones` */

/*!50003 DROP FUNCTION IF EXISTS `decisiones` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` FUNCTION `decisiones`(valor int(11)) RETURNS int(11)
begin
declare numerouno int;
declare numerodos int;
declare numerotres int;
set numerouno = 8;
set numerodos = 9;
set numerotres = 10;
if(valor = numerouno)
then
return ('El valor es 8');
else
if(valor=numerodos)
then
return ('El valor es 9');
else
if(valor=numerotres)
then
return ('El valor 10');
end if;
end if;
end if;
end */$$
DELIMITER ;

/* Function  structure for function  `empleado_perros` */

/*!50003 DROP FUNCTION IF EXISTS `empleado_perros` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` FUNCTION `empleado_perros`(id_empleado int(8)) RETURNS int(8)
begin
declare pushconteo int(8);
set pushconteo=(select count(id_empleado) from perros where id_empleado=id_empleado);
return pushconteo;
end */$$
DELIMITER ;

/* Function  structure for function  `fecha` */

/*!50003 DROP FUNCTION IF EXISTS `fecha` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` FUNCTION `fecha`() RETURNS date
begin
declare pushfecha date;
set pushfecha= now();
return pushfecha;
end */$$
DELIMITER ;

/* Function  structure for function  `maxid_Adoptivos` */

/*!50003 DROP FUNCTION IF EXISTS `maxid_Adoptivos` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` FUNCTION `maxid_Adoptivos`() RETURNS int(11)
begin
declare consulta int(8);
declare suma int(8);
set consulta=(select max(ID_Adopcion) from perros_adoptivos);
set suma=consulta+1;
return suma;
end */$$
DELIMITER ;

/* Function  structure for function  `maxid_donaciones` */

/*!50003 DROP FUNCTION IF EXISTS `maxid_donaciones` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` FUNCTION `maxid_donaciones`() RETURNS int(11)
begin
declare consulta int(8);
declare suma int(8);
set consulta=(select max(ID_Donacion) from donaciones);
set suma=consulta+1;
return suma;
end */$$
DELIMITER ;

/* Function  structure for function  `maxid_Empleado` */

/*!50003 DROP FUNCTION IF EXISTS `maxid_Empleado` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` FUNCTION `maxid_Empleado`() RETURNS int(11)
begin
declare consulta int(8);
declare suma int(8);
set consulta=(select max(ID_Empleado) from Empleado);
set suma=consulta+1;
return suma;
end */$$
DELIMITER ;

/* Function  structure for function  `maxid_Perros` */

/*!50003 DROP FUNCTION IF EXISTS `maxid_Perros` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` FUNCTION `maxid_Perros`() RETURNS int(11)
begin
declare consulta int(8);
declare suma int(8);
set consulta=(select max(ID_Perro) from Perros);
set suma=consulta+1;
return suma;
end */$$
DELIMITER ;

/* Function  structure for function  `maxid_Usuarios` */

/*!50003 DROP FUNCTION IF EXISTS `maxid_Usuarios` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` FUNCTION `maxid_Usuarios`() RETURNS int(11)
begin
declare consulta int(8);
declare suma int(8);
set consulta=(select max(ID_Usuario) from usuario);
set suma=consulta+1;
return suma;
end */$$
DELIMITER ;

/* Function  structure for function  `max_donaciones` */

/*!50003 DROP FUNCTION IF EXISTS `max_donaciones` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` FUNCTION `max_donaciones`() RETURNS int(8)
begin
declare total int(8);
set total=(select sum(cantidad_don) from donaciones);
return total;
end */$$
DELIMITER ;

/* Procedure structure for procedure `altaempleado` */

/*!50003 DROP PROCEDURE IF EXISTS  `altaempleado` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `altaempleado`(in id_emp int(11))
begin
update empleado set estado_empleado = 'alta' where id_empleado = id_emp;
end */$$
DELIMITER ;

/* Procedure structure for procedure `altausuario` */

/*!50003 DROP PROCEDURE IF EXISTS  `altausuario` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `altausuario`(in id_us int(11))
begin
update usuario set estado_us = 'alta' where id_usuario = id_us;
end */$$
DELIMITER ;

/* Procedure structure for procedure `bajaempleado` */

/*!50003 DROP PROCEDURE IF EXISTS  `bajaempleado` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `bajaempleado`(in id_emp int(11))
begin
update empleado set estado_empleado = 'baja' where id_empleado = id_emp;
end */$$
DELIMITER ;

/* Procedure structure for procedure `bajausuario` */

/*!50003 DROP PROCEDURE IF EXISTS  `bajausuario` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `bajausuario`(in id_us int(11))
begin
update usuario set estado_us = 'baja' where id_usuario = id_us;
end */$$
DELIMITER ;

/* Procedure structure for procedure `borrarus` */

/*!50003 DROP PROCEDURE IF EXISTS  `borrarus` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `borrarus`(in id_us int(11))
begin
delete from usuario where estado_us = 'eliminar';
end */$$
DELIMITER ;

/* Procedure structure for procedure `donaciones` */

/*!50003 DROP PROCEDURE IF EXISTS  `donaciones` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `donaciones`(IN cantidad_don int(8), id_usuario int(8), estado_donacion varchar(20))
BEGIN
DECLARE pushid VARCHAR(20);
DECLARE pushfecha DATE;
SET pushid=(SELECT maxid_donaciones());
SET pushfecha=(SELECT fecha());
INSERT INTO donaciones VALUES (pushid, cantidad_don, pushfecha, id_usuario, estado_donacion);
END */$$
DELIMITER ;

/* Procedure structure for procedure `empleado` */

/*!50003 DROP PROCEDURE IF EXISTS  `empleado` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `empleado`(IN nom_emp VARCHAR(20), app_emp VARCHAR (20), apm_emp VARCHAR(20),genero_emp varchar(20), fnac_emp DATE, telefono_emp INT(8),
calle_emp VARCHAR(20), nocalle_emp VARCHAR(20), colonia_emp VARCHAR(20), municipio_emp VARCHAR(20), cp_emp INT (8), 
correo_emp VARCHAR(20))
BEGIN
declare pushid varchar(20);
set pushid=(select maxid_Empleado());
INSERT INTO empleado VALUES (pushid, nom_emp, app_emp, apm_emp, genero_emp, fnac_emp, telefono_emp, calle_emp, nocalle_emp,
colonia_emp, municipio_emp, cp_emp, correo_emp);
END */$$
DELIMITER ;

/* Procedure structure for procedure `perros` */

/*!50003 DROP PROCEDURE IF EXISTS  `perros` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `perros`(IN color_perro VARCHAR(20), tamaño_perro VARCHAR (20), condicion_perrro VARCHAR(20), raza_perro VARCHAR(30), id_empleado INT(8), id_adopcion INT (8))
BEGIN
DECLARE pushid VARCHAR(20);
SET pushid=(SELECT maxid_Perros());
INSERT INTO perros VALUES (pushid, color_perro, tamaño_perro, condicion_perrro, raza_perro, id_empleado, id_adopcion);
END */$$
DELIMITER ;

/* Procedure structure for procedure `perros_adoptivos` */

/*!50003 DROP PROCEDURE IF EXISTS  `perros_adoptivos` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `perros_adoptivos`(IN color_perro VARCHAR(20), tamaño_perro VARCHAR (20), 
condicion_perrro VARCHAR(20), raza_perro varchar(30), nom_adop varchar(20), id_adopcion int (8))
BEGIN
DECLARE pushid VARCHAR(20);
declare fechaut date;
SET pushid=(SELECT maxid_Adoptivos());
set fechaut=(select fecha());
INSERT INTO perros_adoptivos VALUES (pushid, color_perro, tamaño_perro, condicion_perrro, raza_perro, nom_adop, fechaut, id_adopcion);
END */$$
DELIMITER ;

/* Procedure structure for procedure `perros_adoptivosupdate` */

/*!50003 DROP PROCEDURE IF EXISTS  `perros_adoptivosupdate` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `perros_adoptivosupdate`(IN nom_adop VARCHAR(20), id_us int(8), id_usuario int(8))
BEGIN
DECLARE pushid VARCHAR(20);
declare pushfecha date;
set pushfecha=(select fecha());
update perros_adoptivos set nom_adop = nom_adop where id_adopcion=id_us;
update perros_adoptivos set fecha_adop = pushfecha where id_adopcion=id_us;
update perros_adoptivos set id_usuario = id_usuario where id_adopcion=id_us;
END */$$
DELIMITER ;

/* Procedure structure for procedure `usuario` */

/*!50003 DROP PROCEDURE IF EXISTS  `usuario` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `usuario`(IN nom_us VARCHAR(20), app_us varchar(20), apm_us varchar(20), genero_us varchar(20), contra_us blob, telefono_us int(8),
calle_us varchar(20), nocalle_us int(8), colonia_us varchar(20), municipio_us varchar(20), cp_us int (8))
BEGIN
DECLARE pushid VARCHAR(20);
declare pushgenero varchar(20);
SET pushid=(SELECT maxid_Usuarios());
INSERT INTO usuario VALUES (pushid, nom_us, app_us, apm_us, genero_us, contra_us, telefono_us, calle_us, nocalle_us, colonia_us,
municipio_us, cp_us);
END */$$
DELIMITER ;

/*Table structure for table `datos_perros` */

DROP TABLE IF EXISTS `datos_perros`;

/*!50001 DROP VIEW IF EXISTS `datos_perros` */;
/*!50001 DROP TABLE IF EXISTS `datos_perros` */;

/*!50001 CREATE TABLE  `datos_perros`(
 `color_perro` varchar(20) ,
 `tamaño_perro` varchar(20) ,
 `raza_perro` varchar(20) 
)*/;

/*Table structure for table `donaciones_completas` */

DROP TABLE IF EXISTS `donaciones_completas`;

/*!50001 DROP VIEW IF EXISTS `donaciones_completas` */;
/*!50001 DROP TABLE IF EXISTS `donaciones_completas` */;

/*!50001 CREATE TABLE  `donaciones_completas`(
 `nom_us` varchar(20) ,
 `cantidad_don` int(8) ,
 `fecha_don` date ,
 `estado_donacion` varchar(20) 
)*/;

/*Table structure for table `donaciones_espera` */

DROP TABLE IF EXISTS `donaciones_espera`;

/*!50001 DROP VIEW IF EXISTS `donaciones_espera` */;
/*!50001 DROP TABLE IF EXISTS `donaciones_espera` */;

/*!50001 CREATE TABLE  `donaciones_espera`(
 `nom_us` varchar(20) ,
 `cantidad_don` int(8) ,
 `fecha_don` date ,
 `estado_donacion` varchar(20) 
)*/;

/*Table structure for table `donaciones_mayores500` */

DROP TABLE IF EXISTS `donaciones_mayores500`;

/*!50001 DROP VIEW IF EXISTS `donaciones_mayores500` */;
/*!50001 DROP TABLE IF EXISTS `donaciones_mayores500` */;

/*!50001 CREATE TABLE  `donaciones_mayores500`(
 `id_usuario` int(11) ,
 `nom_us` varchar(20) ,
 `app_us` varchar(20) ,
 `cantidad_don` int(8) 
)*/;

/*Table structure for table `donaciones_menores500` */

DROP TABLE IF EXISTS `donaciones_menores500`;

/*!50001 DROP VIEW IF EXISTS `donaciones_menores500` */;
/*!50001 DROP TABLE IF EXISTS `donaciones_menores500` */;

/*!50001 CREATE TABLE  `donaciones_menores500`(
 `id_usuario` int(11) ,
 `nom_us` varchar(20) ,
 `app_us` varchar(20) ,
 `cantidad_don` int(8) 
)*/;

/*Table structure for table `perros_adoptados` */

DROP TABLE IF EXISTS `perros_adoptados`;

/*!50001 DROP VIEW IF EXISTS `perros_adoptados` */;
/*!50001 DROP TABLE IF EXISTS `perros_adoptados` */;

/*!50001 CREATE TABLE  `perros_adoptados`(
 `nom_us` varchar(20) ,
 `nom_adop` varchar(20) 
)*/;

/*Table structure for table `perros_rescatados` */

DROP TABLE IF EXISTS `perros_rescatados`;

/*!50001 DROP VIEW IF EXISTS `perros_rescatados` */;
/*!50001 DROP TABLE IF EXISTS `perros_rescatados` */;

/*!50001 CREATE TABLE  `perros_rescatados`(
 `id_perro` int(11) ,
 `color_perro` varchar(20) ,
 `tamaño_perro` varchar(20) ,
 `raza_perro` varchar(30) ,
 `nom_emp` varchar(20) 
)*/;

/*View structure for view datos_perros */

/*!50001 DROP TABLE IF EXISTS `datos_perros` */;
/*!50001 DROP VIEW IF EXISTS `datos_perros` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `datos_perros` AS (select `perros_adoptivos`.`color_perro` AS `color_perro`,`perros_adoptivos`.`tamaño_perro` AS `tamaño_perro`,`perros_adoptivos`.`raza_perro` AS `raza_perro` from `perros_adoptivos`) */;

/*View structure for view donaciones_completas */

/*!50001 DROP TABLE IF EXISTS `donaciones_completas` */;
/*!50001 DROP VIEW IF EXISTS `donaciones_completas` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `donaciones_completas` AS (select `usuario`.`nom_us` AS `nom_us`,`donaciones`.`cantidad_don` AS `cantidad_don`,`donaciones`.`fecha_don` AS `fecha_don`,`donaciones`.`estado_donacion` AS `estado_donacion` from (`usuario` join `donaciones`) where ((`usuario`.`id_usuario` = `donaciones`.`id_usuario`) and (`donaciones`.`estado_donacion` = 'completa')) order by `usuario`.`nom_us`) */;

/*View structure for view donaciones_espera */

/*!50001 DROP TABLE IF EXISTS `donaciones_espera` */;
/*!50001 DROP VIEW IF EXISTS `donaciones_espera` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `donaciones_espera` AS (select `usuario`.`nom_us` AS `nom_us`,`donaciones`.`cantidad_don` AS `cantidad_don`,`donaciones`.`fecha_don` AS `fecha_don`,`donaciones`.`estado_donacion` AS `estado_donacion` from (`usuario` join `donaciones`) where ((`usuario`.`id_usuario` = `donaciones`.`id_usuario`) and (`donaciones`.`estado_donacion` = 'espera')) order by `usuario`.`nom_us`) */;

/*View structure for view donaciones_mayores500 */

/*!50001 DROP TABLE IF EXISTS `donaciones_mayores500` */;
/*!50001 DROP VIEW IF EXISTS `donaciones_mayores500` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `donaciones_mayores500` AS (select `usuario`.`id_usuario` AS `id_usuario`,`usuario`.`nom_us` AS `nom_us`,`usuario`.`app_us` AS `app_us`,`donaciones`.`cantidad_don` AS `cantidad_don` from (`usuario` join `donaciones`) where ((`usuario`.`id_usuario` = `donaciones`.`id_usuario`) and (`donaciones`.`cantidad_don` > 500)) group by `usuario`.`id_usuario`) */;

/*View structure for view donaciones_menores500 */

/*!50001 DROP TABLE IF EXISTS `donaciones_menores500` */;
/*!50001 DROP VIEW IF EXISTS `donaciones_menores500` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `donaciones_menores500` AS (select `usuario`.`id_usuario` AS `id_usuario`,`usuario`.`nom_us` AS `nom_us`,`usuario`.`app_us` AS `app_us`,`donaciones`.`cantidad_don` AS `cantidad_don` from (`usuario` join `donaciones`) where ((`usuario`.`id_usuario` = `donaciones`.`id_usuario`) and (`donaciones`.`cantidad_don` < 500)) group by `usuario`.`id_usuario`) */;

/*View structure for view perros_adoptados */

/*!50001 DROP TABLE IF EXISTS `perros_adoptados` */;
/*!50001 DROP VIEW IF EXISTS `perros_adoptados` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `perros_adoptados` AS (select `usuario`.`nom_us` AS `nom_us`,`perros_adoptivos`.`nom_adop` AS `nom_adop` from (`usuario` join `perros_adoptivos`) where (`usuario`.`id_usuario` = `perros_adoptivos`.`id_usuario`) group by `perros_adoptivos`.`id_adopcion`) */;

/*View structure for view perros_rescatados */

/*!50001 DROP TABLE IF EXISTS `perros_rescatados` */;
/*!50001 DROP VIEW IF EXISTS `perros_rescatados` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `perros_rescatados` AS (select `perros`.`id_perro` AS `id_perro`,`perros`.`color_perro` AS `color_perro`,`perros`.`tamaño_perro` AS `tamaño_perro`,`perros`.`raza_perro` AS `raza_perro`,`empleado`.`nom_emp` AS `nom_emp` from (`perros` join `empleado`) where (`empleado`.`id_empleado` = `perros`.`id_empleado`) group by `perros`.`id_perro`) */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
