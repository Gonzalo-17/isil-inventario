-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 02-02-2024 a las 20:27:41
-- Versión del servidor: 5.6.51
-- Versión de PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `isil_inventario`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `almacen`
--

DROP TABLE IF EXISTS `almacen`;
CREATE TABLE IF NOT EXISTS `almacen` (
  `ID_Almacen` int(11) NOT NULL AUTO_INCREMENT,
  `Tipo_almacen` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`ID_Almacen`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `almacen`
--

INSERT INTO `almacen` (`ID_Almacen`, `Tipo_almacen`) VALUES
(1, 'Informática'),
(2, 'Fotografía');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipo`
--

DROP TABLE IF EXISTS `equipo`;
CREATE TABLE IF NOT EXISTS `equipo` (
  `ID_equipo` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre_equipo` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`ID_equipo`)
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `equipo`
--

INSERT INTO `equipo` (`ID_equipo`, `Nombre_equipo`) VALUES
(1, 'CAMARA'),
(2, 'BATERÍA'),
(3, 'CARGADOR DE BATERIA T5'),
(4, 'LENTE MACRO'),
(5, 'LENTE EF 28MM'),
(6, 'LENTE TELEOBJETIVO EF70-200'),
(7, 'SPEEDLITE'),
(8, 'FOTÓMETRO'),
(9, 'RTS'),
(10, 'CÁMARA DE VIDEO'),
(11, 'CARGADOR DE VIDEO'),
(12, 'BATERIA DE VIDEO'),
(13, 'MICRÓFONO DE MANO'),
(14, 'MICRÓFONO PERCHERO'),
(15, 'TRANSMISOR PERCHERO'),
(16, 'RECEPTOR PERCHERO'),
(17, 'MICRÓFONO BOOM'),
(18, 'MANUBRIO'),
(19, 'CAÑA BOOM'),
(20, 'LECTORA DE MEMORIA'),
(21, 'AUDÍFONOS'),
(22, 'MALETA CON 3 LUCES + 3 TRIPODES'),
(23, 'MALETA CON 2 LUCES + 2 TRIPODES'),
(24, 'MALETA CON 3 LUCES 650 + 1 TRIPODE AS01570051 + 2 050MKARF'),
(25, 'MALETA'),
(26, 'TRÍPODE'),
(27, 'BOWENS'),
(28, 'OLLA'),
(29, 'SNOOTH'),
(30, 'OLLA CON GRILLA'),
(31, 'PARANTE O TRÍPODE FOTO'),
(32, 'PORTAFONDO'),
(33, 'SOFTBOX '),
(34, 'TRÍPODE DE FOTO'),
(35, 'SOMBRILLA BLANCO/NEGRO'),
(36, 'REBOTADOR'),
(37, 'EXTENSIONES DE CABLE VULCANIZADO'),
(38, 'EXTENSIONES SOLERA'),
(39, 'EXTENSIONES '),
(40, 'EXTENSION HALUX'),
(41, 'MALETA PORTA MICROFONO'),
(42, 'MESA DE PRODUCTO PORTATIL'),
(43, 'CAJA DE PRODUCTO'),
(44, 'LENTE'),
(45, 'LENTES EF50'),
(46, 'LENTES EF70-200'),
(47, 'LENTES EF100'),
(48, 'MEMORIAS SD (31 UNIDADES)'),
(49, 'MULTILECTOR DE MEMORIAS '),
(50, 'PAÑOS DE LIMPIEZA (3 CAJITAS)'),
(51, 'Audífonos'),
(52, 'Pack - Micrófono Inalambrico Solapero'),
(53, 'Micrófono Unidireccional'),
(54, 'Estrella para Trípode'),
(55, 'Cabezal de Tripode'),
(56, 'PELUCHE DE MICROFONO RODE WS6'),
(57, 'CABLE XRL '),
(58, 'FOTOMETRO'),
(59, 'MEMORIAS SD (13 UNIDADES)'),
(60, 'Bateria de Camara Fotografica '),
(61, 'Bateria Larga Duración para Videocamara'),
(62, 'Bateria de Camara Fotografica'),
(63, 'Bateria cr2032 '),
(64, 'Focos para Flash Bowens '),
(65, 'Cables para microfono '),
(66, 'Rejilla para difusor Bowens'),
(67, 'Rebotadores '),
(68, 'Esponja Repuesto De Microfonos'),
(69, 'MEMORIAS SD '),
(70, 'ADAPTADOR DE MICROSD A SD '),
(71, 'BW FLASH TUBE (ANILLO DE REPUESTO BOWENS)'),
(72, 'FOCO REPUESTO PARA FLASH BOWENS '),
(73, 'BATERIA PARA CANON 6D LP-E6N'),
(74, 'BATERIA PARA CANON 6D LP-E6'),
(75, 'CARGADOR DE BATERIA (1 UNIDAD)'),
(76, 'AUDIFONO'),
(77, 'SOMBRILLA GENERICO'),
(78, 'SOMBRILLA GODOX'),
(79, 'TRIPODE'),
(80, 'FONDOS GRIS LOTE 2023'),
(81, 'FONDOS VERDES LOTE 2023'),
(82, 'TRIPODE PARA LUZ ARRI'),
(83, 'TRIPODE BOWEN BW6610 (2 UNIDADES)'),
(84, 'TRIPODE GENERICO (2 UNIDADES)'),
(85, 'SOMBRILLA (2 UNIDADES)'),
(86, 'MALETA PARA VIDEOCAMARA (2 UNIDADES)'),
(87, 'MALETA DE LUCES ARRI 3 DE 650+3 TRIPODES'),
(88, 'MALETA PARA FLASH BOWENS'),
(89, 'MALETIN PARA TRIPODE (2 UNIDADES)'),
(90, 'TUBO RECUBIERTO BW-2032 (10 UNIDADES)'),
(91, 'TUBO RECUBIERTO BW-1079 (1 UNIDADES)'),
(92, 'FOCO PARA LUCES ARRI DE 650 '),
(93, 'FOCO PARA LUCES ARRI DE 300 '),
(94, 'FOCO PARA LUCES ARRI DE 650 '),
(95, 'FOCO PARA LUCES ARRI DE 1000'),
(96, 'FOCO PARA LUCES ARRI DE 150 '),
(97, 'FOCO PARA LUCES ARRI DE 500'),
(98, 'CABLE MICROFONO CANON'),
(99, 'CABLE ENTRADA MINIPLUG A CANON '),
(100, 'CABLE DE PODER LARGO '),
(101, 'CABLE DE PODER 1.5 MTS APROX'),
(102, 'CABLE HDMI '),
(103, 'FILTRO AZUL '),
(104, 'FILTRO ROJO '),
(105, 'FILTRO BLANCO '),
(106, 'FONDO BLANCO EN CAJA )'),
(107, 'FONDO NEGRO EN CAJA '),
(108, 'FONDO GRIS EN CAJA '),
(109, 'FONDO NEGRO EN CONO '),
(110, 'FONDO BLANCO EN CONO '),
(111, 'MALETA DE ILUMINACION'),
(112, 'MALETINES PARA CAMARA CANON '),
(113, 'BEAUTYDISH '),
(114, 'MONITOR ASUS'),
(115, 'TELAS VERDE CLARO, VERDE OSCURO Y 2 NEGROS'),
(116, 'PARLANTE'),
(117, 'INFINTY BOARD'),
(118, 'ESTUCHES PARA SOFTBOX LUMINAIR '),
(119, 'ESCALERA DE 3 PASOS'),
(120, 'CARRITO PARA FILMACION'),
(121, 'ARCHIVADORES'),
(122, 'RUEDAS PARA CARRITO DE FILMACION 3 UNIDADES'),
(123, 'DVD PANASONIC'),
(124, 'ACCESORIOS VARIOS');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado`
--

DROP TABLE IF EXISTS `estado`;
CREATE TABLE IF NOT EXISTS `estado` (
  `ID_estado` int(11) NOT NULL AUTO_INCREMENT,
  `ID_operatividad` int(11) NOT NULL,
  `Observaciones` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID_estado`),
  KEY `ID_operatividad` (`ID_operatividad`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `estado`
--

INSERT INTO `estado` (`ID_estado`, `ID_operatividad`, `Observaciones`) VALUES
(1, 2, 'Se rompio la patita'),
(2, 1, 'La luz esta amarillenta');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ficha`
--

DROP TABLE IF EXISTS `ficha`;
CREATE TABLE IF NOT EXISTS `ficha` (
  `ID_ficha` int(11) NOT NULL AUTO_INCREMENT,
  `ID_ubicacion` int(11) NOT NULL,
  `ID_stock` int(11) NOT NULL,
  `ID_usuario` int(11) NOT NULL,
  `ID_estado` int(11) NOT NULL,
  `Fecha_registro` datetime DEFAULT NULL,
  `ID_usuario_modificador` int(11) DEFAULT NULL,
  `Fecha_modificacion` datetime DEFAULT NULL,
  PRIMARY KEY (`ID_ficha`),
  KEY `ID_ubicacion` (`ID_ubicacion`),
  KEY `ID_stock` (`ID_stock`),
  KEY `ID_usuario` (`ID_usuario`),
  KEY `ID_estado` (`ID_estado`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ficha`
--

INSERT INTO `ficha` (`ID_ficha`, `ID_ubicacion`, `ID_stock`, `ID_usuario`, `ID_estado`, `Fecha_registro`, `ID_usuario_modificador`, `Fecha_modificacion`) VALUES
(1, 2, 2, 2, 2, '2024-01-22 14:59:31', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marca`
--

DROP TABLE IF EXISTS `marca`;
CREATE TABLE IF NOT EXISTS `marca` (
  `ID_marca` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre_marca` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`ID_marca`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `marca`
--

INSERT INTO `marca` (`ID_marca`, `Nombre_marca`) VALUES
(1, 'CANON'),
(2, 'POLARIS'),
(3, 'BOWENS'),
(4, 'PIXEL'),
(5, 'SONY'),
(6, 'SHURE'),
(7, 'SENNHEISER'),
(8, 'RODE'),
(9, 'AURAY'),
(10, 'K-TEK'),
(11, 'SANDISK'),
(12, 'ARRI'),
(13, 'LOWEL DP'),
(14, 'MANFROTTO'),
(15, 'RED WING'),
(16, 'IMPACT'),
(17, 'FOTOBE/STWAY'),
(18, 'PLOMAS'),
(19, 'SOLERA'),
(20, 'CUPPER'),
(21, 'PATRIOT'),
(22, 'UGREEN'),
(23, 'ZEISS'),
(24, 'KOPUL'),
(25, 'GOSSEN'),
(26, 'DELKIN DEVICES'),
(27, 'KINGSTON'),
(28, 'GODOX'),
(29, 'NEUTRIK'),
(30, 'WINDTECH'),
(31, 'LEXAR MULTIUSE'),
(32, 'LEXAR PLATINUM2'),
(33, 'LEXAR'),
(34, 'SAVAGE'),
(35, 'SACHTLER'),
(36, 'GENERICO'),
(37, 'PHILIPS'),
(38, 'OSRAM'),
(39, 'SHOWBIZ'),
(40, 'CASSELL'),
(41, 'ROSCO'),
(42, 'NEEWER'),
(43, 'ASUS'),
(44, 'CREATIVE'),
(45, 'MSEGRIP');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modelo`
--

DROP TABLE IF EXISTS `modelo`;
CREATE TABLE IF NOT EXISTS `modelo` (
  `ID_modelo` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre_modelo` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID_modelo`)
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `modelo`
--

INSERT INTO `modelo` (`ID_modelo`, `Nombre_modelo`) VALUES
(1, 'EOS - REBEL T5'),
(2, 'EOS - REBEL T5'),
(3, 'EOS - 6D (MARK II)'),
(4, 'LP-E10'),
(5, 'LC-E10'),
(6, 'EF 100 MM F/1.2.8 USM'),
(7, 'EF 28 MM F/1,8 USM'),
(8, 'EF 70-200 MM F/2.8L USM'),
(9, '580EXII'),
(10, 'FLASH METER'),
(11, 'PULSAR - BW5170'),
(12, 'SOLDIER'),
(13, 'NXCAM - HXR-NX5N'),
(14, 'NXCAM - HXR-NX3'),
(15, 'AC-VQ1051D'),
(16, 'AC-VL1'),
(17, 'AC - VL1'),
(18, 'NP-F970'),
(19, 'NP-F570'),
(20, 'PG58'),
(21, 'SK100 G3'),
(22, 'EK100 G3'),
(23, 'ME 66'),
(24, 'DUSM-1'),
(25, 'Avalon KE-89CC'),
(26, 'MRW-EA7'),
(27, 'MRW-E80'),
(28, 'MDR - 7502'),
(29, 'MDR - 7506'),
(30, 'ARRI - 650-300-150 W'),
(31, 'ARRI - 300W -150 W'),
(32, 'ARRI - 650 W'),
(33, '1000 w'),
(34, '546B'),
(35, 'GEMINI GM1000PRO'),
(36, 'GEMINI GM500PRO'),
(37, 'GEMINI GM500R'),
(38, 'GEMINI GM500C'),
(39, 'BW6615'),
(40, 'BW6610'),
(41, '272B'),
(42, '1052BAC'),
(43, 'LUMINAIR'),
(44, 'VCT-R640'),
(45, '732CY'),
(46, 'EFS 18-55 MM'),
(47, '4B'),
(48, 'EF 50 MM F/1.8 STM'),
(49, 'EF 70-200 MM F/2.8L IS III USM'),
(50, 'EF 100 MM F/2.8L MACRO IS USM'),
(51, 'SD DE 64GB'),
(52, '30333 USB 3.0'),
(53, 'CLEANING TISSUE'),
(54, 'HD 206'),
(55, 'EK 100 G4'),
(56, 'MKE600'),
(57, '165mv'),
(58, '496RC2'),
(59, 'DELUXE WINDSHIELD WS6'),
(60, 'SERIES 3000 1.5 MTS'),
(61, 'SIXTOMAT F2'),
(62, 'SD DE 16GB'),
(63, 'JDD F27'),
(64, 'NC-MXX'),
(65, 'NC-MX'),
(66, 'BW 1864'),
(67, 'RFT-10'),
(68, 'SG-1'),
(69, 'SD DE 8GB'),
(70, 'SD DE 4GB'),
(71, 'ADAPTADOR'),
(72, 'LP-E6N'),
(73, 'LP-E6'),
(74, 'LC-E6'),
(75, 'EOS - REBEL T5i'),
(76, 'EOS - REBEL T6'),
(77, 'EOS - REBEL T6'),
(78, 'HD202'),
(79, 'MK-190X3-2W'),
(80, '56-12 FASHION GRAY'),
(81, '46-12 TECH GREEN'),
(82, '050MKARF'),
(83, 'SC003'),
(84, 'I-TRIGUE 3400'),
(85, 'EOS - REBEL T5'),
(86, 'EOS - REBEL T5'),
(87, 'EOS - 6D (MARK II)'),
(88, 'LP-E10'),
(89, 'LC-E10'),
(90, 'EF 100 MM F/1.2.8 USM'),
(91, 'EF 28 MM F/1,8 USM'),
(92, 'EF 70-200 MM F/2.8L USM'),
(93, '580EXII'),
(94, 'FLASH METER'),
(95, 'PULSAR - BW5170'),
(96, 'SOLDIER'),
(97, 'NXCAM - HXR-NX5N'),
(98, 'NXCAM - HXR-NX3'),
(99, 'AC-VQ1051D'),
(100, 'AC-VL1'),
(101, 'AC - VL1'),
(102, 'NP-F970'),
(103, 'NP-F570'),
(104, 'PG58'),
(105, 'SK100 G3'),
(106, 'EK100 G3'),
(107, 'ME 66'),
(108, 'DUSM-1'),
(109, 'Avalon KE-89CC'),
(110, 'MRW-EA7'),
(111, 'MRW-E80'),
(112, 'MDR - 7502'),
(113, 'MDR - 7506'),
(114, 'ARRI - 650-300-150 W'),
(115, 'ARRI - 300W -150 W'),
(116, 'ARRI - 650 W'),
(117, '1000 w'),
(118, '546B'),
(119, 'GEMINI GM1000PRO'),
(120, 'GEMINI GM500PRO'),
(121, 'GEMINI GM500R'),
(122, 'GEMINI GM500C'),
(123, 'BW6615'),
(124, 'BW6610'),
(125, '272B'),
(126, '1052BAC'),
(127, 'LUMINAIR'),
(128, 'VCT-R640'),
(129, '732CY'),
(130, 'EFS 18-55 MM'),
(131, '4B'),
(132, 'EF 50 MM F/1.8 STM'),
(133, 'EF 70-200 MM F/2.8L IS III USM'),
(134, 'EF 100 MM F/2.8L MACRO IS USM'),
(135, 'SD DE 64GB'),
(136, '30333 USB 3.0'),
(137, 'CLEANING TISSUE'),
(138, 'HD 206'),
(139, 'EK 100 G4'),
(140, 'MKE600'),
(141, '165mv'),
(142, '496RC2'),
(143, 'DELUXE WINDSHIELD WS6'),
(144, 'SERIES 3000 1.5 MTS'),
(145, 'SIXTOMAT F2'),
(146, 'SD DE 16GB'),
(147, 'JDD F27'),
(148, 'NC-MXX'),
(149, 'NC-MX'),
(150, 'BW 1864'),
(151, 'RFT-10'),
(152, 'SG-1'),
(153, 'SD DE 8GB'),
(154, 'SD DE 4GB'),
(155, 'ADAPTADOR'),
(156, 'LP-E6N'),
(157, 'LP-E6'),
(158, 'LC-E6'),
(159, 'EOS - REBEL T5i'),
(160, 'EOS - REBEL T6'),
(161, 'EOS - REBEL T6'),
(162, 'HD202'),
(163, 'MK-190X3-2W'),
(164, '56-12 FASHION GRAY'),
(165, '46-12 TECH GREEN'),
(166, '050MKARF'),
(167, 'SC003'),
(168, 'I-TRIGUE 3400');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `operatividad`
--

DROP TABLE IF EXISTS `operatividad`;
CREATE TABLE IF NOT EXISTS `operatividad` (
  `ID_operatividad` int(11) NOT NULL AUTO_INCREMENT,
  `Tipo_operatividad` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`ID_operatividad`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `operatividad`
--

INSERT INTO `operatividad` (`ID_operatividad`, `Tipo_operatividad`) VALUES
(1, 'Operativo'),
(2, 'Inoperativo'),
(3, 'En revisión');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `ID_roles` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre_Rol` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`ID_roles`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`ID_roles`, `Nombre_Rol`) VALUES
(1, 'Administrador'),
(2, 'Editor'),
(3, 'especial');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sede`
--

DROP TABLE IF EXISTS `sede`;
CREATE TABLE IF NOT EXISTS `sede` (
  `ID_sede` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre_sede` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`ID_sede`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `sede`
--

INSERT INTO `sede` (`ID_sede`, `Nombre_sede`) VALUES
(1, 'La Molina'),
(2, 'San Isidro'),
(3, 'Miraflores');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `stock`
--

DROP TABLE IF EXISTS `stock`;
CREATE TABLE IF NOT EXISTS `stock` (
  `ID_stock` int(11) NOT NULL AUTO_INCREMENT,
  `ID_almacen` int(11) NOT NULL,
  `ID_equipo` int(11) NOT NULL,
  `Descripcion` varchar(50) DEFAULT NULL,
  `ID_marca` int(11) NOT NULL,
  `ID_modelo` int(11) NOT NULL,
  `Numero_serie` varchar(30) DEFAULT NULL,
  `Codigo_isil` varchar(30) DEFAULT NULL,
  `Cantidad` int(11) DEFAULT NULL,
  `Imagen` blob,
  PRIMARY KEY (`ID_stock`),
  KEY `ID_almacen` (`ID_almacen`),
  KEY `ID_equipo` (`ID_equipo`),
  KEY `ID_marca` (`ID_marca`),
  KEY `ID_modelo` (`ID_modelo`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `stock`
--

INSERT INTO `stock` (`ID_stock`, `ID_almacen`, `ID_equipo`, `Descripcion`, `ID_marca`, `ID_modelo`, `Numero_serie`, `Codigo_isil`, `Cantidad`, `Imagen`) VALUES
(2, 2, 2, 'Bateria 6t', 4, 58, '12345', '12345', 1, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `torre`
--

DROP TABLE IF EXISTS `torre`;
CREATE TABLE IF NOT EXISTS `torre` (
  `ID_torre` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre_torre` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`ID_torre`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `torre`
--

INSERT INTO `torre` (`ID_torre`, `Nombre_torre`) VALUES
(1, 'A'),
(2, 'B'),
(3, 'C'),
(4, 'D'),
(5, 'E');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ubicacion`
--

DROP TABLE IF EXISTS `ubicacion`;
CREATE TABLE IF NOT EXISTS `ubicacion` (
  `ID_ubicacion` int(11) NOT NULL AUTO_INCREMENT,
  `ID_sede` int(11) NOT NULL,
  `ID_torre` int(11) NOT NULL,
  `Salon` int(11) DEFAULT NULL,
  `Oficina` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`ID_ubicacion`),
  KEY `ID_sede` (`ID_sede`),
  KEY `ID_torre` (`ID_torre`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ubicacion`
--

INSERT INTO `ubicacion` (`ID_ubicacion`, `ID_sede`, `ID_torre`, `Salon`, `Oficina`) VALUES
(1, 1, 1, 117, NULL),
(2, 1, 1, NULL, 'Audiovisuales'),
(3, 2, 3, 112, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

DROP TABLE IF EXISTS `usuario`;
CREATE TABLE IF NOT EXISTS `usuario` (
  `ID_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `ID_roles` int(11) NOT NULL,
  `Nombre` varchar(100) DEFAULT NULL,
  `Apellidos` varchar(200) DEFAULT NULL,
  `Correo` varchar(50) DEFAULT NULL,
  `Numero` int(11) DEFAULT NULL,
  `Usuario` varchar(30) DEFAULT NULL,
  `Contraseña` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`ID_usuario`),
  KEY `ID_roles` (`ID_roles`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`ID_usuario`, `ID_roles`, `Nombre`, `Apellidos`, `Correo`, `Numero`, `Usuario`, `Contraseña`) VALUES
(1, 1, 'Miguel John', 'Quispe Pozo', 'correo1@gmail.com', 906838713, 'mquispe', '12345'),
(2, 3, 'Gonzalo Ronald', 'García Saravia', 'correo2@gmail.com', 913593235, 'ggarcias', '12345'),
(3, 1, 'Isaac Jedidias', 'Olivera Colonio ', 'correo3@gmail.com', 969703281, 'iolivera', '12345'),
(4, 1, 'Gonzalo ', NULL, 'garciasaraviagonzalo@gmail.com', 98562101, 'ggarcia', '81dc9bdb52d04dc20036dbd8313ed055'),
(5, 1, 'Gonzalo ', NULL, 'garciasaraviagonzalo@gmail.com', 98562101, 'ggarcia', 'ec6a6536ca304edf844d1d248a4f08dc'),
(6, 3, 'Karla ', 'Chaccha', 'correo2@gmail.com', 987752489, 'kchacha', 'e1dad4486f26f5ef1b4807f37fa37b76'),
(7, 3, 'Alexandrea Alexandrea ', 'Del Solar Maldini de las Casas', 'correo22@gmail.com', 973752339, 'aadelascasas', 'f23c92baa9b37099420c006ac4f7760f'),
(8, 2, 'Li Xiao Long', '李小龙 Bruce Lee', 'correo33@gmail.com', 973778339, 'blee', '4c882dcb24bcb1bc225391a602feca7c'),
(9, 1, 'pepe', 'el pollo', 'pepelpollo@gmail.com', 986532014, 'elpepe', '12345');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `estado`
--
ALTER TABLE `estado`
  ADD CONSTRAINT `estado_ibfk_1` FOREIGN KEY (`ID_operatividad`) REFERENCES `operatividad` (`ID_operatividad`);

--
-- Filtros para la tabla `ficha`
--
ALTER TABLE `ficha`
  ADD CONSTRAINT `ficha_ibfk_1` FOREIGN KEY (`ID_ubicacion`) REFERENCES `ubicacion` (`ID_ubicacion`),
  ADD CONSTRAINT `ficha_ibfk_2` FOREIGN KEY (`ID_stock`) REFERENCES `stock` (`ID_stock`),
  ADD CONSTRAINT `ficha_ibfk_3` FOREIGN KEY (`ID_usuario`) REFERENCES `usuario` (`ID_usuario`),
  ADD CONSTRAINT `ficha_ibfk_4` FOREIGN KEY (`ID_estado`) REFERENCES `estado` (`ID_estado`);

--
-- Filtros para la tabla `stock`
--
ALTER TABLE `stock`
  ADD CONSTRAINT `stock_ibfk_1` FOREIGN KEY (`ID_almacen`) REFERENCES `almacen` (`ID_Almacen`),
  ADD CONSTRAINT `stock_ibfk_2` FOREIGN KEY (`ID_equipo`) REFERENCES `equipo` (`ID_equipo`),
  ADD CONSTRAINT `stock_ibfk_3` FOREIGN KEY (`ID_marca`) REFERENCES `marca` (`ID_marca`),
  ADD CONSTRAINT `stock_ibfk_4` FOREIGN KEY (`ID_modelo`) REFERENCES `modelo` (`ID_modelo`);

--
-- Filtros para la tabla `ubicacion`
--
ALTER TABLE `ubicacion`
  ADD CONSTRAINT `ubicacion_ibfk_1` FOREIGN KEY (`ID_sede`) REFERENCES `sede` (`ID_sede`),
  ADD CONSTRAINT `ubicacion_ibfk_2` FOREIGN KEY (`ID_torre`) REFERENCES `torre` (`ID_torre`);

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`ID_roles`) REFERENCES `roles` (`ID_roles`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
