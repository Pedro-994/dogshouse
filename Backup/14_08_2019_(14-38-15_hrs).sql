SET FOREIGN_KEY_CHECKS=0;

CREATE DATABASE IF NOT EXISTS dogs_house;

USE dogs_house;

DROP TABLE IF EXISTS datos_perros;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `datos_perros` AS (select `perros_adoptivos`.`color_perro` AS `color_perro`,`perros_adoptivos`.`tamaño_perro` AS `tamaño_perro`,`perros_adoptivos`.`raza_perro` AS `raza_perro` from `perros_adoptivos`);

INSERT INTO datos_perros VALUES("blanco","grande","akita");
INSERT INTO datos_perros VALUES("blanco","mini","Teckel");
INSERT INTO datos_perros VALUES("miel","grande","pitbull");
INSERT INTO datos_perros VALUES("negro","mini","Chihuahua");
INSERT INTO datos_perros VALUES("blanco","mediano","chow chow");
INSERT INTO datos_perros VALUES("cafe","pequeño","Chihuahua");
INSERT INTO datos_perros VALUES("negro","mini","Pekinés");
INSERT INTO datos_perros VALUES("blanco","mini","Chihuahua");
INSERT INTO datos_perros VALUES("negro","mini","Pekinés");
INSERT INTO datos_perros VALUES("plata","mediano","chow chow");
INSERT INTO datos_perros VALUES("cafe obscuto","grande","rottweiler");
INSERT INTO datos_perros VALUES("cafe obscuro","grande","rottweiler");
INSERT INTO datos_perros VALUES("negro","pequeño","Pekinés");
INSERT INTO datos_perros VALUES("blanco","mediano","chow chow");
INSERT INTO datos_perros VALUES("negro","grande","pastor aleman");
INSERT INTO datos_perros VALUES("negro","pequeño","Pekinés");
INSERT INTO datos_perros VALUES("miel","pequeño","Pekinés");
INSERT INTO datos_perros VALUES("blanco","mini","Chihuahua");
INSERT INTO datos_perros VALUES("cafe","mini","teckel");
INSERT INTO datos_perros VALUES("plata","pequeño","teckel");
INSERT INTO datos_perros VALUES("cafe obscuto","grande","golden retriver");
INSERT INTO datos_perros VALUES("blanco","grande","rottweiler");
INSERT INTO datos_perros VALUES("negro","pequeño","pastor aleman");
INSERT INTO datos_perros VALUES("miel","mediano","chow chow");
INSERT INTO datos_perros VALUES("cafe","mini","Chihuahua");
INSERT INTO datos_perros VALUES("blanco","pequeño","poodle");
INSERT INTO datos_perros VALUES("negro","grande","rottweiler");
INSERT INTO datos_perros VALUES("negro","grande","pastor aleman");
INSERT INTO datos_perros VALUES("negro","pequeño","pug");
INSERT INTO datos_perros VALUES("miel","mediano","chow chow");
INSERT INTO datos_perros VALUES("cafe","mini","Chihuahua");
INSERT INTO datos_perros VALUES("blanco","grande","pastor aleman");
INSERT INTO datos_perros VALUES("plata","grande","rottweiler");
INSERT INTO datos_perros VALUES("cafe","mediano","chow chow");
INSERT INTO datos_perros VALUES("blanco","pequeño","chihuahua");
INSERT INTO datos_perros VALUES("negro","mediano","beagle");
INSERT INTO datos_perros VALUES("miel","grande","rottweiler");
INSERT INTO datos_perros VALUES("cafe obscuto","pequeño","pug");
INSERT INTO datos_perros VALUES("plata","grande","pastor aleman");
INSERT INTO datos_perros VALUES("miel","mediano","beagle");
INSERT INTO datos_perros VALUES("cafe","mini","Chihuahua");
INSERT INTO datos_perros VALUES("negro","mediano","chow chow");
INSERT INTO datos_perros VALUES("negro","grande","rottweiler");
INSERT INTO datos_perros VALUES("miel","mini","Pekinés");
INSERT INTO datos_perros VALUES("blanco","grande","rottweiler");
INSERT INTO datos_perros VALUES("cafe","mini","Pekinés");
INSERT INTO datos_perros VALUES("negro","grande","rottweiler");
INSERT INTO datos_perros VALUES("miel","mediano","chow chow");
INSERT INTO datos_perros VALUES("blanco","grande","golden retriever");
INSERT INTO datos_perros VALUES("plata","mediano","cocker");
INSERT INTO datos_perros VALUES("negro","grande","rottweiler");
INSERT INTO datos_perros VALUES("negro","mediano","cocker");
INSERT INTO datos_perros VALUES("miel","mediano","chow chow");
INSERT INTO datos_perros VALUES("miel","grande","pastor aleman");
INSERT INTO datos_perros VALUES("negro","mediano","beagle");
INSERT INTO datos_perros VALUES("blanco","mediano","chow chow");
INSERT INTO datos_perros VALUES("cafe obscuto","pequeño","chihuahua");
INSERT INTO datos_perros VALUES("miel","grande","rottweiler");
INSERT INTO datos_perros VALUES("negro","mediano","beagle");
INSERT INTO datos_perros VALUES("cafe obscuto","mediano","cocker");
INSERT INTO datos_perros VALUES("cafe","mediano","chow chow");
INSERT INTO datos_perros VALUES("negro","grande","pastor aleman");
INSERT INTO datos_perros VALUES("miel","grande","rottweiler");
INSERT INTO datos_perros VALUES("cafe obscuro","grande","golden retriever");
INSERT INTO datos_perros VALUES("negro","grande","golden retriever");
INSERT INTO datos_perros VALUES("miel","grande","rottweiler");
INSERT INTO datos_perros VALUES("cafe","mediano","beagle");
INSERT INTO datos_perros VALUES("negro","grande","pastor aleman");
INSERT INTO datos_perros VALUES("miel","mediano","cocker");
INSERT INTO datos_perros VALUES("cafe obscuto","pequeño","pug");
INSERT INTO datos_perros VALUES("cafe obscuto","grande","rottweiler");
INSERT INTO datos_perros VALUES("blanco","grande","pastor aleman");
INSERT INTO datos_perros VALUES("negro","grande","rottweiler");
INSERT INTO datos_perros VALUES("cafe obscuto","pequeño","pug");
INSERT INTO datos_perros VALUES("cafe obscuto","grande","golden retriever");
INSERT INTO datos_perros VALUES("miel","mini","Pekinés");
INSERT INTO datos_perros VALUES("blanco","grande","pastor aleman");
INSERT INTO datos_perros VALUES("negro","mediano","beagle");
INSERT INTO datos_perros VALUES("cafe","mediano","chow chow");
INSERT INTO datos_perros VALUES("miel","mini","Pekinés");
INSERT INTO datos_perros VALUES("cafe obscuto","grande","pastor aleman");
INSERT INTO datos_perros VALUES("negro","grande","rottweiler");
INSERT INTO datos_perros VALUES("plata","mediano","chow chow");
INSERT INTO datos_perros VALUES("miel","grande","golden retriever");
INSERT INTO datos_perros VALUES("miel","mini","Pekinés");
INSERT INTO datos_perros VALUES("negro","mediano","beagle");
INSERT INTO datos_perros VALUES("blanco","mini","Pekinés");
INSERT INTO datos_perros VALUES("miel","grande","pastor aleman");
INSERT INTO datos_perros VALUES("plata","pequeño","pug");
INSERT INTO datos_perros VALUES("negro","mediano","chow chow");
INSERT INTO datos_perros VALUES("cafe","mini","Teckel");
INSERT INTO datos_perros VALUES("negro","grande","pastor aleman");
INSERT INTO datos_perros VALUES("miel","grande","golden retriever");
INSERT INTO datos_perros VALUES("plata","mediano","chow chow");
INSERT INTO datos_perros VALUES("blanco","mini","Teckel");
INSERT INTO datos_perros VALUES("negro","grande","pastor aleman");
INSERT INTO datos_perros VALUES("miel","grande","golden retriever");
INSERT INTO datos_perros VALUES("cafe","grande","rottweiler");
INSERT INTO datos_perros VALUES("negro","mediano","chow chow");
INSERT INTO datos_perros VALUES("blanco","mini","Teckel");
INSERT INTO datos_perros VALUES("negro","grande","rottweiler");
INSERT INTO datos_perros VALUES("blanco","grande","Akita Inu");
INSERT INTO datos_perros VALUES("","","");
INSERT INTO datos_perros VALUES("blanco","grande","Akita Inu");
INSERT INTO datos_perros VALUES("negro","mediano","chow chow");
INSERT INTO datos_perros VALUES("plata","mediano","chow chow");
INSERT INTO datos_perros VALUES("miel","mini","Pekinés");
INSERT INTO datos_perros VALUES("negro","grande","golden retriever");
INSERT INTO datos_perros VALUES("cafe obscuto","mediano","cocker");
INSERT INTO datos_perros VALUES("miel","grande","golden retriever");
INSERT INTO datos_perros VALUES("Negro","Chico","Akita");
INSERT INTO datos_perros VALUES("cafe","grande","Alano español");



DROP TABLE IF EXISTS donaciones;

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

INSERT INTO donaciones VALUES("1","400","2019-07-19","1","Espera");
INSERT INTO donaciones VALUES("2","200","2019-07-19","2","Espera");
INSERT INTO donaciones VALUES("3","500","2019-07-19","2","Espera");
INSERT INTO donaciones VALUES("4","200","2019-07-19","3","Espera");
INSERT INTO donaciones VALUES("5","500","2019-07-19","5","Espera");
INSERT INTO donaciones VALUES("6","200","2019-07-19","6","Espera");
INSERT INTO donaciones VALUES("7","500","2019-07-19","7","Espera");
INSERT INTO donaciones VALUES("8","200","2019-07-19","7","Espera");
INSERT INTO donaciones VALUES("9","800","2019-07-19","8","Completa");
INSERT INTO donaciones VALUES("10","200","2019-07-19","9","Completa");
INSERT INTO donaciones VALUES("11","500","2019-07-19","10","Espera");
INSERT INTO donaciones VALUES("12","500","2019-07-19","11","Espera");
INSERT INTO donaciones VALUES("13","800","2019-07-19","12","Espera");
INSERT INTO donaciones VALUES("14","200","2019-07-19","13","Espera");
INSERT INTO donaciones VALUES("15","500","2019-07-19","14","Espera");
INSERT INTO donaciones VALUES("16","500","2019-07-19","15","Espera");
INSERT INTO donaciones VALUES("17","800","2019-07-19","16","Espera");
INSERT INTO donaciones VALUES("18","800","2019-07-19","17","Espera");
INSERT INTO donaciones VALUES("19","200","2019-07-19","17","Completa");
INSERT INTO donaciones VALUES("20","500","2019-07-19","18","Completa");
INSERT INTO donaciones VALUES("21","200","2019-07-19","19","Completa");
INSERT INTO donaciones VALUES("22","500","2019-07-19","20","Completa");
INSERT INTO donaciones VALUES("23","800","2019-07-19","5","Completa");
INSERT INTO donaciones VALUES("24","200","2019-07-19","11","Completa");
INSERT INTO donaciones VALUES("25","500","2019-07-19","16","Completa");
INSERT INTO donaciones VALUES("26","500","2019-07-19","9","Completa");
INSERT INTO donaciones VALUES("27","800","2019-07-19","7","Completa");
INSERT INTO donaciones VALUES("28","500","2019-07-19","8","Completa");
INSERT INTO donaciones VALUES("29","200","2019-07-19","9","Completa");
INSERT INTO donaciones VALUES("30","500","2019-07-19","17","Completa");
INSERT INTO donaciones VALUES("31","200","2019-07-19","20","Completa");
INSERT INTO donaciones VALUES("32","500","2019-07-19","11","Completa");
INSERT INTO donaciones VALUES("33","500","2019-07-19","14","Completa");
INSERT INTO donaciones VALUES("34","800","2019-07-19","15","Completa");
INSERT INTO donaciones VALUES("35","800","2019-07-19","15","Completa");
INSERT INTO donaciones VALUES("36","800","2019-07-19","15","Completa");
INSERT INTO donaciones VALUES("37","200","2019-07-19","19","Completa");
INSERT INTO donaciones VALUES("38","200","2019-07-19","1","Completa");
INSERT INTO donaciones VALUES("39","500","2019-07-19","13","Completa");
INSERT INTO donaciones VALUES("40","200","2019-07-19","9","Espera");
INSERT INTO donaciones VALUES("41","800","2019-07-19","17","Espera");
INSERT INTO donaciones VALUES("42","800","2019-07-19","18","Espera");
INSERT INTO donaciones VALUES("43","200","2019-07-19","3","Espera");
INSERT INTO donaciones VALUES("44","500","2019-07-19","4","Espera");
INSERT INTO donaciones VALUES("45","500","2019-07-19","4","Espera");
INSERT INTO donaciones VALUES("46","200","2019-07-19","4","Espera");
INSERT INTO donaciones VALUES("47","200","2019-07-19","4","Espera");
INSERT INTO donaciones VALUES("48","800","2019-07-19","4","Espera");
INSERT INTO donaciones VALUES("49","800","2019-07-19","4","Espera");
INSERT INTO donaciones VALUES("50","500","2019-07-19","5","Espera");
INSERT INTO donaciones VALUES("51","500","2019-07-19","1","Espera");
INSERT INTO donaciones VALUES("52","200","2019-07-19","2","Espera");
INSERT INTO donaciones VALUES("53","800","2019-07-19","3","Espera");
INSERT INTO donaciones VALUES("54","500","2019-07-19","3","Espera");
INSERT INTO donaciones VALUES("55","500","2019-07-19","4","Espera");
INSERT INTO donaciones VALUES("56","200","2019-07-19","5","Espera");
INSERT INTO donaciones VALUES("57","200","2019-07-19","5","Espera");
INSERT INTO donaciones VALUES("58","800","2019-07-19","7","Completa");
INSERT INTO donaciones VALUES("59","800","2019-07-19","8","Completa");
INSERT INTO donaciones VALUES("60","500","2019-07-19","8","Completa");
INSERT INTO donaciones VALUES("61","200","2019-07-19","9","Completa");
INSERT INTO donaciones VALUES("62","200","2019-07-19","9","Completa");
INSERT INTO donaciones VALUES("63","800","2019-07-19","10","Completa");
INSERT INTO donaciones VALUES("64","500","2019-07-19","6","Completa");
INSERT INTO donaciones VALUES("65","200","2019-07-19","13","Espera");
INSERT INTO donaciones VALUES("66","200","2019-07-19","6","Espera");
INSERT INTO donaciones VALUES("67","500","2019-07-19","6","Completa");
INSERT INTO donaciones VALUES("68","800","2019-07-19","19","Completa");
INSERT INTO donaciones VALUES("69","800","2019-07-19","17","Espera");
INSERT INTO donaciones VALUES("70","200","2019-07-19","17","Espera");
INSERT INTO donaciones VALUES("71","500","2019-07-19","16","Espera");
INSERT INTO donaciones VALUES("72","500","2019-07-19","8","Espera");
INSERT INTO donaciones VALUES("73","200","2019-07-19","7","Espera");
INSERT INTO donaciones VALUES("74","800","2019-07-19","7","Espera");
INSERT INTO donaciones VALUES("75","800","2019-07-19","7","Espera");
INSERT INTO donaciones VALUES("76","500","2019-07-19","7","Espera");
INSERT INTO donaciones VALUES("77","500","2019-07-19","7","Completa");
INSERT INTO donaciones VALUES("78","200","2019-07-19","7","Completa");
INSERT INTO donaciones VALUES("79","200","2019-07-19","7","Completa");
INSERT INTO donaciones VALUES("80","500","2019-07-19","7","Completa");
INSERT INTO donaciones VALUES("81","200","2019-07-19","7","Completa");
INSERT INTO donaciones VALUES("82","800","2019-07-19","7","Completa");
INSERT INTO donaciones VALUES("83","800","2019-07-19","7","Completa");
INSERT INTO donaciones VALUES("84","200","2019-07-19","9","Completa");
INSERT INTO donaciones VALUES("85","200","2019-07-19","9","Completa");
INSERT INTO donaciones VALUES("86","500","2019-07-19","8","Completa");
INSERT INTO donaciones VALUES("87","500","2019-07-19","8","Completa");
INSERT INTO donaciones VALUES("88","800","2019-07-19","8","Completa");
INSERT INTO donaciones VALUES("89","800","2019-07-19","3","Completa");
INSERT INTO donaciones VALUES("90","800","2019-07-19","3","Completa");
INSERT INTO donaciones VALUES("91","500","2019-07-19","8","Completa");
INSERT INTO donaciones VALUES("92","500","2019-07-19","4","Completa");
INSERT INTO donaciones VALUES("93","200","2019-07-19","14","Completa");
INSERT INTO donaciones VALUES("94","200","2019-07-19","12","Completa");
INSERT INTO donaciones VALUES("95","200","2019-07-19","11","Completa");
INSERT INTO donaciones VALUES("96","500","2019-07-19","8","Completa");
INSERT INTO donaciones VALUES("97","800","2019-07-19","9","Completa");
INSERT INTO donaciones VALUES("98","200","2019-07-19","9","Completa");
INSERT INTO donaciones VALUES("99","500","2019-07-19","1","Completa");
INSERT INTO donaciones VALUES("100","500","","1","Completa");
INSERT INTO donaciones VALUES("101","500","2019-07-19","4","Completa");
INSERT INTO donaciones VALUES("102","200","2019-07-28","1","Completa");
INSERT INTO donaciones VALUES("103","200","2019-07-28","1","Completa");



DROP TABLE IF EXISTS donaciones_completas;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `donaciones_completas` AS (select `usuario`.`nom_us` AS `nom_us`,`donaciones`.`cantidad_don` AS `cantidad_don`,`donaciones`.`fecha_don` AS `fecha_don`,`donaciones`.`estado_donacion` AS `estado_donacion` from (`usuario` join `donaciones`) where ((`usuario`.`id_usuario` = `donaciones`.`id_usuario`) and (`donaciones`.`estado_donacion` = 'completa')) order by `usuario`.`nom_us`);

INSERT INTO donaciones_completas VALUES("Alfonso","200","2019-07-19","Completa");
INSERT INTO donaciones_completas VALUES("Alfonso","500","2019-07-19","Completa");
INSERT INTO donaciones_completas VALUES("Alison","200","2019-07-19","Completa");
INSERT INTO donaciones_completas VALUES("Alison","500","2019-07-19","Completa");
INSERT INTO donaciones_completas VALUES("Alison","500","","Completa");
INSERT INTO donaciones_completas VALUES("Alison","200","2019-07-28","Completa");
INSERT INTO donaciones_completas VALUES("Alison","200","2019-07-28","Completa");
INSERT INTO donaciones_completas VALUES("Angel","500","2019-07-19","Completa");
INSERT INTO donaciones_completas VALUES("Daniel","800","2019-07-19","Completa");
INSERT INTO donaciones_completas VALUES("Daniela","500","2019-07-19","Completa");
INSERT INTO donaciones_completas VALUES("Daniela","500","2019-07-19","Completa");
INSERT INTO donaciones_completas VALUES("Dulce","200","2019-07-19","Completa");
INSERT INTO donaciones_completas VALUES("Dulce","200","2019-07-19","Completa");
INSERT INTO donaciones_completas VALUES("Dulce","800","2019-07-19","Completa");
INSERT INTO donaciones_completas VALUES("Erwin","800","2019-07-19","Completa");
INSERT INTO donaciones_completas VALUES("Erwin","800","2019-07-19","Completa");
INSERT INTO donaciones_completas VALUES("Francisco","500","2019-07-19","Completa");
INSERT INTO donaciones_completas VALUES("Grissel","800","2019-07-19","Completa");
INSERT INTO donaciones_completas VALUES("Grissel","500","2019-07-19","Completa");
INSERT INTO donaciones_completas VALUES("Grissel","800","2019-07-19","Completa");
INSERT INTO donaciones_completas VALUES("Grissel","500","2019-07-19","Completa");
INSERT INTO donaciones_completas VALUES("Grissel","500","2019-07-19","Completa");
INSERT INTO donaciones_completas VALUES("Grissel","500","2019-07-19","Completa");
INSERT INTO donaciones_completas VALUES("Grissel","800","2019-07-19","Completa");
INSERT INTO donaciones_completas VALUES("Grissel","500","2019-07-19","Completa");
INSERT INTO donaciones_completas VALUES("Grissel","500","2019-07-19","Completa");
INSERT INTO donaciones_completas VALUES("Gustavo","500","2019-07-19","Completa");
INSERT INTO donaciones_completas VALUES("Gustavo","200","2019-07-19","Completa");
INSERT INTO donaciones_completas VALUES("Juan","200","2019-07-19","Completa");
INSERT INTO donaciones_completas VALUES("Karen","200","2019-07-19","Completa");
INSERT INTO donaciones_completas VALUES("Karen","500","2019-07-19","Completa");
INSERT INTO donaciones_completas VALUES("Karen","200","2019-07-19","Completa");
INSERT INTO donaciones_completas VALUES("Karen","200","2019-07-19","Completa");
INSERT INTO donaciones_completas VALUES("Karen","200","2019-07-19","Completa");
INSERT INTO donaciones_completas VALUES("Karen","200","2019-07-19","Completa");
INSERT INTO donaciones_completas VALUES("Karen","200","2019-07-19","Completa");
INSERT INTO donaciones_completas VALUES("Karen","800","2019-07-19","Completa");
INSERT INTO donaciones_completas VALUES("Karen","200","2019-07-19","Completa");
INSERT INTO donaciones_completas VALUES("karina","800","2019-07-19","Completa");
INSERT INTO donaciones_completas VALUES("karina","800","2019-07-19","Completa");
INSERT INTO donaciones_completas VALUES("karina","500","2019-07-19","Completa");
INSERT INTO donaciones_completas VALUES("karina","200","2019-07-19","Completa");
INSERT INTO donaciones_completas VALUES("karina","200","2019-07-19","Completa");
INSERT INTO donaciones_completas VALUES("karina","500","2019-07-19","Completa");
INSERT INTO donaciones_completas VALUES("karina","200","2019-07-19","Completa");
INSERT INTO donaciones_completas VALUES("karina","800","2019-07-19","Completa");
INSERT INTO donaciones_completas VALUES("karina","800","2019-07-19","Completa");
INSERT INTO donaciones_completas VALUES("Luis","800","2019-07-19","Completa");
INSERT INTO donaciones_completas VALUES("Paticria","500","2019-07-19","Completa");
INSERT INTO donaciones_completas VALUES("Pedro","500","2019-07-19","Completa");
INSERT INTO donaciones_completas VALUES("Pedro","500","2019-07-19","Completa");
INSERT INTO donaciones_completas VALUES("Tania","200","2019-07-19","Completa");
INSERT INTO donaciones_completas VALUES("Tania","500","2019-07-19","Completa");
INSERT INTO donaciones_completas VALUES("Tania","200","2019-07-19","Completa");
INSERT INTO donaciones_completas VALUES("Yessica","800","2019-07-19","Completa");
INSERT INTO donaciones_completas VALUES("Yessica","800","2019-07-19","Completa");
INSERT INTO donaciones_completas VALUES("Yessica","800","2019-07-19","Completa");
INSERT INTO donaciones_completas VALUES("Yuridiana","500","2019-07-19","Completa");
INSERT INTO donaciones_completas VALUES("Yuridiana","200","2019-07-19","Completa");



DROP TABLE IF EXISTS donaciones_espera;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `donaciones_espera` AS (select `usuario`.`nom_us` AS `nom_us`,`donaciones`.`cantidad_don` AS `cantidad_don`,`donaciones`.`fecha_don` AS `fecha_don`,`donaciones`.`estado_donacion` AS `estado_donacion` from (`usuario` join `donaciones`) where ((`usuario`.`id_usuario` = `donaciones`.`id_usuario`) and (`donaciones`.`estado_donacion` = 'espera')) order by `usuario`.`nom_us`);

INSERT INTO donaciones_espera VALUES("Alfonso","800","2019-07-19","Espera");
INSERT INTO donaciones_espera VALUES("Alfonso","800","2019-07-19","Espera");
INSERT INTO donaciones_espera VALUES("Alfonso","200","2019-07-19","Espera");
INSERT INTO donaciones_espera VALUES("Alfonso","800","2019-07-19","Espera");
INSERT INTO donaciones_espera VALUES("Alison","500","2019-07-19","Espera");
INSERT INTO donaciones_espera VALUES("Alison","400","2019-07-19","Espera");
INSERT INTO donaciones_espera VALUES("América","200","2019-07-19","Espera");
INSERT INTO donaciones_espera VALUES("América","500","2019-07-19","Espera");
INSERT INTO donaciones_espera VALUES("América","200","2019-07-19","Espera");
INSERT INTO donaciones_espera VALUES("Angel","200","2019-07-19","Espera");
INSERT INTO donaciones_espera VALUES("Angel","200","2019-07-19","Espera");
INSERT INTO donaciones_espera VALUES("Daniel","500","2019-07-19","Espera");
INSERT INTO donaciones_espera VALUES("Daniel","500","2019-07-19","Espera");
INSERT INTO donaciones_espera VALUES("Daniel","200","2019-07-19","Espera");
INSERT INTO donaciones_espera VALUES("Daniel","200","2019-07-19","Espera");
INSERT INTO donaciones_espera VALUES("Daniela","200","2019-07-19","Espera");
INSERT INTO donaciones_espera VALUES("Daniela","500","2019-07-19","Espera");
INSERT INTO donaciones_espera VALUES("Daniela","800","2019-07-19","Espera");
INSERT INTO donaciones_espera VALUES("Daniela","500","2019-07-19","Espera");
INSERT INTO donaciones_espera VALUES("Daniela","500","2019-07-19","Espera");
INSERT INTO donaciones_espera VALUES("Daniela","800","2019-07-19","Espera");
INSERT INTO donaciones_espera VALUES("Daniela","200","2019-07-19","Espera");
INSERT INTO donaciones_espera VALUES("Erwin","500","2019-07-19","Espera");
INSERT INTO donaciones_espera VALUES("Erwin","200","2019-07-19","Espera");
INSERT INTO donaciones_espera VALUES("Erwin","200","2019-07-19","Espera");
INSERT INTO donaciones_espera VALUES("Erwin","800","2019-07-19","Espera");
INSERT INTO donaciones_espera VALUES("Francisco","800","2019-07-19","Espera");
INSERT INTO donaciones_espera VALUES("Grissel","500","2019-07-19","Espera");
INSERT INTO donaciones_espera VALUES("Juan","800","2019-07-19","Espera");
INSERT INTO donaciones_espera VALUES("Karen","200","2019-07-19","Espera");
INSERT INTO donaciones_espera VALUES("karina","800","2019-07-19","Espera");
INSERT INTO donaciones_espera VALUES("karina","200","2019-07-19","Espera");
INSERT INTO donaciones_espera VALUES("karina","500","2019-07-19","Espera");
INSERT INTO donaciones_espera VALUES("karina","200","2019-07-19","Espera");
INSERT INTO donaciones_espera VALUES("karina","800","2019-07-19","Espera");
INSERT INTO donaciones_espera VALUES("karina","500","2019-07-19","Espera");
INSERT INTO donaciones_espera VALUES("Luis","500","2019-07-19","Espera");
INSERT INTO donaciones_espera VALUES("Paticria","800","2019-07-19","Espera");
INSERT INTO donaciones_espera VALUES("Paticria","500","2019-07-19","Espera");
INSERT INTO donaciones_espera VALUES("Pedro","200","2019-07-19","Espera");
INSERT INTO donaciones_espera VALUES("Pedro","200","2019-07-19","Espera");
INSERT INTO donaciones_espera VALUES("Tania","500","2019-07-19","Espera");
INSERT INTO donaciones_espera VALUES("Yessica","500","2019-07-19","Espera");
INSERT INTO donaciones_espera VALUES("Yuridiana","500","2019-07-19","Espera");



DROP TABLE IF EXISTS donaciones_mayores500;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `donaciones_mayores500` AS (select `usuario`.`id_usuario` AS `id_usuario`,`usuario`.`nom_us` AS `nom_us`,`usuario`.`app_us` AS `app_us`,`donaciones`.`cantidad_don` AS `cantidad_don` from (`usuario` join `donaciones`) where ((`usuario`.`id_usuario` = `donaciones`.`id_usuario`) and (`donaciones`.`cantidad_don` > 500)) group by `usuario`.`id_usuario`);

INSERT INTO donaciones_mayores500 VALUES("3","Erwin","Rodriguez","800");
INSERT INTO donaciones_mayores500 VALUES("4","Daniela","Guzman","800");
INSERT INTO donaciones_mayores500 VALUES("5","Daniel","Perez","800");
INSERT INTO donaciones_mayores500 VALUES("7","karina","Palma","800");
INSERT INTO donaciones_mayores500 VALUES("8","Grissel","Palma","800");
INSERT INTO donaciones_mayores500 VALUES("9","Karen","Alba","800");
INSERT INTO donaciones_mayores500 VALUES("10","Luis","Alba","800");
INSERT INTO donaciones_mayores500 VALUES("12","Juan","Zepeda","800");
INSERT INTO donaciones_mayores500 VALUES("15","Yessica","Torres","800");
INSERT INTO donaciones_mayores500 VALUES("16","Paticria","Antonio","800");
INSERT INTO donaciones_mayores500 VALUES("17","Alfonso","Romero","800");
INSERT INTO donaciones_mayores500 VALUES("18","Francisco","Ruiz","800");
INSERT INTO donaciones_mayores500 VALUES("19","Dulce","Villar","800");



DROP TABLE IF EXISTS donaciones_menores500;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `donaciones_menores500` AS (select `usuario`.`id_usuario` AS `id_usuario`,`usuario`.`nom_us` AS `nom_us`,`usuario`.`app_us` AS `app_us`,`donaciones`.`cantidad_don` AS `cantidad_don` from (`usuario` join `donaciones`) where ((`usuario`.`id_usuario` = `donaciones`.`id_usuario`) and (`donaciones`.`cantidad_don` < 500)) group by `usuario`.`id_usuario`);

INSERT INTO donaciones_menores500 VALUES("1","Alison","Rico","400");
INSERT INTO donaciones_menores500 VALUES("2","América","Rico","200");
INSERT INTO donaciones_menores500 VALUES("3","Erwin","Rodriguez","200");
INSERT INTO donaciones_menores500 VALUES("4","Daniela","Guzman","200");
INSERT INTO donaciones_menores500 VALUES("5","Daniel","Perez","200");
INSERT INTO donaciones_menores500 VALUES("6","Pedro","Solis","200");
INSERT INTO donaciones_menores500 VALUES("7","karina","Palma","200");
INSERT INTO donaciones_menores500 VALUES("9","Karen","Alba","200");
INSERT INTO donaciones_menores500 VALUES("11","Tania","De la Rosa","200");
INSERT INTO donaciones_menores500 VALUES("12","Juan","Zepeda","200");
INSERT INTO donaciones_menores500 VALUES("13","Angel","Solis","200");
INSERT INTO donaciones_menores500 VALUES("14","Yuridiana","Lara","200");
INSERT INTO donaciones_menores500 VALUES("17","Alfonso","Romero","200");
INSERT INTO donaciones_menores500 VALUES("19","Dulce","Villar","200");
INSERT INTO donaciones_menores500 VALUES("20","Gustavo","Torres","200");



DROP TABLE IF EXISTS empleado;

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

INSERT INTO empleado VALUES("1","Moisés","Maldonado","Barrientos","Hombre","1999-05-20","2147483647","Independencia","n°09","Villa Cuauhtemoc","Otzolotepec","52080","MaldonadoMoy@hotmail.com","baja");
INSERT INTO empleado VALUES("2","Azucena","Ortigoza","Gonzales","Mujer","1999-12-23","2147483647","vicente guerrero","n°42","Reforma","San mateo atenco","52149","al221810642@gmail.com","baja");
INSERT INTO empleado VALUES("3","Omar ","Blanco","Macedo","Hombre","1998-06-22","2147483647","calle n7","n°17","San jose la pila","Metepec","52149","omarblanco@gmail.com","baja");
INSERT INTO empleado VALUES("4","Roberto","Flores","Fajardo","Hombre","1999-03-05","2147483647","Rayon","n°18","Constituyentes","Toluca","52179","robertoflores@gmail.com","activo");
INSERT INTO empleado VALUES("5","Carlos","Guadarrama","Montoya","Hombre","1999-01-09","2147483647","Clouthier","n°23","Pilares","Metepec","52156","carlosguadarrama@gma","activo");
INSERT INTO empleado VALUES("6","Arturo","Octavio","Victoria","Hombre","0000-00-00","2147483647","2 de abril","n°17","San mateo atenco","San mateo atenco","52157","Octaviovictoria@gmail.com","baja");
INSERT INTO empleado VALUES("7","Rebeca","Guzman","Garduño","Mujer","1995-07-13","2147483647","Hidalgo","n°4","San Lorenzo Coacalco","Metepec","52148","rebecaguzman@gmail.com","activo");
INSERT INTO empleado VALUES("8","Ari","Edson","Martinez","Hombre","1996-11-30","2147483647","Uva","n°28","Izcalli ","Metepec","55130","edsonmartinez@gmail.com","alta");
INSERT INTO empleado VALUES("9","Ariana","Galicia","Mercado","Mujer","1999-10-13","2147483647","Francisco I","n°35","San Jeronimo chicahu","pilares","53293","arianagalicia@gmail.com","activo");
INSERT INTO empleado VALUES("10","Adriana","Matias","Ubaldo","Mujer","1994-12-01","2147483647","Instituto literario","n°30","Los rosales","Toluca","52170","adriubaldo@gmail.com","activo");
INSERT INTO empleado VALUES("11","Jorge","Peralta","Romero","Hombre","1999-06-20","2147483647","Miguel Hidalgo","n°05","El carmen","Pilares","52345","jorgeperalta@gmail.com","activo");
INSERT INTO empleado VALUES("12","Kaleb","Ezquivel","Peralta","Hombre","1998-05-21","2147483647","Josefa ortiz","n°12","El carmen","Pilares","52245","kalebezquivel@gmail.com","activo");
INSERT INTO empleado VALUES("13","Juan","Perez","Sanchez","Hombre","1997-02-28","2147483647","Independencia","n°10","Reforma","Toluca","52010","juanpe@gmail.com","activo");
INSERT INTO empleado VALUES("14","Pedro","Gomez","Dimaz","hombre","1994-08-31","2147483647","Carranza","n°12","Maria del carmen","Metepec","52810","pedrogomez@gmail.com","activo");
INSERT INTO empleado VALUES("15","joseline","Rico","Villar","Mujer","1995-03-28","2147483647","Benito juerez","n°05","Sauces","Toluca","52120","joselin.rico@gmail.com","activo");
INSERT INTO empleado VALUES("16","Carmen","Sanchez","Amado","Mujer","1994-04-27","2147483647","Libertad","n°09","Mercedez","Xonacatlan","52020","carmen.san@gmail.com","activo");
INSERT INTO empleado VALUES("17","Sarai","Hernandez","Troche","Mujer","1994-05-28","2147483647","Santa cruz","n°03","Atarasquillo","Lerma","52010","sara.hernan@gmail.com","activo");
INSERT INTO empleado VALUES("18","julio","Martinez","Torres","Hombre","0000-00-00","2147483647","Division del Norte","n°12","Alvaro Obregon","Lerma","52010","julio.torres@gmail.com","activo");
INSERT INTO empleado VALUES("19","Jesus","Duarte","Tiburcio","Hombre","1999-04-22","2147483647","16 de septiembre","n°11","Atarasquillo","Lerma","52010","jesus.duarte@gmail.com","activo");
INSERT INTO empleado VALUES("20","Daniel","Hernandez ","Rosas","Hombre","1998-09-15","2147483647","Emiliano Zapata","n°10","Reforma","Lerma","52010","dani.rosa@gmail.com","activo");
INSERT INTO empleado VALUES("21","John","Martinez","Gutierrez","Hombre","1997-05-31","2147483647","Niños Héroes","n°2","Pericles","Benito Juarez","52080","JohnSon@gmail.com","activo");



DROP TABLE IF EXISTS perros;

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

INSERT INTO perros VALUES("2","cafe obscuro","mediano","mal","buldog","1","1");
INSERT INTO perros VALUES("3","blanco","grande","bien","Akita Inu","2","2");
INSERT INTO perros VALUES("4","cafe","grande","bien","Alano español","3","3");
INSERT INTO perros VALUES("5","negro","grande","mal","Alaska","4","4");
INSERT INTO perros VALUES("6","cafe obscuro","mediano","mal","American Bully","5","5");
INSERT INTO perros VALUES("7","gris","grande","mal","American pitbull","6","6");
INSERT INTO perros VALUES("8","blanco-cafe","pequeño","mal","Basset hound","7","7");
INSERT INTO perros VALUES("9","cafe","pequeño","mal","Beagle","8","8");
INSERT INTO perros VALUES("10","blanco","pequeño","mal","Bichon Frise","9","9");
INSERT INTO perros VALUES("11","blanco","pequeño","mal","Bichon habanero","10","10");
INSERT INTO perros VALUES("12","blanco","mediano","mal","Bicho Maltes","11","11");
INSERT INTO perros VALUES("13","blanco","mediano","mal","Bobtail","12","12");
INSERT INTO perros VALUES("14","negro","mediano","mal","Bodaguero","13","13");
INSERT INTO perros VALUES("15","blanco","grande","ma","Border Collie","14","14");
INSERT INTO perros VALUES("16","cafe","grande","mal","Boxer","15","15");
INSERT INTO perros VALUES("17","cafe obscuro","grande","bien","Braco Aleman","16","16");
INSERT INTO perros VALUES("18","gris","grande","mal","Braco Weimar","17","17");
INSERT INTO perros VALUES("19","blanco","grande","mal","Bull terrier","18","18");
INSERT INTO perros VALUES("20","negro","pequeño","mal","Bulldog frances","19","19");
INSERT INTO perros VALUES("21","cafe","pequeño","mal","Cairn terrier","20","20");
INSERT INTO perros VALUES("22","negro","grande","mal","Cane Corso ","4","21");
INSERT INTO perros VALUES("23","blanco","pequeño","mal","Caniche","5","22");
INSERT INTO perros VALUES("24","cafe-claro","pequeño","mal","Carlino","3","23");
INSERT INTO perros VALUES("25","cafe","pequeño","bien","chihuahua","1","24");
INSERT INTO perros VALUES("26","blanco-negro","grande","mal","Dalmata","20","25");
INSERT INTO perros VALUES("27","cafe","grande","mal","Dogo","19","26");
INSERT INTO perros VALUES("28","negro","grande","mal","Doberman","4","27");
INSERT INTO perros VALUES("29","negro","grande","mal","Galdo","14","28");
INSERT INTO perros VALUES("30","cafe","mediano","mal","Golden","16","29");
INSERT INTO perros VALUES("31","negro-blanco","mediano","mal","Husky","19","30");
INSERT INTO perros VALUES("32","rojo","grande","mal","Mastin","3","31");
INSERT INTO perros VALUES("33","cafe-negro","mediano","mal","Pastor Aleman","11","32");
INSERT INTO perros VALUES("34","negro","grande","mal","Pastor belga","12","33");
INSERT INTO perros VALUES("35","cafe","pequeño","mal","Perro de agua","20","34");
INSERT INTO perros VALUES("36","negro","grande","mal","Pinscher","18","35");
INSERT INTO perros VALUES("37","cafe-blanco","mediano","mal","Podenco","15","36");
INSERT INTO perros VALUES("38","cafe","mediano","mal","sabueso","4","37");
INSERT INTO perros VALUES("39","negro","pequeño","mal","rottweiler","3","38");
INSERT INTO perros VALUES("40","blanco","pequeño","mal","Pomerania","9","39");
INSERT INTO perros VALUES("41","gris","pequeño","mal","Schnauzer","4","40");
INSERT INTO perros VALUES("42","negro","grande","mal","Schnauzer","11","41");
INSERT INTO perros VALUES("43","negro-blanco","pequeño","mal","Setter","18","42");
INSERT INTO perros VALUES("44","gris","pequeño","mal","Schnauzer","19","43");
INSERT INTO perros VALUES("45","gris","grande","mal","Shar pei","20","44");
INSERT INTO perros VALUES("46","blanco","pequeño","mal","Shig tzu","19","45");
INSERT INTO perros VALUES("47","cafe","mediano","mal","Shiba  inu","11","46");
INSERT INTO perros VALUES("48","gris","grande","mal","Bull terrier","2","47");
INSERT INTO perros VALUES("49","negro","mediano","mal","Terranova","14","48");
INSERT INTO perros VALUES("50","cafe","grande","mal","Tosa ","13","49");
INSERT INTO perros VALUES("51","blanco","mediano","mal","Whippet","11","50");
INSERT INTO perros VALUES("52","Negro","Grande","Mal","rottweiler","19","52");
INSERT INTO perros VALUES("53","cafe","Grande","Mal","Golden","13","53");
INSERT INTO perros VALUES("54","cafe","Mediano","Mal","Golden","15","54");
INSERT INTO perros VALUES("55","negro","Mediano","Mal","Golden","3","55");
INSERT INTO perros VALUES("56","negro","Chico","Mal","Rottweiler","2","56");
INSERT INTO perros VALUES("57","blanco","Chico","Mal","Rottweiler","9","57");
INSERT INTO perros VALUES("58","blanco","Grande","Mal","Rottweiler","18","58");
INSERT INTO perros VALUES("59","blanco","Grande","Mal","Golden","17","59");
INSERT INTO perros VALUES("60","blanco","Grande","Mal","Rottweiler","5","60");
INSERT INTO perros VALUES("61","gris","Chico","Mal","Rottweiler","1","61");
INSERT INTO perros VALUES("62","gris","Grande","Mal","Rottweiler","2","62");
INSERT INTO perros VALUES("63","negro","Chico","Mal","Golden","8","63");
INSERT INTO perros VALUES("64","gris","Chico","Mal","Terry","3","64");
INSERT INTO perros VALUES("65","blanco","Chico","Mal","Rottweiler","5","65");
INSERT INTO perros VALUES("66","cafe","Grande","Mal","Schnauzer","9","66");
INSERT INTO perros VALUES("67","negro","Grande","Mal","Schnauzer","11","67");
INSERT INTO perros VALUES("68","cafe","Mediano","Mal","Terranova","2","68");
INSERT INTO perros VALUES("69","gris","Mediano","Mal","Rottweiler","4","69");
INSERT INTO perros VALUES("70","miel","Mediano","Mal","Schnauzer","2","70");
INSERT INTO perros VALUES("71","miel","Grande","Mal","Golden","3","71");
INSERT INTO perros VALUES("72","blanco","Mediano","Mal","Terranova","11","72");
INSERT INTO perros VALUES("73","negro","Grande","Mal","Schnauzer","9","73");
INSERT INTO perros VALUES("74","miel","Chico","Mal","Golden","11","74");
INSERT INTO perros VALUES("75","blanco","Chico","Mal","Terranova","12","75");
INSERT INTO perros VALUES("76","gris","Chico","Mal","Schnauzer","9","76");
INSERT INTO perros VALUES("77","gris","Chico","Mal","Golden","11","77");
INSERT INTO perros VALUES("78","negro","Grande","Mal","Terranova","19","78");
INSERT INTO perros VALUES("79","blanco","Grande","Mal","Terranova","2","79");
INSERT INTO perros VALUES("80","gris","Chico","Mal","Terranova","2","80");
INSERT INTO perros VALUES("81","negro","Chico","Mal","Golden","9","81");
INSERT INTO perros VALUES("82","gris","Grande","Mal","Bull terrier","11","82");
INSERT INTO perros VALUES("83","gris","Grande","Mal","Schnauzer","14","83");
INSERT INTO perros VALUES("84","blanco","Chico","Mal","Schnauzer","2","84");
INSERT INTO perros VALUES("85","negro","Chico","Mal","Schnauzer","20","85");
INSERT INTO perros VALUES("86","negro","Grande","Mal","Terranova","19","86");
INSERT INTO perros VALUES("87","blanco","Chico","Mal","Golden","17","87");
INSERT INTO perros VALUES("88","gris","Grande","Mal","Terranova","14","88");
INSERT INTO perros VALUES("89","gris","Mediano","Mal","Bull terrier","13","89");
INSERT INTO perros VALUES("90","negro","Chico","Mal","Bull terrier","8","90");
INSERT INTO perros VALUES("91","negro","Mediano","Mal","Bull terrier","9","91");
INSERT INTO perros VALUES("92","gris","Chico","Mal","Schnauzer","11","92");
INSERT INTO perros VALUES("93","blanco","Grande","Mal","Golden","3","93");
INSERT INTO perros VALUES("94","cafe","Chico","Mal","Golden","2","94");
INSERT INTO perros VALUES("95","cafe","Chico","Mal","Golden","9","95");
INSERT INTO perros VALUES("96","blanco","Chico","Mal","Terranova","4","96");
INSERT INTO perros VALUES("97","miel","Mediano","Mal","Pugg","2","97");
INSERT INTO perros VALUES("98","miel","Grande","Mal","Terranova","11","98");
INSERT INTO perros VALUES("99","negro","Chico","Mal","Pugg","19","99");
INSERT INTO perros VALUES("100","miel","Grande","Mal","Golden","4","100");
INSERT INTO perros VALUES("101","negro","Pequeño","Mal","Akita","3","101");
INSERT INTO perros VALUES("102","Negro","Chico","Mal","Bulldog","2","102");
INSERT INTO perros VALUES("103","blanco","grande","mal","husky","1","1");



DROP TABLE IF EXISTS perros_adoptados;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `perros_adoptados` AS (select `usuario`.`nom_us` AS `nom_us`,`perros_adoptivos`.`nom_adop` AS `nom_adop` from (`usuario` join `perros_adoptivos`) where (`usuario`.`id_usuario` = `perros_adoptivos`.`id_usuario`) group by `perros_adoptivos`.`id_adopcion`);

INSERT INTO perros_adoptados VALUES("Alison","misterio");
INSERT INTO perros_adoptados VALUES("Angel","chispa");
INSERT INTO perros_adoptados VALUES("Alison","bombona");
INSERT INTO perros_adoptados VALUES("América","Calvin");
INSERT INTO perros_adoptados VALUES("Erwin","Loqui");
INSERT INTO perros_adoptados VALUES("Daniela","sam");
INSERT INTO perros_adoptados VALUES("Daniel","Golum");
INSERT INTO perros_adoptados VALUES("Pedro","Legolas");
INSERT INTO perros_adoptados VALUES("karina","bender");
INSERT INTO perros_adoptados VALUES("Grissel","bony");
INSERT INTO perros_adoptados VALUES("Karen","balin");
INSERT INTO perros_adoptados VALUES("Luis","bob");
INSERT INTO perros_adoptados VALUES("Karen","bartolo");
INSERT INTO perros_adoptados VALUES("Karen","baxter");
INSERT INTO perros_adoptados VALUES("Grissel","bobby");
INSERT INTO perros_adoptados VALUES("karina","gag");
INSERT INTO perros_adoptados VALUES("karina","fanfarron");
INSERT INTO perros_adoptados VALUES("Pedro","bagatela");
INSERT INTO perros_adoptados VALUES("Pedro","coacain");
INSERT INTO perros_adoptados VALUES("Daniel","vandalo");
INSERT INTO perros_adoptados VALUES("Daniel","beny");
INSERT INTO perros_adoptados VALUES("Daniela","alf");
INSERT INTO perros_adoptados VALUES("Daniela","angus");
INSERT INTO perros_adoptados VALUES("Erwin","anubis");
INSERT INTO perros_adoptados VALUES("Erwin","apolo");
INSERT INTO perros_adoptados VALUES("América","bebeto");
INSERT INTO perros_adoptados VALUES("América","bicho");
INSERT INTO perros_adoptados VALUES("Alison","birko");
INSERT INTO perros_adoptados VALUES("Alison","blacky");
INSERT INTO perros_adoptados VALUES("Tania","boky");
INSERT INTO perros_adoptados VALUES("Juan","brandon");
INSERT INTO perros_adoptados VALUES("Yuridiana","exiliado");
INSERT INTO perros_adoptados VALUES("Angel","corsario");
INSERT INTO perros_adoptados VALUES("Yessica","gitana");
INSERT INTO perros_adoptados VALUES("Paticria","capricho");
INSERT INTO perros_adoptados VALUES("Alfonso","misterio");
INSERT INTO perros_adoptados VALUES("Francisco","patricio");
INSERT INTO perros_adoptados VALUES("Dulce","calamardo");
INSERT INTO perros_adoptados VALUES("Gustavo","arenita");
INSERT INTO perros_adoptados VALUES("Gustavo","perla");
INSERT INTO perros_adoptados VALUES("Dulce","randy");
INSERT INTO perros_adoptados VALUES("Francisco","furia");
INSERT INTO perros_adoptados VALUES("Alfonso","rayo");
INSERT INTO perros_adoptados VALUES("Paticria","ares");
INSERT INTO perros_adoptados VALUES("Yessica","aron");
INSERT INTO perros_adoptados VALUES("Yuridiana","arnold");
INSERT INTO perros_adoptados VALUES("Angel","aston");
INSERT INTO perros_adoptados VALUES("Angel","athos");
INSERT INTO perros_adoptados VALUES("Juan","athenea");
INSERT INTO perros_adoptados VALUES("Tania","prometeo");
INSERT INTO perros_adoptados VALUES("Juan","cronos");
INSERT INTO perros_adoptados VALUES("Juan","zeus");
INSERT INTO perros_adoptados VALUES("Luis","aurelio");
INSERT INTO perros_adoptados VALUES("Luis","aurelion");
INSERT INTO perros_adoptados VALUES("Karen","freya");
INSERT INTO perros_adoptados VALUES("Karen","miya");
INSERT INTO perros_adoptados VALUES("Karen","alucard");
INSERT INTO perros_adoptados VALUES("Grissel","timus");
INSERT INTO perros_adoptados VALUES("Grissel","karina");
INSERT INTO perros_adoptados VALUES("karina","lancelot");
INSERT INTO perros_adoptados VALUES("karina","blue");
INSERT INTO perros_adoptados VALUES("karina","angela");
INSERT INTO perros_adoptados VALUES("Pedro","cartman");
INSERT INTO perros_adoptados VALUES("Pedro","atom");
INSERT INTO perros_adoptados VALUES("Daniel","atila");
INSERT INTO perros_adoptados VALUES("Daniel","dante");
INSERT INTO perros_adoptados VALUES("Daniela","virgilio");
INSERT INTO perros_adoptados VALUES("Daniela","blusy");
INSERT INTO perros_adoptados VALUES("Erwin","brutus");
INSERT INTO perros_adoptados VALUES("Erwin","ladron");
INSERT INTO perros_adoptados VALUES("América","opio");
INSERT INTO perros_adoptados VALUES("América","buck");
INSERT INTO perros_adoptados VALUES("Erwin","john");
INSERT INTO perros_adoptados VALUES("Erwin","grisu");
INSERT INTO perros_adoptados VALUES("Daniela","zorron");
INSERT INTO perros_adoptados VALUES("Daniela","rambo");
INSERT INTO perros_adoptados VALUES("Daniel","tornado");
INSERT INTO perros_adoptados VALUES("Daniel","tormenta");
INSERT INTO perros_adoptados VALUES("Pedro","nube");
INSERT INTO perros_adoptados VALUES("Pedro","sky");
INSERT INTO perros_adoptados VALUES("Angel","bribon");
INSERT INTO perros_adoptados VALUES("Yuridiana","africa");
INSERT INTO perros_adoptados VALUES("Yessica","alaska");
INSERT INTO perros_adoptados VALUES("Alfonso","aura");
INSERT INTO perros_adoptados VALUES("Alfonso","ambar");
INSERT INTO perros_adoptados VALUES("Gustavo","amapola");
INSERT INTO perros_adoptados VALUES("Gustavo","ariel");
INSERT INTO perros_adoptados VALUES("Francisco","audrey");
INSERT INTO perros_adoptados VALUES("Francisco","asia");
INSERT INTO perros_adoptados VALUES("Alfonso","bapsy");
INSERT INTO perros_adoptados VALUES("Alfonso","bellota");
INSERT INTO perros_adoptados VALUES("Paticria","burbuja");
INSERT INTO perros_adoptados VALUES("Paticria","candy");
INSERT INTO perros_adoptados VALUES("Yessica","cloe");
INSERT INTO perros_adoptados VALUES("Angel","chispa");
INSERT INTO perros_adoptados VALUES("Juan","daga");
INSERT INTO perros_adoptados VALUES("Tania","dalila");
INSERT INTO perros_adoptados VALUES("Luis","banana");
INSERT INTO perros_adoptados VALUES("Karen","bora");
INSERT INTO perros_adoptados VALUES("Grissel","canela");
INSERT INTO perros_adoptados VALUES("Alfonso","cocoa");
INSERT INTO perros_adoptados VALUES("Daniela","Moy");
INSERT INTO perros_adoptados VALUES("Pedro","Moy");
INSERT INTO perros_adoptados VALUES("Alfonso","bapsy");
INSERT INTO perros_adoptados VALUES("Yessica","cloe");
INSERT INTO perros_adoptados VALUES("Pedro","sky");
INSERT INTO perros_adoptados VALUES("Daniel","atila");
INSERT INTO perros_adoptados VALUES("karina","lancelot");
INSERT INTO perros_adoptados VALUES("Alfonso","aura");
INSERT INTO perros_adoptados VALUES("Alison","Roku");
INSERT INTO perros_adoptados VALUES("Juan","An");



DROP TABLE IF EXISTS perros_adoptivos;

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

INSERT INTO perros_adoptivos VALUES("1","blanco","grande","bien","akita","misterio","2019-07-04","1");
INSERT INTO perros_adoptivos VALUES("2","blanco","mini","bien","Teckel","chispa","2019-07-26","13");
INSERT INTO perros_adoptivos VALUES("3","miel","grande","bien","pitbull","bombona","2019-07-26","1");
INSERT INTO perros_adoptivos VALUES("4","negro","mini","mal","Chihuahua","Calvin","2019-07-26","2");
INSERT INTO perros_adoptivos VALUES("5","blanco","mediano","bien","chow chow","Loqui","2019-07-26","3");
INSERT INTO perros_adoptivos VALUES("6","cafe","pequeño","bien","Chihuahua","sam","2019-07-26","4");
INSERT INTO perros_adoptivos VALUES("7","negro","mini","bien","Pekinés","Golum","2019-07-26","5");
INSERT INTO perros_adoptivos VALUES("8","blanco","mini","bien","Chihuahua","Legolas","2019-07-26","6");
INSERT INTO perros_adoptivos VALUES("9","negro","mini","bien","Pekinés","bender","2019-07-26","7");
INSERT INTO perros_adoptivos VALUES("10","plata","mediano","bien","chow chow","bony","2019-07-26","8");
INSERT INTO perros_adoptivos VALUES("11","cafe obscuto","grande","mal","rottweiler","balin","2019-07-26","9");
INSERT INTO perros_adoptivos VALUES("12","cafe obscuro","grande","bien","rottweiler","bob","2019-07-26","10");
INSERT INTO perros_adoptivos VALUES("13","negro","pequeño","bien","Pekinés","bartolo","2019-07-26","9");
INSERT INTO perros_adoptivos VALUES("14","blanco","mediano","bien","chow chow","baxter","2019-07-26","9");
INSERT INTO perros_adoptivos VALUES("15","negro","grande","bien","pastor aleman","bobby","2019-07-26","8");
INSERT INTO perros_adoptivos VALUES("16","negro","pequeño","bien","Pekinés","gag","2019-07-26","7");
INSERT INTO perros_adoptivos VALUES("17","miel","pequeño","bien","Pekinés","fanfarron","2019-07-26","7");
INSERT INTO perros_adoptivos VALUES("18","blanco","mini","bien","Chihuahua","bagatela","2019-07-26","6");
INSERT INTO perros_adoptivos VALUES("19","cafe","mini","bien","teckel","coacain","2019-07-26","6");
INSERT INTO perros_adoptivos VALUES("20","plata","pequeño","bien","teckel","vandalo","2019-07-26","5");
INSERT INTO perros_adoptivos VALUES("21","cafe obscuto","grande","bien","golden retriver","beny","2019-07-26","5");
INSERT INTO perros_adoptivos VALUES("22","blanco","grande","bien","rottweiler","alf","2019-07-26","4");
INSERT INTO perros_adoptivos VALUES("23","negro","pequeño","bien","pastor aleman","angus","2019-07-26","4");
INSERT INTO perros_adoptivos VALUES("24","miel","mediano","bien","chow chow","anubis","2019-07-26","3");
INSERT INTO perros_adoptivos VALUES("25","cafe","mini","bien","Chihuahua","apolo","2019-07-26","3");
INSERT INTO perros_adoptivos VALUES("26","blanco","pequeño","bien","poodle","bebeto","2019-07-26","2");
INSERT INTO perros_adoptivos VALUES("27","negro","grande","bien","rottweiler","bicho","2019-07-26","2");
INSERT INTO perros_adoptivos VALUES("28","negro","grande","bien","pastor aleman","birko","2019-07-26","1");
INSERT INTO perros_adoptivos VALUES("29","negro","pequeño","bien","pug","blacky","2019-07-26","1");
INSERT INTO perros_adoptivos VALUES("30","miel","mediano","bien","chow chow","boky","2019-07-26","11");
INSERT INTO perros_adoptivos VALUES("31","cafe","mini","bien","Chihuahua","brandon","2019-07-26","12");
INSERT INTO perros_adoptivos VALUES("32","blanco","grande","bien","pastor aleman","exiliado","2019-07-26","14");
INSERT INTO perros_adoptivos VALUES("33","plata","grande","bien","rottweiler","corsario","2019-07-26","13");
INSERT INTO perros_adoptivos VALUES("34","cafe","mediano","bien","chow chow","gitana","2019-07-26","15");
INSERT INTO perros_adoptivos VALUES("35","blanco","pequeño","bien","chihuahua","capricho","2019-07-26","16");
INSERT INTO perros_adoptivos VALUES("36","negro","mediano","bien","beagle","misterio","2019-07-26","17");
INSERT INTO perros_adoptivos VALUES("37","miel","grande","bien","rottweiler","patricio","2019-07-26","18");
INSERT INTO perros_adoptivos VALUES("38","cafe obscuto","pequeño","mal","pug","calamardo","2019-07-26","19");
INSERT INTO perros_adoptivos VALUES("39","plata","grande","bien","pastor aleman","arenita","2019-07-26","20");
INSERT INTO perros_adoptivos VALUES("40","miel","mediano","bien","beagle","perla","2019-07-26","20");
INSERT INTO perros_adoptivos VALUES("41","cafe","mini","bien","Chihuahua","randy","2019-07-26","19");
INSERT INTO perros_adoptivos VALUES("42","negro","mediano","bien","chow chow","furia","2019-07-26","18");
INSERT INTO perros_adoptivos VALUES("43","negro","grande","bien","rottweiler","rayo","2019-07-26","17");
INSERT INTO perros_adoptivos VALUES("44","miel","mini","bien","Pekinés","ares","2019-07-26","16");
INSERT INTO perros_adoptivos VALUES("45","blanco","grande","bien","rottweiler","aron","2019-07-26","15");
INSERT INTO perros_adoptivos VALUES("46","cafe","mini","bien","Pekinés","arnold","2019-07-26","14");
INSERT INTO perros_adoptivos VALUES("47","negro","grande","bien","rottweiler","aston","2019-07-26","13");
INSERT INTO perros_adoptivos VALUES("48","miel","mediano","bien","chow chow","athos","2019-07-26","13");
INSERT INTO perros_adoptivos VALUES("49","blanco","grande","bien","golden retriever","athenea","2019-07-26","12");
INSERT INTO perros_adoptivos VALUES("50","plata","mediano","bien","cocker","prometeo","2019-07-26","11");
INSERT INTO perros_adoptivos VALUES("51","negro","grande","bien","rottweiler","cronos","2019-07-26","12");
INSERT INTO perros_adoptivos VALUES("52","negro","mediano","bien","cocker","zeus","2019-07-26","12");
INSERT INTO perros_adoptivos VALUES("53","miel","mediano","bien","chow chow","aurelio","2019-07-26","10");
INSERT INTO perros_adoptivos VALUES("54","miel","grande","bien","pastor aleman","aurelion","2019-07-26","10");
INSERT INTO perros_adoptivos VALUES("55","negro","mediano","bien","beagle","freya","2019-07-26","9");
INSERT INTO perros_adoptivos VALUES("56","blanco","mediano","bien","chow chow","miya","2019-07-26","9");
INSERT INTO perros_adoptivos VALUES("57","cafe obscuto","pequeño","bien","chihuahua","alucard","2019-07-26","9");
INSERT INTO perros_adoptivos VALUES("58","miel","grande","bien","rottweiler","timus","2019-07-26","8");
INSERT INTO perros_adoptivos VALUES("59","negro","mediano","bien","beagle","karina","2019-07-26","8");
INSERT INTO perros_adoptivos VALUES("60","cafe obscuto","mediano","bien","cocker","lancelot","2019-07-26","7");
INSERT INTO perros_adoptivos VALUES("61","cafe","mediano","bien","chow chow","blue","2019-07-26","7");
INSERT INTO perros_adoptivos VALUES("62","negro","grande","bien","pastor aleman","angela","2019-07-26","7");
INSERT INTO perros_adoptivos VALUES("63","miel","grande","bien","rottweiler","cartman","2019-07-26","6");
INSERT INTO perros_adoptivos VALUES("64","cafe obscuro","grande","bien","golden retriever","atom","2019-07-26","6");
INSERT INTO perros_adoptivos VALUES("65","negro","grande","bien","golden retriever","atila","2019-07-26","5");
INSERT INTO perros_adoptivos VALUES("66","miel","grande","bien","rottweiler","dante","2019-07-26","5");
INSERT INTO perros_adoptivos VALUES("67","cafe","mediano","bien","beagle","virgilio","2019-07-26","4");
INSERT INTO perros_adoptivos VALUES("68","negro","grande","bien","pastor aleman","blusy","2019-07-26","4");
INSERT INTO perros_adoptivos VALUES("69","miel","mediano","bien","cocker","brutus","2019-07-26","3");
INSERT INTO perros_adoptivos VALUES("70","cafe obscuto","pequeño","mal","pug","ladron","2019-07-26","3");
INSERT INTO perros_adoptivos VALUES("71","cafe obscuto","grande","bien","rottweiler","opio","2019-07-26","2");
INSERT INTO perros_adoptivos VALUES("72","blanco","grande","bien","pastor aleman","buck","2019-07-26","2");
INSERT INTO perros_adoptivos VALUES("73","negro","grande","bien","rottweiler","john","2019-07-26","3");
INSERT INTO perros_adoptivos VALUES("74","cafe obscuto","pequeño","bien","pug","grisu","2019-07-26","3");
INSERT INTO perros_adoptivos VALUES("75","cafe obscuto","grande","bien","golden retriever","zorron","2019-07-26","4");
INSERT INTO perros_adoptivos VALUES("76","miel","mini","bien","Pekinés","rambo","2019-07-26","4");
INSERT INTO perros_adoptivos VALUES("77","blanco","grande","bien","pastor aleman","tornado","2019-07-26","5");
INSERT INTO perros_adoptivos VALUES("78","negro","mediano","bien","beagle","tormenta","2019-07-26","5");
INSERT INTO perros_adoptivos VALUES("79","cafe","mediano","bien","chow chow","nube","2019-07-26","6");
INSERT INTO perros_adoptivos VALUES("80","miel","mini","bien","Pekinés","sky","2019-07-26","6");
INSERT INTO perros_adoptivos VALUES("81","cafe obscuto","grande","bien","pastor aleman","bribon","2019-07-26","13");
INSERT INTO perros_adoptivos VALUES("82","negro","grande","bien","rottweiler","africa","2019-07-26","14");
INSERT INTO perros_adoptivos VALUES("83","plata","mediano","bien","chow chow","alaska","2019-07-26","15");
INSERT INTO perros_adoptivos VALUES("84","miel","grande","bien","golden retriever","aura","2019-07-26","17");
INSERT INTO perros_adoptivos VALUES("85","miel","mini","bien","Pekinés","ambar","2019-07-26","17");
INSERT INTO perros_adoptivos VALUES("86","negro","mediano","bien","beagle","amapola","2019-07-26","20");
INSERT INTO perros_adoptivos VALUES("87","blanco","mini","bien","Pekinés","ariel","2019-07-26","20");
INSERT INTO perros_adoptivos VALUES("88","miel","grande","bien","pastor aleman","audrey","2019-07-26","18");
INSERT INTO perros_adoptivos VALUES("89","plata","pequeño","bien","pug","asia","2019-07-26","18");
INSERT INTO perros_adoptivos VALUES("90","negro","mediano","bien","chow chow","bapsy","2019-07-26","17");
INSERT INTO perros_adoptivos VALUES("91","cafe","mini","bien","Teckel","bellota","2019-07-26","17");
INSERT INTO perros_adoptivos VALUES("92","negro","grande","bien","pastor aleman","burbuja","2019-07-26","16");
INSERT INTO perros_adoptivos VALUES("93","miel","grande","bien","golden retriever","candy","2019-07-26","16");
INSERT INTO perros_adoptivos VALUES("94","plata","mediano","bien","chow chow","cloe","2019-07-26","15");
INSERT INTO perros_adoptivos VALUES("95","blanco","mini","bien","Teckel","chispa","2019-07-26","13");
INSERT INTO perros_adoptivos VALUES("96","negro","grande","bien","pastor aleman","daga","2019-07-26","12");
INSERT INTO perros_adoptivos VALUES("97","miel","grande","bien","golden retriever","dalila","2019-07-26","11");
INSERT INTO perros_adoptivos VALUES("98","cafe","grande","bien","rottweiler","banana","2019-07-26","10");
INSERT INTO perros_adoptivos VALUES("99","negro","mediano","bien","chow chow","bora","2019-07-26","9");
INSERT INTO perros_adoptivos VALUES("100","blanco","mini","bien","Teckel","canela","2019-07-26","8");
INSERT INTO perros_adoptivos VALUES("101","negro","grande","bien","rottweiler","cocoa","2019-07-26","17");
INSERT INTO perros_adoptivos VALUES("102","blanco","grande","bien","Akita Inu","Moy","2019-07-26","4");
INSERT INTO perros_adoptivos VALUES("103","","","","","","","");
INSERT INTO perros_adoptivos VALUES("104","blanco","grande","bien","Akita Inu","Moy","2019-07-26","6");
INSERT INTO perros_adoptivos VALUES("105","negro","mediano","bien","chow chow","bapsy","2019-07-26","17");
INSERT INTO perros_adoptivos VALUES("106","plata","mediano","bien","chow chow","cloe","2019-07-26","15");
INSERT INTO perros_adoptivos VALUES("107","miel","mini","bien","Pekinés","sky","2019-07-26","6");
INSERT INTO perros_adoptivos VALUES("108","negro","grande","bien","golden retriever","atila","2019-07-26","5");
INSERT INTO perros_adoptivos VALUES("109","cafe obscuto","mediano","bien","cocker","lancelot","2019-07-26","7");
INSERT INTO perros_adoptivos VALUES("110","miel","grande","bien","golden retriever","aura","2019-07-26","17");
INSERT INTO perros_adoptivos VALUES("111","Negro","Chico","Bien","Akita","Roku","2019-07-27","1");
INSERT INTO perros_adoptivos VALUES("112","cafe","grande","bien","Alano español","An","2019-07-28","12");



DROP TABLE IF EXISTS perros_rescatados;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `perros_rescatados` AS (select `perros`.`id_perro` AS `id_perro`,`perros`.`color_perro` AS `color_perro`,`perros`.`tamaño_perro` AS `tamaño_perro`,`perros`.`raza_perro` AS `raza_perro`,`empleado`.`nom_emp` AS `nom_emp` from (`perros` join `empleado`) where (`empleado`.`id_empleado` = `perros`.`id_empleado`) group by `perros`.`id_perro`);

INSERT INTO perros_rescatados VALUES("2","cafe obscuro","mediano","buldog","Moisés");
INSERT INTO perros_rescatados VALUES("3","blanco","grande","Akita Inu","Azucena");
INSERT INTO perros_rescatados VALUES("4","cafe","grande","Alano español","Omar ");
INSERT INTO perros_rescatados VALUES("5","negro","grande","Alaska","Roberto");
INSERT INTO perros_rescatados VALUES("6","cafe obscuro","mediano","American Bully","Carlos");
INSERT INTO perros_rescatados VALUES("7","gris","grande","American pitbull","Arturo");
INSERT INTO perros_rescatados VALUES("8","blanco-cafe","pequeño","Basset hound","Rebeca");
INSERT INTO perros_rescatados VALUES("9","cafe","pequeño","Beagle","Ari");
INSERT INTO perros_rescatados VALUES("10","blanco","pequeño","Bichon Frise","Ariana");
INSERT INTO perros_rescatados VALUES("11","blanco","pequeño","Bichon habanero","Adriana");
INSERT INTO perros_rescatados VALUES("12","blanco","mediano","Bicho Maltes","Jorge");
INSERT INTO perros_rescatados VALUES("13","blanco","mediano","Bobtail","Kaleb");
INSERT INTO perros_rescatados VALUES("14","negro","mediano","Bodaguero","Juan");
INSERT INTO perros_rescatados VALUES("15","blanco","grande","Border Collie","Pedro");
INSERT INTO perros_rescatados VALUES("16","cafe","grande","Boxer","joseline");
INSERT INTO perros_rescatados VALUES("17","cafe obscuro","grande","Braco Aleman","Carmen");
INSERT INTO perros_rescatados VALUES("18","gris","grande","Braco Weimar","Sarai");
INSERT INTO perros_rescatados VALUES("19","blanco","grande","Bull terrier","julio");
INSERT INTO perros_rescatados VALUES("20","negro","pequeño","Bulldog frances","Jesus");
INSERT INTO perros_rescatados VALUES("21","cafe","pequeño","Cairn terrier","Daniel");
INSERT INTO perros_rescatados VALUES("22","negro","grande","Cane Corso ","Roberto");
INSERT INTO perros_rescatados VALUES("23","blanco","pequeño","Caniche","Carlos");
INSERT INTO perros_rescatados VALUES("24","cafe-claro","pequeño","Carlino","Omar ");
INSERT INTO perros_rescatados VALUES("25","cafe","pequeño","chihuahua","Moisés");
INSERT INTO perros_rescatados VALUES("26","blanco-negro","grande","Dalmata","Daniel");
INSERT INTO perros_rescatados VALUES("27","cafe","grande","Dogo","Jesus");
INSERT INTO perros_rescatados VALUES("28","negro","grande","Doberman","Roberto");
INSERT INTO perros_rescatados VALUES("29","negro","grande","Galdo","Pedro");
INSERT INTO perros_rescatados VALUES("30","cafe","mediano","Golden","Carmen");
INSERT INTO perros_rescatados VALUES("31","negro-blanco","mediano","Husky","Jesus");
INSERT INTO perros_rescatados VALUES("32","rojo","grande","Mastin","Omar ");
INSERT INTO perros_rescatados VALUES("33","cafe-negro","mediano","Pastor Aleman","Jorge");
INSERT INTO perros_rescatados VALUES("34","negro","grande","Pastor belga","Kaleb");
INSERT INTO perros_rescatados VALUES("35","cafe","pequeño","Perro de agua","Daniel");
INSERT INTO perros_rescatados VALUES("36","negro","grande","Pinscher","julio");
INSERT INTO perros_rescatados VALUES("37","cafe-blanco","mediano","Podenco","joseline");
INSERT INTO perros_rescatados VALUES("38","cafe","mediano","sabueso","Roberto");
INSERT INTO perros_rescatados VALUES("39","negro","pequeño","rottweiler","Omar ");
INSERT INTO perros_rescatados VALUES("40","blanco","pequeño","Pomerania","Ariana");
INSERT INTO perros_rescatados VALUES("41","gris","pequeño","Schnauzer","Roberto");
INSERT INTO perros_rescatados VALUES("42","negro","grande","Schnauzer","Jorge");
INSERT INTO perros_rescatados VALUES("43","negro-blanco","pequeño","Setter","julio");
INSERT INTO perros_rescatados VALUES("44","gris","pequeño","Schnauzer","Jesus");
INSERT INTO perros_rescatados VALUES("45","gris","grande","Shar pei","Daniel");
INSERT INTO perros_rescatados VALUES("46","blanco","pequeño","Shig tzu","Jesus");
INSERT INTO perros_rescatados VALUES("47","cafe","mediano","Shiba  inu","Jorge");
INSERT INTO perros_rescatados VALUES("48","gris","grande","Bull terrier","Azucena");
INSERT INTO perros_rescatados VALUES("49","negro","mediano","Terranova","Pedro");
INSERT INTO perros_rescatados VALUES("50","cafe","grande","Tosa ","Juan");
INSERT INTO perros_rescatados VALUES("51","blanco","mediano","Whippet","Jorge");
INSERT INTO perros_rescatados VALUES("52","Negro","Grande","rottweiler","Jesus");
INSERT INTO perros_rescatados VALUES("53","cafe","Grande","Golden","Juan");
INSERT INTO perros_rescatados VALUES("54","cafe","Mediano","Golden","joseline");
INSERT INTO perros_rescatados VALUES("55","negro","Mediano","Golden","Omar ");
INSERT INTO perros_rescatados VALUES("56","negro","Chico","Rottweiler","Azucena");
INSERT INTO perros_rescatados VALUES("57","blanco","Chico","Rottweiler","Ariana");
INSERT INTO perros_rescatados VALUES("58","blanco","Grande","Rottweiler","julio");
INSERT INTO perros_rescatados VALUES("59","blanco","Grande","Golden","Sarai");
INSERT INTO perros_rescatados VALUES("60","blanco","Grande","Rottweiler","Carlos");
INSERT INTO perros_rescatados VALUES("61","gris","Chico","Rottweiler","Moisés");
INSERT INTO perros_rescatados VALUES("62","gris","Grande","Rottweiler","Azucena");
INSERT INTO perros_rescatados VALUES("63","negro","Chico","Golden","Ari");
INSERT INTO perros_rescatados VALUES("64","gris","Chico","Terry","Omar ");
INSERT INTO perros_rescatados VALUES("65","blanco","Chico","Rottweiler","Carlos");
INSERT INTO perros_rescatados VALUES("66","cafe","Grande","Schnauzer","Ariana");
INSERT INTO perros_rescatados VALUES("67","negro","Grande","Schnauzer","Jorge");
INSERT INTO perros_rescatados VALUES("68","cafe","Mediano","Terranova","Azucena");
INSERT INTO perros_rescatados VALUES("69","gris","Mediano","Rottweiler","Roberto");
INSERT INTO perros_rescatados VALUES("70","miel","Mediano","Schnauzer","Azucena");
INSERT INTO perros_rescatados VALUES("71","miel","Grande","Golden","Omar ");
INSERT INTO perros_rescatados VALUES("72","blanco","Mediano","Terranova","Jorge");
INSERT INTO perros_rescatados VALUES("73","negro","Grande","Schnauzer","Ariana");
INSERT INTO perros_rescatados VALUES("74","miel","Chico","Golden","Jorge");
INSERT INTO perros_rescatados VALUES("75","blanco","Chico","Terranova","Kaleb");
INSERT INTO perros_rescatados VALUES("76","gris","Chico","Schnauzer","Ariana");
INSERT INTO perros_rescatados VALUES("77","gris","Chico","Golden","Jorge");
INSERT INTO perros_rescatados VALUES("78","negro","Grande","Terranova","Jesus");
INSERT INTO perros_rescatados VALUES("79","blanco","Grande","Terranova","Azucena");
INSERT INTO perros_rescatados VALUES("80","gris","Chico","Terranova","Azucena");
INSERT INTO perros_rescatados VALUES("81","negro","Chico","Golden","Ariana");
INSERT INTO perros_rescatados VALUES("82","gris","Grande","Bull terrier","Jorge");
INSERT INTO perros_rescatados VALUES("83","gris","Grande","Schnauzer","Pedro");
INSERT INTO perros_rescatados VALUES("84","blanco","Chico","Schnauzer","Azucena");
INSERT INTO perros_rescatados VALUES("85","negro","Chico","Schnauzer","Daniel");
INSERT INTO perros_rescatados VALUES("86","negro","Grande","Terranova","Jesus");
INSERT INTO perros_rescatados VALUES("87","blanco","Chico","Golden","Sarai");
INSERT INTO perros_rescatados VALUES("88","gris","Grande","Terranova","Pedro");
INSERT INTO perros_rescatados VALUES("89","gris","Mediano","Bull terrier","Juan");
INSERT INTO perros_rescatados VALUES("90","negro","Chico","Bull terrier","Ari");
INSERT INTO perros_rescatados VALUES("91","negro","Mediano","Bull terrier","Ariana");
INSERT INTO perros_rescatados VALUES("92","gris","Chico","Schnauzer","Jorge");
INSERT INTO perros_rescatados VALUES("93","blanco","Grande","Golden","Omar ");
INSERT INTO perros_rescatados VALUES("94","cafe","Chico","Golden","Azucena");
INSERT INTO perros_rescatados VALUES("95","cafe","Chico","Golden","Ariana");
INSERT INTO perros_rescatados VALUES("96","blanco","Chico","Terranova","Roberto");
INSERT INTO perros_rescatados VALUES("97","miel","Mediano","Pugg","Azucena");
INSERT INTO perros_rescatados VALUES("98","miel","Grande","Terranova","Jorge");
INSERT INTO perros_rescatados VALUES("99","negro","Chico","Pugg","Jesus");
INSERT INTO perros_rescatados VALUES("100","miel","Grande","Golden","Roberto");
INSERT INTO perros_rescatados VALUES("101","negro","Pequeño","Akita","Omar ");
INSERT INTO perros_rescatados VALUES("102","Negro","Chico","Bulldog","Azucena");
INSERT INTO perros_rescatados VALUES("103","blanco","grande","husky","Moisés");



DROP TABLE IF EXISTS usuario;

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

INSERT INTO usuario VALUES("1","Alison","Rico","Villar","Mujer","contra\n","2147483647","Bolivares","n°07","Infonavit","Metepec","55342","baja");
INSERT INTO usuario VALUES("2","América","Rico","Estrada","Mujer","contra","2147483647","Navarro","0","","Toluca","55234","baja");
INSERT INTO usuario VALUES("3","Erwin","Rodriguez","Balero","Hombre","contra","2147483647","Miguel hidalgo","0","n°10","Metepec","55145","baja");
INSERT INTO usuario VALUES("4","Daniela","Guzman","Flores","Mujer","contra","2147483647","Gobernadores","0","n°11","Lerma","55147","alta");
INSERT INTO usuario VALUES("5","Daniel","Perez","Torreblanca","Hombre","contra","2147483647","Moctezuma","0","n°12","Metepec","55156","alta");
INSERT INTO usuario VALUES("6","Pedro","Solis","Gomez","Hombre","contra","2147483647","Naranja","0","n°13","Toluca","55198","alta");
INSERT INTO usuario VALUES("7","karina","Palma","Becerra","Mujer","contra","2147483647","Piña","0","n°14","Metepec","55700","baja");
INSERT INTO usuario VALUES("8","Grissel","Palma","Becerra","Mujer","contra","2147483647","Cohelo","0","n°15","Lerma","55984","alta");
INSERT INTO usuario VALUES("9","Karen","Alba","Palma","Mujer","contra","2147483647","Libertad","0","n°19","Toluca","55123","alta");
INSERT INTO usuario VALUES("10","Luis","Alba","Palma","Hombre","contra","2147483647","16 de septiembre","0","n°20","Lerma","55453","alta");
INSERT INTO usuario VALUES("11","Tania","De la Rosa","Nuñez","Mujer","contra","2147483647","16 de septiembre","0","Analco","Lerma","52010","alta");
INSERT INTO usuario VALUES("12","Juan","Zepeda","Galicia","Hombre","contra","2147483647","Benito juarez","0","Reforma","Toluca","55020","alta");
INSERT INTO usuario VALUES("13","Angel","Solis","Zepeda","Hombre","contra","2147483647","Libertad","0","Alvaro Obregon","Lerma","52010","alta");
INSERT INTO usuario VALUES("14","Yuridiana","Lara","Jimenez","Mujer","contra","2147483647","Heroes","0","Santa Maria","Toluca","55020","alta");
INSERT INTO usuario VALUES("15","Yessica","Torres","Aristeo","Mujer","contra","2147483647","Colima","0","Pueblo Nuevo","Lerma","52010","alta");
INSERT INTO usuario VALUES("16","Paticria","Antonio","Hernandez","Mujer","contra","2147483647","Santa cruz","0","Alvaro Obregon","Metepec","55310","alta");
INSERT INTO usuario VALUES("17","Alfonso","Romero","Peña","Hombre","contra","2147483647","Matamoroz","0","Metate Viejo","Lerma","55","alta");
INSERT INTO usuario VALUES("18","Francisco","Ruiz","Martinez","Hombre","contra","2147483647","Venustiano Carranza","0","Las Marinas","Metepec","55310","alta");
INSERT INTO usuario VALUES("19","Dulce","Villar","Garcia","Mujer","contra","2147483647","Niños Heroes","0","Alvaro Obregon","Lerma","52010","eliminar");
INSERT INTO usuario VALUES("20","Gustavo","Torres","Amador","Hombre","contra","2147483647","Francisco Vila","0","Santa fe","Toluca","55020","alta");



SET FOREIGN_KEY_CHECKS=1;