-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 17-06-2013 a las 17:16:07
-- Versión del servidor: 5.1.53
-- Versión de PHP: 5.3.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `multinext`
--

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `auditajedescargas`
--
CREATE TABLE IF NOT EXISTS `auditajedescargas` (
`fecha` date
,`Usuario` varchar(101)
,`Codigo_fuente` varchar(50)
,`Tesis` varchar(50)
,`Texto` varchar(50)
,`Grabacion` varchar(50)
,`Instalador` varchar(50)
);
-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `autorestesis`
--
CREATE TABLE IF NOT EXISTS `autorestesis` (
`Codigo` varchar(30)
,`Nombres` varchar(101)
,`categoria` varchar(50)
,`Titulo_de_Tesis` varchar(50)
);
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE IF NOT EXISTS `categoria` (
  `CODCAT` varchar(30) NOT NULL DEFAULT '',
  `nombre` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`CODCAT`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcar la base de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`CODCAT`, `nombre`) VALUES
('CAT001', 'animacion'),
('CAT002', 'desarrollo de sistemas'),
('CAT003', 'algoritmos'),
('CAT004', 'desarrollo web'),
('CAT005', 'programacion'),
('CAT006', 'metadatos'),
('CAT007', 'navegadores'),
('CAT008', 'procesamiento digital'),
('CAT009', 'desarrollo web'),
('CAT0010', 'programacion'),
('CAT0011', 'metadatos'),
('CAT0012', 'navegadores'),
('CAT0013', 'procesamiento digital'),
('CAT0014', 'desarrollo web'),
('CAT0015', 'programacion'),
('CAT0016', 'metadatos'),
('CAT0017', 'navegadores'),
('CAT0018', 'procesamiento digital');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `codigo_fuente`
--

CREATE TABLE IF NOT EXISTS `codigo_fuente` (
  `CODCF` varchar(30) NOT NULL DEFAULT '',
  `titulo` varchar(50) DEFAULT NULL,
  `llavepub` varchar(50) DEFAULT NULL,
  `tamanio` varchar(50) DEFAULT NULL,
  `idioma` varchar(50) DEFAULT NULL,
  `CODMAT` varchar(30) DEFAULT NULL,
  `CODCAT` varchar(30) DEFAULT NULL,
  `CODTP` varchar(30) DEFAULT NULL,
  `CODLIC` varchar(30) DEFAULT NULL,
  `fecha_elaboracion` date DEFAULT NULL,
  `extension` varchar(50) DEFAULT NULL,
  `versionP` varchar(50) DEFAULT NULL,
  `so` varchar(50) DEFAULT NULL,
  `link_ofi` varchar(50) DEFAULT NULL,
  `lenguaje` varchar(50) DEFAULT NULL,
  `resenia` varchar(50) DEFAULT NULL,
  `metodologia` varchar(50) DEFAULT NULL,
  `descripcion` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`CODCF`),
  KEY `CODMAT` (`CODMAT`),
  KEY `CODCAT` (`CODCAT`),
  KEY `CODTP` (`CODTP`),
  KEY `CODLIC` (`CODLIC`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcar la base de datos para la tabla `codigo_fuente`
--

INSERT INTO `codigo_fuente` (`CODCF`, `titulo`, `llavepub`, `tamanio`, `idioma`, `CODMAT`, `CODCAT`, `CODTP`, `CODLIC`, `fecha_elaboracion`, `extension`, `versionP`, `so`, `link_ofi`, `lenguaje`, `resenia`, `metodologia`, `descripcion`) VALUES
('CF1', 'fibonacci', 'llav01', '2GB', 'español', 'MAT001', 'CAT001', 'TP1', 'L001', '0000-00-00', 'txt', 'V1', 'windows', 'https://www.aaa.com', 'java', '', 'modular', NULL),
('CF2', 'fibonacci', 'llav02', '2GB', 'español', 'MAT001', 'CAT001', 'TP1', 'L001', '0000-00-00', 'txt', 'V1', 'windows', 'https://www.qqeg.com', 'java', '', 'modular', NULL),
('CF3', 'primos', 'llav03', '2GB', 'español', 'MAT003', 'CAT001', 'TP3', 'L002', '0000-00-00', 'txt', 'V2', 'windows', 'https://www.uuaa.com', 'c++', '', 'modular', NULL),
('CF4', 'pares', 'llav04', '6GB', 'español', 'MAT004', 'CAT003', 'TP4', 'L001', '0000-00-00', 'txt', 'V1', 'windows', 'https://www.ttaa.com', 'java', '', 'modular', NULL),
('CF5', 'impares', 'llav05', '2GB', 'español', 'MAT001', 'CAT001', 'TP6', 'L003', '0000-00-00', 'txt', 'V3', 'windows', 'https://www.wera.com', 'c++', '', 'modular', NULL),
('CF6', 'fibonacci', 'llav06', '4GB', 'español', 'MAT002', 'CAT004', 'TP1', 'L001', '0000-00-00', 'txt', 'V1', 'windows', 'https://www.hgag.com', 'assembler', '', 'modular', NULL),
('CF7', 'multiplos', 'llav07', '4GB', 'español', 'MAT002', 'CAT001', 'TP2', 'L001', '0000-00-00', 'txt', 'V1', 'windows', 'https://www.gfah.com', 'java', '', 'modular', NULL),
('CF8', 'racionales', 'llav08', '2GB', 'español', 'MAT001', 'CAT003', 'TP1', 'L003', '0000-00-00', 'txt', 'V2', 'linux', 'https://www.dsaa.com', 'java', '', 'modular', NULL),
('CF9', 'complejos', 'llav09', '1GB', 'español', 'MAT001', 'CAT002', 'TP2', 'L004', '0000-00-00', 'txt', 'V1', 'linux', 'https://www.bbsa.com', 'c++', '', 'modular', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comenta`
--

CREATE TABLE IF NOT EXISTS `comenta` (
  `CODCM` varchar(30) NOT NULL DEFAULT '',
  `comentario` varchar(50) DEFAULT NULL,
  `fecha_hora` date DEFAULT NULL,
  `CODUSER` varchar(30) DEFAULT NULL,
  `CODCF` varchar(30) DEFAULT NULL,
  `CODTS` varchar(30) DEFAULT NULL,
  `CODTX` varchar(30) DEFAULT NULL,
  `CODAV` varchar(30) DEFAULT NULL,
  `CODIN` varchar(30) DEFAULT NULL,
  `codi` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`CODCM`),
  KEY `CODUSER` (`CODUSER`),
  KEY `CODCF` (`CODCF`),
  KEY `CODTS` (`CODTS`),
  KEY `CODTX` (`CODTX`),
  KEY `CODAV` (`CODAV`),
  KEY `CODIN` (`CODIN`),
  KEY `codi` (`codi`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcar la base de datos para la tabla `comenta`
--

INSERT INTO `comenta` (`CODCM`, `comentario`, `fecha_hora`, `CODUSER`, `CODCF`, `CODTS`, `CODTX`, `CODAV`, `CODIN`, `codi`) VALUES
('COM01', 'buenos resultados', '2001-02-03', 'U001', 'CF1', NULL, NULL, NULL, NULL, NULL),
('COM02', 'buenos informacion', '2001-02-03', 'U001', 'CF1', NULL, NULL, NULL, NULL, NULL),
('COM03', 'bueno documento', '2001-05-03', 'U002', NULL, NULL, 'TXT2', NULL, NULL, NULL),
('COM04', 'no es buena', '0029-05-03', 'U003', NULL, NULL, 'TXT1', NULL, NULL, NULL),
('COM05', 'buenos y concreto', '2002-05-02', 'U003', NULL, NULL, 'TXT4', NULL, NULL, NULL),
('COM06', 'gracias por la ayuda', '2002-05-02', 'U004', NULL, NULL, NULL, 'GRA003', NULL, NULL),
('COM07', 'regular', '2002-02-02', 'U004', NULL, NULL, NULL, 'GRA001', NULL, NULL),
('COM08', 'buenos documentos', '2001-03-03', 'U005', NULL, NULL, NULL, NULL, 'IN008', NULL),
('COM09', 'buenos resultados', '2003-03-03', 'U006', NULL, NULL, NULL, NULL, 'IN008', NULL),
('COM010', 'buenos resultados', '2003-03-03', 'U006', NULL, NULL, NULL, NULL, 'IN008', NULL),
('COM011', 'buenos resultados', '2003-03-08', 'U006', NULL, NULL, NULL, 'GRA001', NULL, NULL),
('COM012', 'no me dio resultados', '2001-02-08', 'U007', NULL, NULL, 'TXT2', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `descarga`
--

CREATE TABLE IF NOT EXISTS `descarga` (
  `codd` varchar(30) NOT NULL DEFAULT '',
  `fecha_hora` date DEFAULT NULL,
  `CODUSER` varchar(30) DEFAULT NULL,
  `CODCF` varchar(30) DEFAULT NULL,
  `CODTS` varchar(30) DEFAULT NULL,
  `CODTX` varchar(30) DEFAULT NULL,
  `CODAV` varchar(30) DEFAULT NULL,
  `CODIN` varchar(30) DEFAULT NULL,
  `codi` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`codd`),
  KEY `CODUSER` (`CODUSER`),
  KEY `CODCF` (`CODCF`),
  KEY `CODTS` (`CODTS`),
  KEY `CODTX` (`CODTX`),
  KEY `CODAV` (`CODAV`),
  KEY `CODIN` (`CODIN`),
  KEY `codi` (`codi`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcar la base de datos para la tabla `descarga`
--

INSERT INTO `descarga` (`codd`, `fecha_hora`, `CODUSER`, `CODCF`, `CODTS`, `CODTX`, `CODAV`, `CODIN`, `codi`) VALUES
('DESC01', '1999-02-01', 'U001', 'CF1', NULL, NULL, NULL, NULL, NULL),
('DESC02', '1998-02-01', 'U001', 'CF2', NULL, NULL, NULL, NULL, NULL),
('DESC03', '1999-05-01', 'U002', 'CF3', NULL, NULL, NULL, NULL, NULL),
('DESC04', '1999-05-02', 'U003', NULL, NULL, 'TXT1', NULL, NULL, NULL),
('DESC05', '1997-05-02', 'U003', NULL, NULL, 'TXT2', NULL, NULL, NULL),
('DESC06', '2002-05-02', 'U003', NULL, NULL, 'TXT3', NULL, NULL, NULL),
('DESC07', '2002-02-02', 'U004', NULL, NULL, NULL, 'GRA005', NULL, NULL),
('DESC08', '1997-03-03', 'U006', NULL, NULL, NULL, NULL, 'IN003', NULL),
('DESC09', '2003-03-07', 'U006', NULL, NULL, NULL, NULL, 'IN004', NULL),
('DESC010', '2008-03-07', 'U002', NULL, NULL, NULL, NULL, NULL, 'I005');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detreconocimiento`
--

CREATE TABLE IF NOT EXISTS `detreconocimiento` (
  `codrec` varchar(30) DEFAULT NULL,
  `CODCF` varchar(30) DEFAULT NULL,
  `CODTS` varchar(30) DEFAULT NULL,
  `CODTX` varchar(30) DEFAULT NULL,
  `CODAV` varchar(30) DEFAULT NULL,
  `CODIN` varchar(30) DEFAULT NULL,
  `codi` varchar(30) DEFAULT NULL,
  `fechar` date DEFAULT NULL,
  KEY `codrec` (`codrec`),
  KEY `CODCF` (`CODCF`),
  KEY `CODTS` (`CODTS`),
  KEY `CODTX` (`CODTX`),
  KEY `CODAV` (`CODAV`),
  KEY `CODIN` (`CODIN`),
  KEY `codi` (`codi`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcar la base de datos para la tabla `detreconocimiento`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `es_autor`
--

CREATE TABLE IF NOT EXISTS `es_autor` (
  `tipo_colaboracion` varchar(50) DEFAULT NULL,
  `CODUSER` varchar(30) DEFAULT NULL,
  `CODCF` varchar(30) DEFAULT NULL,
  `CODTS` varchar(30) DEFAULT NULL,
  `CODTX` varchar(30) DEFAULT NULL,
  `CODAV` varchar(30) DEFAULT NULL,
  `CODIN` varchar(30) DEFAULT NULL,
  `codi` varchar(30) DEFAULT NULL,
  KEY `CODUSER` (`CODUSER`),
  KEY `CODCF` (`CODCF`),
  KEY `CODTS` (`CODTS`),
  KEY `CODTX` (`CODTX`),
  KEY `CODAV` (`CODAV`),
  KEY `CODIN` (`CODIN`),
  KEY `codi` (`codi`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcar la base de datos para la tabla `es_autor`
--

INSERT INTO `es_autor` (`tipo_colaboracion`, `CODUSER`, `CODCF`, `CODTS`, `CODTX`, `CODAV`, `CODIN`, `codi`) VALUES
('tutor', 'U001', 'CF1', NULL, NULL, NULL, NULL, NULL),
('colaborador', 'U001', 'CF2', NULL, NULL, NULL, NULL, NULL),
('supervisor', 'U002', NULL, NULL, 'TXT1', NULL, NULL, NULL),
('tutor', 'U003', NULL, NULL, 'TXT2', NULL, NULL, NULL),
('autor', 'U004', NULL, NULL, NULL, NULL, 'IN001', NULL),
('autor', 'U012', NULL, 'TES11', NULL, NULL, NULL, NULL),
('autor', 'U013', NULL, 'TES2', NULL, NULL, NULL, NULL),
('autor', 'U006', NULL, 'TES4', NULL, NULL, NULL, NULL),
('autor', 'U008', NULL, 'TES5', NULL, NULL, NULL, NULL),
('autor', 'U002', NULL, 'TES7', NULL, NULL, NULL, NULL),
('autor', 'U009', NULL, 'TES14', NULL, NULL, NULL, NULL),
('autor', 'U011', NULL, 'TES16', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grabacion`
--

CREATE TABLE IF NOT EXISTS `grabacion` (
  `CODG` varchar(30) NOT NULL DEFAULT '',
  `titulo` varchar(50) DEFAULT NULL,
  `llavepub` varchar(50) DEFAULT NULL,
  `tamanio` varchar(50) DEFAULT NULL,
  `idioma` varchar(50) DEFAULT NULL,
  `CODMAT` varchar(30) DEFAULT NULL,
  `CODCAT` varchar(30) DEFAULT NULL,
  `CODTP` varchar(30) DEFAULT NULL,
  `CODLIC` varchar(30) DEFAULT NULL,
  `fecha_elaboracion` date DEFAULT NULL,
  `extension` varchar(50) DEFAULT NULL,
  `versionP` varchar(50) DEFAULT NULL,
  `tiempo` float DEFAULT NULL,
  `descripcion` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`CODG`),
  KEY `CODMAT` (`CODMAT`),
  KEY `CODCAT` (`CODCAT`),
  KEY `CODTP` (`CODTP`),
  KEY `CODLIC` (`CODLIC`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcar la base de datos para la tabla `grabacion`
--

INSERT INTO `grabacion` (`CODG`, `titulo`, `llavepub`, `tamanio`, `idioma`, `CODMAT`, `CODCAT`, `CODTP`, `CODLIC`, `fecha_elaboracion`, `extension`, `versionP`, `tiempo`, `descripcion`) VALUES
('GRA001', 'tutorial_toad    ', 'llav1', '2GB', 'español', 'MAT001', 'CAT001', 'TP1', 'L001', '2010-02-03', 'mp4', 'v1', 2, NULL),
('GRA002', 'tutorial toad    ', 'llav2', '2GB', 'español', 'MAT001', 'CAT002', 'TP3', 'L002', '2010-02-03', 'mp4', 'v1', 2, NULL),
('GRA003', 'tutorial oracle  ', 'llav3', '3GB', 'español', 'MAT003', 'CAT003', 'TP4', 'L003', '2008-02-03', 'mpg', 'v1', 2, NULL),
('GRA004', 'tutorial java    ', 'llav4', '4GB', 'español', 'MAT004', 'CAT003', 'TP2', 'L004', '2010-02-03', 'mpg', 'v2', 1, NULL),
('GRA005', 'tutorial c++     ', 'llav6', '3GB', 'español', 'MAT005', 'CAT001', 'TP2', 'L001', '2007-04-03', 'mp4', 'v3', 1, NULL),
('GRA006', 'tutorial assemler', 'llav7', '2GB', 'español', 'MAT001', 'CAT001', 'TP2', 'L003', '2010-06-03', 'mp4', 'v1', 2, NULL),
('GRA007', 'tutorial matlab  ', 'llav8', '3GB', 'ingles', 'MAT003', 'CAT002', 'TP3', 'L003', '2006-06-03', 'mpg', 'v2', 3, NULL),
('GRA008', 'tutorial android ', 'llav9', '2GB', 'español', 'MAT001', 'CAT001', 'TP1', 'L001', '2010-02-03', 'avi', 'v3', 2, NULL),
('GRA009', 'tutorial java    ', 'llav3', '2GB', 'español', 'MAT004', 'CAT004', 'TP4', 'L001', '2005-07-03', 'mp4', 'v1', 5, NULL),
('GRA0010', 'tutorial c++     ', 'llav4', '1GB', 'ingles', 'MAT005', 'CAT002', 'TP5', 'L003', '2010-08-02', 'avi', 'v3', 6, NULL),
('GRA0011', 'tutorial assemler', 'llav5', '1GB', 'español', 'MAT001', 'CAT001', 'TP5', 'L002', '2010-08-03', 'mp4', 'v1', 2, NULL),
('GRA0012', 'tutorial matlab  ', 'llav6', '1GB', 'español', 'MAT002', 'CAT005', 'TP1', 'L001', '2010-09-03', 'avi', 'v2', 7, NULL),
('GRA0013', 'tutorial android ', 'llav8', '6GB', 'ingles', 'MAT001', 'CAT005', 'TP6', 'L002', '2010-02-04', 'mpg', 'v1', 2, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imagen`
--

CREATE TABLE IF NOT EXISTS `imagen` (
  `CODI` varchar(30) NOT NULL DEFAULT '',
  `titulo` varchar(50) DEFAULT NULL,
  `tamanio` varchar(50) DEFAULT NULL,
  `rutaubic` varchar(50) DEFAULT NULL,
  `CODMAT` varchar(30) DEFAULT NULL,
  `CODCAT` varchar(30) DEFAULT NULL,
  `CODTP` varchar(30) DEFAULT NULL,
  `CODLIC` varchar(30) DEFAULT NULL,
  `fecha_elaboracion` date DEFAULT NULL,
  `extension` varchar(50) DEFAULT NULL,
  `descripcion` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`CODI`),
  KEY `CODMAT` (`CODMAT`),
  KEY `CODCAT` (`CODCAT`),
  KEY `CODTP` (`CODTP`),
  KEY `CODLIC` (`CODLIC`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcar la base de datos para la tabla `imagen`
--

INSERT INTO `imagen` (`CODI`, `titulo`, `tamanio`, `rutaubic`, `CODMAT`, `CODCAT`, `CODTP`, `CODLIC`, `fecha_elaboracion`, `extension`, `descripcion`) VALUES
('I001', 'boton', '2mB', 'https://www.fgfgf.com', 'MAT001', 'CAT001', 'TP1', 'L001', '2010-01-02', 'ico', NULL),
('I002', 'boton', '2mB', 'https://www.fgfgf.com', 'MAT001', 'CAT001', 'TP1', 'L001', '2010-01-02', 'png', NULL),
('I003', 'icono', '3mB', 'https://www.fgfgf.com', 'MAT001', 'CAT002', 'TP5', 'L001', '2010-01-02', 'odb', NULL),
('I004', 'plantilla', '5mB', 'https://www.fgfgf.com', 'MAT002', 'CAT003', 'TP1', 'L001', '2010-03-02', 'png', NULL),
('I005', 'foto', '6mB', 'https://www.fdfgf.com', 'MAT001', 'CAT003', 'TP3', 'L004', '2010-04-02', 'jpg', NULL),
('I006', 'icono', '3mB', 'https://www.fgfgf.com', 'MAT001', 'CAT003', 'TP5', 'L001', '2010-01-02', 'odb', NULL),
('I007', 'plantilla', '5mB', 'https://www.fgfgf.com', 'MAT002', 'CAT003', 'TP1', 'L001', '2010-03-02', 'png', NULL),
('I008', 'foto', '6mB', 'https://www.fwegf.com', 'MAT001', 'CAT003', 'TP3', 'L004', '2010-04-02', 'jpg', NULL),
('I009', 'icono', '3mB', 'https://www.ftygf.com', 'MAT001', 'CAT004', 'TP5', 'L001', '2010-01-02', 'odb', NULL),
('I0010', 'plantilla', '5mB', 'https://www.fhfgf.com', 'MAT002', 'CAT001', 'TP1', 'L001', '2010-03-02', 'png', NULL),
('I0011', 'foto', '6mB', 'https://www.fgfgf.com', 'MAT001', 'CAT003', 'TP3', 'L004', '2010-04-02', 'jpg', NULL),
('I0012', 'icono', '3mB', 'https://www.fsdff.com', 'MAT001', 'CAT007', 'TP5', 'L001', '2010-01-02', 'odb', NULL),
('I0013', 'plantilla', '5mB', 'https://www.fadsf.com', 'MAT002', 'CAT007', 'TP1', 'L001', '2010-03-02', 'png', NULL),
('I0014', 'foto', '6mB', 'https://www.fgfgf.com', 'MAT001', 'CAT003', 'TP3', 'L004', '2010-04-02', 'jpg', NULL),
('I0015', 'icono', '3mB', 'https://www.fadsf.com', 'MAT001', 'CAT007', 'TP5', 'L001', '2010-01-02', 'odb', NULL),
('I0016', 'plantilla', '5mB', 'https://www.fggdf.com', 'MAT002', 'CAT007', 'TP1', 'L001', '2010-03-02', 'png', NULL),
('I0017', 'foto', '6mB', 'https://www.gfggf.com', 'MAT001', 'CAT003', 'TP3', 'L004', '2010-04-02', 'jpg', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `instalador`
--

CREATE TABLE IF NOT EXISTS `instalador` (
  `CODIN` varchar(30) NOT NULL DEFAULT '',
  `titulo` varchar(50) DEFAULT NULL,
  `llavepub` varchar(50) DEFAULT NULL,
  `tamanio` varchar(50) DEFAULT NULL,
  `idioma` varchar(50) DEFAULT NULL,
  `CODMAT` varchar(30) DEFAULT NULL,
  `CODCAT` varchar(30) DEFAULT NULL,
  `CODTP` varchar(30) DEFAULT NULL,
  `CODLIC` varchar(30) DEFAULT NULL,
  `fecha_elaboracion` date DEFAULT NULL,
  `extension` varchar(50) DEFAULT NULL,
  `versionP` varchar(50) DEFAULT NULL,
  `so` varchar(50) DEFAULT NULL,
  `link_ofi` varchar(50) DEFAULT NULL,
  `descripcion` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`CODIN`),
  KEY `CODMAT` (`CODMAT`),
  KEY `CODCAT` (`CODCAT`),
  KEY `CODTP` (`CODTP`),
  KEY `CODLIC` (`CODLIC`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcar la base de datos para la tabla `instalador`
--

INSERT INTO `instalador` (`CODIN`, `titulo`, `llavepub`, `tamanio`, `idioma`, `CODMAT`, `CODCAT`, `CODTP`, `CODLIC`, `fecha_elaboracion`, `extension`, `versionP`, `so`, `link_ofi`, `descripcion`) VALUES
('IN001', 'agentCQ', 'llave001', '2GB', 'español', 'MAT001', 'CAT6', 'TP1', 'L001', '2010-01-02', 'exe', 'version01', 'LINUX', 'https://www.fgfgf.com', NULL),
('IN002', 'raven', 'llave002', '2GB', 'español', 'MAT001', 'CAT3', 'TP1', 'L003', '2010-01-02', 'exe', 'version01', 'LINUX', 'https://www.fgfgf.com', NULL),
('IN003', 'per2mail', 'llave003', '3GB', 'español', 'MAT001', 'CAT13', 'TP5', 'L001', '2010-01-02', 'exe', 'version01', 'LINUX', 'https://www.hhhtf.com', NULL),
('IN004', 'installgo', 'llave004', '5GB', 'español', 'MAT002', 'CAT14', 'TP1', 'L001', '2010-03-02', 'DAT', 'version01', 'LINUX', 'https://www.ASDSf.com', NULL),
('IN005', 'agentCQ', 'llave005', '6GB', 'español', 'MAT001', 'CAT15', 'TP3', 'L004', '2010-04-02', 'exe', 'version01', 'LINUX', 'https://www.dfsgf.com', NULL),
('IN006', 'raven', 'llave006', '1GB', 'español', 'MAT003', 'CAT18', 'TP3', 'L005', '2010-06-03', 'exe', 'version02', 'LINUX', 'https://www.eggef.com', NULL),
('IN007', 'maker', 'llave007', '2GB', 'INGLES', 'MAT004', 'CAT20', 'TP2', 'L004', '2010-07-04', 'DAT', 'version03', 'LINUX', 'https://www.fgfgf.com', NULL),
('IN008', 'maker2', 'llave008', '3GB', 'INGLES', 'MAT005', 'CAT11', 'TP2', 'L002', '2010-01-09', 'exe', 'version04', 'LINUX', 'https://www.gegef.com', NULL),
('IN009', 'agentCQ', 'llave009', '2GB', 'INGLES', 'MAT001', 'CAT3', 'TP1', 'L001', '2010-01-09', 'exe', 'version01', 'LINUX', 'https://www.wwwwf.com', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `licencia`
--

CREATE TABLE IF NOT EXISTS `licencia` (
  `CODLIC` varchar(30) NOT NULL DEFAULT '',
  `tipo` varchar(30) DEFAULT NULL,
  `montocosto` float DEFAULT NULL,
  PRIMARY KEY (`CODLIC`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcar la base de datos para la tabla `licencia`
--

INSERT INTO `licencia` (`CODLIC`, `tipo`, `montocosto`) VALUES
('L001', 'Red concurrente', 0),
('L002', 'HW', 0),
('L003', 'SO', 0),
('L004', 'HW usuarios concurrente', 0),
('L005', 'SO usuarios concurrente', 0),
('L006', 'Freeware', 0),
('L007', 'Subcapacidad', 0),
('L008', 'Sistema', 0),
('L009', 'CPU, tradicional', 0),
('L010', 'SO, tradicional', 0),
('L011', 'Sitio, Organización', 0),
('L0012', 'Shareware', 0),
('L0013', 'Red de usuarios concurrente', 0),
('L0114', 'BSD', 0),
('L0015', 'Debian', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materia`
--

CREATE TABLE IF NOT EXISTS `materia` (
  `CODMAT` varchar(30) NOT NULL DEFAULT '',
  `nombre` varchar(50) DEFAULT NULL,
  `sigla` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`CODMAT`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcar la base de datos para la tabla `materia`
--

INSERT INTO `materia` (`CODMAT`, `nombre`, `sigla`) VALUES
('MAT001', 'introduccion a la informatica', 'inf-111'),
('MAT002', 'organizacion de computadoras', 'inf-112'),
('MAT003', 'algoritmos y programacion', 'inf-121'),
('MAT004', 'estructura de datos', 'inf-131'),
('MAT005', 'fundamentos digitales', 'inf-142'),
('MAT006', 'taller de programacion', 'inf-143'),
('MAT007', 'assembler', 'inf-153'),
('MAT008', 'base de datos', 'inf-161'),
('MAT009', 'ingenieria de software', 'inf-163'),
('MAT010', 'algoritmos y programacion', 'inf-121'),
('MAT011', 'estructura de datos', 'inf-131'),
('MAT012', 'fundamentos digitales', 'inf-142'),
('MAT013', 'taller de programacion', 'inf-143'),
('MAT014', 'assembler', 'inf-153');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `publica`
--

CREATE TABLE IF NOT EXISTS `publica` (
  `CODP` varchar(30) NOT NULL DEFAULT '',
  `fecha_hora` date DEFAULT NULL,
  `CODUSER` varchar(30) DEFAULT NULL,
  `CODCF` varchar(30) DEFAULT NULL,
  `CODTS` varchar(30) DEFAULT NULL,
  `CODTX` varchar(30) DEFAULT NULL,
  `CODAV` varchar(30) DEFAULT NULL,
  `CODIN` varchar(30) DEFAULT NULL,
  `codi` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`CODP`),
  KEY `CODUSER` (`CODUSER`),
  KEY `CODCF` (`CODCF`),
  KEY `CODTS` (`CODTS`),
  KEY `CODTX` (`CODTX`),
  KEY `CODAV` (`CODAV`),
  KEY `CODIN` (`CODIN`),
  KEY `codi` (`codi`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcar la base de datos para la tabla `publica`
--

INSERT INTO `publica` (`CODP`, `fecha_hora`, `CODUSER`, `CODCF`, `CODTS`, `CODTX`, `CODAV`, `CODIN`, `codi`) VALUES
('p001', '1999-02-01', 'U005', 'CF1', NULL, NULL, NULL, NULL, NULL),
('p002', '1998-02-01', 'U015', 'CF2', NULL, NULL, NULL, NULL, NULL),
('p003', '1999-05-01', 'U011', 'CF3', NULL, NULL, NULL, NULL, NULL),
('p004', '1999-05-02', 'U013', NULL, NULL, 'TXT1', NULL, NULL, NULL),
('p005', '1997-05-02', 'U003', NULL, NULL, 'TXT2', NULL, NULL, NULL),
('p006', '2002-05-02', 'U017', NULL, NULL, 'TXT3', NULL, NULL, NULL),
('p007', '2002-02-02', 'U001', NULL, NULL, NULL, 'GRA005', NULL, NULL),
('p008', '1997-03-03', 'U006', NULL, NULL, NULL, NULL, 'IN003', NULL),
('p009', '2003-03-07', 'U008', NULL, NULL, NULL, NULL, 'IN004', NULL),
('p010', '2008-03-07', 'U010', NULL, NULL, NULL, NULL, NULL, 'I005'),
('p011', '2008-03-07', 'U010', NULL, 'TES5', NULL, NULL, NULL, NULL),
('p012', '2008-03-07', 'U010', NULL, 'TES1', NULL, NULL, NULL, NULL),
('p013', '2008-03-07', 'U010', NULL, 'TES19', NULL, NULL, NULL, NULL),
('p014', '2008-03-07', 'U010', NULL, 'TES20', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `publifecha`
--
CREATE TABLE IF NOT EXISTS `publifecha` (
`Fecha` date
,`Usuario` varchar(101)
,`Codigo_fuente` varchar(50)
,`Tesis` varchar(50)
,`Texto` varchar(50)
,`Grabacion` varchar(50)
,`Instalador` varchar(50)
);
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reconocimiento`
--

CREATE TABLE IF NOT EXISTS `reconocimiento` (
  `CODREC` varchar(30) NOT NULL DEFAULT '',
  `CODUSER` varchar(30) DEFAULT NULL,
  `nombre` varchar(30) DEFAULT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`CODREC`),
  KEY `CODUSER` (`CODUSER`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcar la base de datos para la tabla `reconocimiento`
--


-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `recusuario`
--
CREATE TABLE IF NOT EXISTS `recusuario` (
`nombre` varchar(30)
,`Usuario` varchar(101)
,`Codigo_fuente` varchar(50)
,`Tesis` varchar(50)
,`Texto` varchar(50)
,`Grabacion` varchar(50)
,`Instalador` varchar(50)
);
-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `reportecurricular`
--
CREATE TABLE IF NOT EXISTS `reportecurricular` (
`Usuario` varchar(101)
,`Categoria` varchar(50)
,`Codigo_fuente` varchar(50)
,`Tesis` varchar(50)
,`Texto` varchar(50)
,`Grabacion` varchar(50)
,`Instalador` varchar(50)
);
-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `revisortutor`
--
CREATE TABLE IF NOT EXISTS `revisortutor` (
`Codigo` varchar(30)
,`Docente` varchar(101)
,`Name_exp_3` varchar(101)
,`categoria` varchar(50)
,`Titulo_de_Tesis` varchar(50)
);
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tesis`
--

CREATE TABLE IF NOT EXISTS `tesis` (
  `CODTS` varchar(30) NOT NULL DEFAULT '',
  `titulo` varchar(50) DEFAULT NULL,
  `tamanio` varchar(50) DEFAULT NULL,
  `idioma` varchar(50) DEFAULT NULL,
  `rutaubic` varchar(50) DEFAULT NULL,
  `CODMAT` varchar(30) DEFAULT NULL,
  `CODCAT` varchar(30) DEFAULT NULL,
  `CODTP` varchar(30) DEFAULT NULL,
  `CODLIC` varchar(30) DEFAULT NULL,
  `fecha_elaboracion` date DEFAULT NULL,
  `extension` varchar(50) DEFAULT NULL,
  `codtesis` varchar(50) DEFAULT NULL,
  `descripcion` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`CODTS`),
  KEY `CODMAT` (`CODMAT`),
  KEY `CODCAT` (`CODCAT`),
  KEY `CODTP` (`CODTP`),
  KEY `CODLIC` (`CODLIC`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcar la base de datos para la tabla `tesis`
--

INSERT INTO `tesis` (`CODTS`, `titulo`, `tamanio`, `idioma`, `rutaubic`, `CODMAT`, `CODCAT`, `CODTP`, `CODLIC`, `fecha_elaboracion`, `extension`, `codtesis`, `descripcion`) VALUES
('TES1', 'agente experto', '1MG', 'español', 'https://www.abcad.com', 'MAT001', 'CAT001', 'TP1', 'L001', '0000-00-00', 'pdf', NULL, NULL),
('TES2', 'agente inteligente', '1MG', 'español', 'https://www.fsdfs.com', 'MAT001', 'CAT001', 'TP5', 'L001', '0000-00-00', 'pdf', NULL, NULL),
('TES3', 'tienda virtual', '1MG', 'español', 'https://www.asadf.com', 'MAT001', 'CAT001', 'TP5', 'L003', '0000-00-00', 'pdf', NULL, NULL),
('TES4', 'agentes moviles', '2MG', 'español', 'https://www.fsdfd.com', 'MAT001', 'CAT001', 'TP5', 'L002', '0000-00-00', 'pdf', NULL, NULL),
('TES5', 'algoritmo de deteccion', '7MG', 'español', 'https://www.xcxad.com', 'MAT001', 'CAT001', 'TP4', 'L002', '0000-00-00', 'pdf', NULL, NULL),
('TES6', 'Ambientes educativos', '7MG', 'español', 'https://www.agagf.com', 'MAT002', 'CAT001', 'TP4', 'L002', '0000-00-00', 'pdf', NULL, NULL),
('TES7', 'Analisis de imagenes', '8MG', 'español', 'https://www.hghhg.com', 'MAT003', 'CAT002', 'TP4', 'L001', '0000-00-00', 'pdf', NULL, NULL),
('TES8', 'Aplicacion estocastica', '9MG', 'español', 'https://www.fgsad.com', 'MAT001', 'CAT003', 'TP3', 'L001', '0000-00-00', 'pdf', NULL, NULL),
('TES9', 'Aplicacion de protocolo', '8MG', 'español', 'https://www.fasad.com', 'MAT001', 'CAT004', 'TP3', 'L001', '0000-00-00', 'pdf', NULL, NULL),
('TES10', 'Arquitectura de seguridad', '7MG', 'español', 'https://www.asdfd.com', 'MAT005', 'CAT005', 'TP3', 'L003', '0000-00-00', 'pdf', NULL, NULL),
('TES11', 'acesor financiero', '7MG', 'español', 'https://www.fsdad.com', 'MAT006', 'CAT006', 'TP3', 'L005', '0000-00-00', 'pdf', NULL, NULL),
('TES12', 'aula de tecnologia', '7MG', 'ingles', 'https://www.ertre.com', 'MAT007', 'CAT003', 'TP3', 'L001', '0000-00-00', 'pdf', NULL, NULL),
('TES13', 'auditoria de seguridad', '7MG', 'español', 'https://www.uytut.com', 'MAT008', 'CAT004', 'TP3', 'L004', '0000-00-00', 'pdf', NULL, NULL),
('TES14', 'biblioteca digital', '7MG', 'ingles', 'https://www.bcvbv.com', 'MAT009', 'CAT004', 'TP2', 'L004', '0000-00-00', 'pdf', NULL, NULL),
('TES15', 'compresion de imagenes', '6MG', 'español', 'https://www.nvved.com', 'MAT004', 'CAT004', 'TP1', 'L004', '0000-00-00', 'pdf', NULL, NULL),
('TES16', 'consulta difusa', '6MG', 'ingles', 'https://www.fwdef.com', 'MAT004', 'CAT005', 'TP1', 'L003', '0000-00-00', 'pdf', NULL, NULL),
('TES17', 'control de calldad', '6MG', 'ingles', 'https://www.eretd.com', 'MAT005', 'CAT006', 'TP1', 'L003', '0000-00-00', 'pdf', NULL, NULL),
('TES18', 'educacion virtual', '6MG', 'ingles', 'https://www.uiuir.com', 'MAT005', 'CAT009', 'TP1', 'L003', '0000-00-00', 'pdf', NULL, NULL),
('TES19', 'telefonia celular', '6MG', 'ingles', 'https://www.vwerd.com', 'MAT005', 'CAT009', 'TP6', 'L001', '0000-00-00', 'pdf', NULL, NULL),
('TES20', 'verificacion de formularios', '5MG', 'ingles', 'https://www.rtrtv.com', 'MAT001', 'CAT009', 'TP6', 'L009', '0000-00-00', 'pdf', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `text`
--

CREATE TABLE IF NOT EXISTS `text` (
  `CODTX` varchar(30) NOT NULL DEFAULT '',
  `titulo` varchar(50) DEFAULT NULL,
  `llavepub` varchar(50) DEFAULT NULL,
  `tamanio` varchar(50) DEFAULT NULL,
  `idioma` varchar(50) DEFAULT NULL,
  `rutaubic` varchar(50) DEFAULT NULL,
  `editor` varchar(50) DEFAULT NULL,
  `CODMAT` varchar(30) DEFAULT NULL,
  `CODCAT` varchar(30) DEFAULT NULL,
  `CODTP` varchar(30) DEFAULT NULL,
  `CODLIC` varchar(30) DEFAULT NULL,
  `fecha_elaboracion` date DEFAULT NULL,
  `extension` varchar(50) DEFAULT NULL,
  `descripcion` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`CODTX`),
  KEY `CODMAT` (`CODMAT`),
  KEY `CODCAT` (`CODCAT`),
  KEY `CODTP` (`CODTP`),
  KEY `CODLIC` (`CODLIC`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcar la base de datos para la tabla `text`
--

INSERT INTO `text` (`CODTX`, `titulo`, `llavepub`, `tamanio`, `idioma`, `rutaubic`, `editor`, `CODMAT`, `CODCAT`, `CODTP`, `CODLIC`, `fecha_elaboracion`, `extension`, `descripcion`) VALUES
('TXT1', 'java', 'llavetx1', '1MG', 'español', 'https://www.abcad.com', 'editor', 'MAT001', 'CAT001', 'TP1', 'L001', '2010-01-02', 'txt', NULL),
('TXT2', 'orcacle', 'llavetx2', '1MG', 'español', 'https://www.asdad.com', 'editor', 'MAT001', 'CAT001', 'TP5', 'L001', '2002-03-02', 'txt', NULL),
('TXT3', 'postgres', 'llavetx3', '1MG', 'español', 'https://www.htfad.com', 'editor', 'MAT001', 'CAT001', 'TP5', 'L003', '2012-04-02', 'txt', NULL),
('TXT4', 'mysql', 'llavetx4', '2MG', 'español', 'https://www.qwead.com', 'editor', 'MAT001', 'CAT001', 'TP5', 'L002', '2012-05-04', 'txt', NULL),
('TXT5', 'sqlserver', 'llavetx5', '1MG', 'español', 'https://www.fgsad.com', 'editor', 'MAT001', 'CAT001', 'TP4', 'L002', '2012-06-03', 'txt', NULL),
('TXT6', 'java', 'llavetx5', '1MG', 'español', 'https://www.hfgad.com', 'editor', 'MAT002', 'CAT001', 'TP4', 'L002', '2012-05-03', 'txt', NULL),
('TXT7', 'oracle', 'llavetx6', '2MG', 'español', 'https://www.tread.com', 'editor', 'MAT003', 'CAT002', 'TP4', 'L001', '2012-04-03', 'txt', NULL),
('TXT8', 'postgres', 'llavetx7', '1MG', 'español', 'https://www.fgsad.com', 'editor', 'MAT001', 'CAT003', 'TP3', 'L001', '2012-02-03', 'txt', NULL),
('TXT9', 'java', 'llavetx8', '1MG', 'español', 'https://www.fasad.com', 'editor', 'MAT001', 'CAT004', 'TP3', 'L001', '2012-03-02', 'txt', NULL),
('TXT10', 'java', 'llavetx9', '2MG', 'español', 'https://www.fgsad.com', 'editor', 'MAT005', 'CAT005', 'TP3', 'L003', '2010-04-02', 'txt', NULL),
('TXT11', 'java', 'llavetx10', '2MG', 'español', 'https://www.fsdad.com', 'editor', 'MAT006', 'CAT006', 'TP3', 'L005', '2010-05-07', 'txt', NULL),
('TXT12', 'oracle', 'llavetx11', '2MG', 'ingles', 'https://www.fgsad.com', 'editor', 'MAT007', 'CAT003', 'TP3', 'L001', '2010-05-07', 'txt', NULL),
('TXT13', 'oracle', 'llavetx12', '2MG', 'español', 'https://www.fgsad.com', 'editor', 'MAT008', 'CAT004', 'TP3', 'L004', '2010-06-08', 'txt', NULL),
('TXT14', 'java', 'llavetx13', '1MG', 'ingles', 'https://www.fgsad.com', 'editor', 'MAT009', 'CAT004', 'TP2', 'L004', '2009-01-08', 'txt', NULL),
('TXT15', 'eclipse', 'llavetx14', '1MG', 'español', 'https://www.fgsad.com', 'editor', 'MAT004', 'CAT004', 'TP1', 'L004', '2008-04-08', 'txt', NULL),
('TXT16', 'eclipse', 'llavetx15', '1MG', 'ingles', 'https://www.basad.com', 'editor', 'MAT004', 'CAT005', 'TP1', 'L003', '2007-04-02', 'txt', NULL),
('TXT17', 'java', 'llavetx16', '2MG', 'ingles', 'https://www.vbdad.com', 'editor', 'MAT005', 'CAT006', 'TP1', 'L003', '2005-04-02', 'txt', NULL),
('TXT18', 'java', 'llavetx17', '2MG', 'ingles', 'https://www.fgsad.com', 'editor', 'MAT005', 'CAT009', 'TP1', 'L003', '2005-06-02', 'txt', NULL),
('TXT19', 'java', 'llavetx18', '1MG', 'ingles', 'https://www.vsdad.com', 'editor', 'MAT005', 'CAT009', 'TP6', 'L001', '2005-06-02', 'txt', NULL),
('TXT20', 'oracle', 'llavetx19', '1MG', 'ingles', 'https://www.rerrv.com', 'editor', 'MAT001', 'CAT009', 'TP6', 'L009', '2005-01-02', 'txt', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo`
--

CREATE TABLE IF NOT EXISTS `tipo` (
  `CODT` varchar(30) NOT NULL DEFAULT '',
  `nombret` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`CODT`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcar la base de datos para la tabla `tipo`
--

INSERT INTO `tipo` (`CODT`, `nombret`) VALUES
('0001', 'Doncente'),
('0002', 'Estuadiante'),
('0003', 'Auxiliar'),
('0004', 'Administrativo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipopublicacion`
--

CREATE TABLE IF NOT EXISTS `tipopublicacion` (
  `CODTP` varchar(30) NOT NULL DEFAULT '',
  `descripcion` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`CODTP`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcar la base de datos para la tabla `tipopublicacion`
--

INSERT INTO `tipopublicacion` (`CODTP`, `descripcion`) VALUES
('TP1', 'actualidad'),
('TP2', 'diseño de bd'),
('TP3', 'programacion'),
('TP4', 'reportes'),
('TP5', 'entrevistas'),
('TP6', 'desarrollo'),
('TP7', 'sitio'),
('TP8', 'biografia'),
('TP9', '2D y 3d'),
('TP11', 'simulacin'),
('TP12', 'programacion'),
('TP13', 'cientificas'),
('TP14', 'en linea'),
('TP15', 'web'),
('TP16', 'web'),
('TP17', 'blog');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
  `CODUSER` varchar(30) NOT NULL DEFAULT '',
  `nombreu` varchar(50) DEFAULT NULL,
  `apellidosu` varchar(50) DEFAULT NULL,
  `sexo` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `pasword` varchar(50) DEFAULT NULL,
  `fecha_nac` date DEFAULT NULL,
  `nacionalidad` varchar(50) DEFAULT NULL,
  `correo` varchar(50) DEFAULT NULL,
  `codt` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`CODUSER`),
  KEY `codt` (`codt`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcar la base de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`CODUSER`, `nombreu`, `apellidosu`, `sexo`, `username`, `pasword`, `fecha_nac`, `nacionalidad`, `correo`, `codt`) VALUES
('U001', 'Monica', 'Canaza mamani', 'F', 'luz', '123', '1991-03-06', 'bolivia', 'luz@gmail.com', '0001'),
('U002', 'Juan', 'quispe llanque', 'M', 'juan', '123', '1991-02-02', 'bolivia', 'abc@gmail.com', '0002'),
('U003', 'Gabriel', 'cruz mamani', 'M', 'gabr', '123', '1991-06-03', 'bolivia', 'cfd@gmail.com', '0002'),
('U004', 'Raul', 'callari mamani', 'M', 'raul', '123', '1991-06-04', 'bolivia', 'sol@gmail.com', '0002'),
('U005', 'MArcelo', 'Canaza peralta', 'M', 'marce', '123', '1991-06-03', 'bolivia', 'hdh@gmail.com', '0002'),
('U006', 'GErman', 'tarquino mamani', 'M', 'german', '123', '1991-06-05', 'bolivia', 'luz@gmail.com', '0003'),
('U007', 'Victor', 'cordero torrico', 'F', 'vic', '123', '1990-06-03', 'bolivia', 'luz@gmail.com', '0001'),
('U008', 'Soledad', 'Canaza mamani', 'F', 'sol', '123', '1993-06-05', 'bolivia', 'luz@gmail.com', '0002'),
('U009', 'Ana', 'ari miranda', 'F', 'luz', '123', '1991-06-03', 'bolivia', 'luz@gmail.com', '0003'),
('U010', 'CArolona', 'Canaza mamani', 'F', 'luz', '123', '1992-11-03', 'bolivia', 'luz@gmail.com', '0002'),
('U011', 'Jasn', 'garmea mamani', 'F', 'luz', '123', '1991-06-03', 'bolivia', 'luz@gmail.com', '0003'),
('U012', 'paola', 'paco quispe', 'F', 'luz', '123', '1992-01-11', 'bolivia', 'luz@gmail.com', '0002'),
('U013', 'yesid', 'Canaza mamani', 'M', 'luz', '123', '1993-07-03', 'bolivia', 'luz@gmail.com', '0003'),
('U014', 'luz', 'Canaza Cruz', 'F', 'luz', '123', '1991-06-03', 'bolivia', 'luz@gmail.com', '0001'),
('U015', 'Jose', 'Quispe mamani', 'M', 'luz', '123', '1993-07-09', 'bolivia', 'luz@gmail.com', '0002');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `valora`
--

CREATE TABLE IF NOT EXISTS `valora` (
  `CODV` varchar(30) NOT NULL DEFAULT '',
  `valor` int(11) DEFAULT NULL,
  `fecha_hora` date DEFAULT NULL,
  `CODUSER` varchar(30) DEFAULT NULL,
  `CODCF` varchar(30) DEFAULT NULL,
  `CODTS` varchar(30) DEFAULT NULL,
  `CODTX` varchar(30) DEFAULT NULL,
  `CODAV` varchar(30) DEFAULT NULL,
  `CODIN` varchar(30) DEFAULT NULL,
  `codi` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`CODV`),
  KEY `CODUSER` (`CODUSER`),
  KEY `CODCF` (`CODCF`),
  KEY `CODTS` (`CODTS`),
  KEY `CODTX` (`CODTX`),
  KEY `CODAV` (`CODAV`),
  KEY `CODIN` (`CODIN`),
  KEY `codi` (`codi`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcar la base de datos para la tabla `valora`
--

INSERT INTO `valora` (`CODV`, `valor`, `fecha_hora`, `CODUSER`, `CODCF`, `CODTS`, `CODTX`, `CODAV`, `CODIN`, `codi`) VALUES
('VAL01', 2, '2003-02-01', 'U001', 'CF1', NULL, NULL, NULL, NULL, NULL),
('VAL02', 3, '2003-02-01', 'U001', 'CF2', NULL, NULL, NULL, NULL, NULL),
('VAL03', 5, '2003-05-01', 'U002', 'CF1', NULL, NULL, NULL, NULL, NULL),
('VAL04', 3, '2003-05-02', 'U003', NULL, NULL, 'TXT7', NULL, NULL, NULL),
('VAL05', 3, '2002-05-02', 'U003', NULL, NULL, 'TXT2', NULL, NULL, NULL),
('VAL06', 5, '2002-05-02', 'U004', NULL, NULL, 'TXT3', NULL, NULL, NULL),
('VAL07', 4, '2002-02-02', 'U004', NULL, NULL, NULL, 'GRA005', NULL, NULL),
('VAL09', 4, '2003-03-03', 'U006', NULL, NULL, NULL, NULL, 'IN004', NULL),
('VAL010', 2, '2003-03-03', 'U006', NULL, NULL, NULL, NULL, NULL, 'IOO5');

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vst1`
--
CREATE TABLE IF NOT EXISTS `vst1` (
`CODCM` varchar(30)
,`comentario` varchar(50)
,`Usuario` varchar(101)
,`Codigo_fuente` varchar(50)
,`Tesis` varchar(50)
,`Texto` varchar(50)
,`Grabacion` varchar(50)
,`Instalador` varchar(50)
);
-- --------------------------------------------------------

--
-- Estructura para la vista `auditajedescargas`
--
DROP TABLE IF EXISTS `auditajedescargas`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `auditajedescargas` AS select `d`.`fecha_hora` AS `fecha`,concat(`u`.`nombreu`,' ',`u`.`apellidosu`) AS `Usuario`,(select `codigo_fuente`.`titulo` from `codigo_fuente` where (`d`.`CODCF` = `codigo_fuente`.`CODCF`)) AS `Codigo_fuente`,(select `tesis`.`titulo` from `tesis` where (`d`.`CODTS` = `tesis`.`CODTS`)) AS `Tesis`,(select `text`.`titulo` from `text` where (`d`.`CODTX` = `text`.`CODTX`)) AS `Texto`,(select `grabacion`.`titulo` AS `Grabacion` from `grabacion` where (`d`.`CODAV` = `grabacion`.`CODG`)) AS `Grabacion`,(select `instalador`.`titulo` AS `Instalador` from `instalador` where (`d`.`CODIN` = `instalador`.`CODIN`)) AS `Instalador` from (`descarga` `d` join `usuario` `u`) where (`d`.`CODUSER` = `u`.`CODUSER`);

-- --------------------------------------------------------

--
-- Estructura para la vista `autorestesis`
--
DROP TABLE IF EXISTS `autorestesis`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `autorestesis` AS select `u`.`CODUSER` AS `Codigo`,concat(`u`.`nombreu`,' ',`u`.`apellidosu`) AS `Nombres`,`ea`.`tipo_colaboracion` AS `categoria`,`t`.`titulo` AS `Titulo_de_Tesis` from ((`usuario` `u` join `es_autor` `ea`) join `tesis` `t`) where ((`u`.`CODUSER` = `ea`.`CODUSER`) and (`t`.`CODTS` = `ea`.`CODTS`) and (`ea`.`tipo_colaboracion` = 'autor'));

-- --------------------------------------------------------

--
-- Estructura para la vista `publifecha`
--
DROP TABLE IF EXISTS `publifecha`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `publifecha` AS select `p`.`fecha_hora` AS `Fecha`,concat(`u`.`nombreu`,' ',`u`.`apellidosu`) AS `Usuario`,(select `codigo_fuente`.`titulo` from `codigo_fuente` where (`p`.`CODCF` = `codigo_fuente`.`CODCF`)) AS `Codigo_fuente`,(select `tesis`.`titulo` from `tesis` where (`p`.`CODTS` = `tesis`.`CODTS`)) AS `Tesis`,(select `text`.`titulo` from `text` where (`p`.`CODTX` = `text`.`CODTX`)) AS `Texto`,(select `grabacion`.`titulo` AS `Grabacion` from `grabacion` where (`p`.`CODAV` = `grabacion`.`CODG`)) AS `Grabacion`,(select `instalador`.`titulo` AS `Instalador` from `instalador` where (`p`.`CODIN` = `instalador`.`CODIN`)) AS `Instalador` from (`publica` `p` join `usuario` `u`) where (`p`.`CODUSER` = `u`.`CODUSER`);

-- --------------------------------------------------------

--
-- Estructura para la vista `recusuario`
--
DROP TABLE IF EXISTS `recusuario`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `recusuario` AS select `r`.`nombre` AS `nombre`,concat(`u`.`nombreu`,' ',`u`.`apellidosu`) AS `Usuario`,(select `codigo_fuente`.`titulo` AS `Codigo_fuente` from `codigo_fuente` where (`dr`.`CODCF` = `codigo_fuente`.`CODCF`)) AS `Codigo_fuente`,(select `tesis`.`titulo` AS `tesis` from `tesis` where (`dr`.`CODTS` = `tesis`.`CODTS`)) AS `Tesis`,(select `text`.`titulo` AS `text` from `text` where (`dr`.`CODTX` = `text`.`CODTX`)) AS `Texto`,(select `grabacion`.`titulo` AS `Grabacion` from `grabacion` where (`dr`.`CODAV` = `grabacion`.`CODG`)) AS `Grabacion`,(select `instalador`.`titulo` AS `Instalador` from `instalador` where (`dr`.`CODIN` = `instalador`.`CODIN`)) AS `Instalador` from ((`reconocimiento` `r` join `detreconocimiento` `dr`) join `usuario` `u`) where ((`r`.`CODREC` = `dr`.`codrec`) and (`u`.`CODUSER` = `r`.`CODUSER`));

-- --------------------------------------------------------

--
-- Estructura para la vista `reportecurricular`
--
DROP TABLE IF EXISTS `reportecurricular`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `reportecurricular` AS select concat(`u`.`nombreu`,' ',`u`.`apellidosu`) AS `Usuario`,`ea`.`tipo_colaboracion` AS `Categoria`,(select `codigo_fuente`.`titulo` from `codigo_fuente` where (`ea`.`CODCF` = `codigo_fuente`.`CODCF`)) AS `Codigo_fuente`,(select `tesis`.`titulo` from `tesis` where (`ea`.`CODTS` = `tesis`.`CODTS`)) AS `Tesis`,(select `text`.`titulo` from `text` where (`ea`.`CODTX` = `text`.`CODTX`)) AS `Texto`,(select `grabacion`.`titulo` from `grabacion` where (`ea`.`CODAV` = `grabacion`.`CODG`)) AS `Grabacion`,(select `instalador`.`titulo` from `instalador` where (`ea`.`CODIN` = `instalador`.`CODIN`)) AS `Instalador` from (`usuario` `u` join `es_autor` `ea`) where (`ea`.`CODUSER` = `u`.`CODUSER`);

-- --------------------------------------------------------

--
-- Estructura para la vista `revisortutor`
--
DROP TABLE IF EXISTS `revisortutor`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `revisortutor` AS select `u`.`CODUSER` AS `Codigo`,concat(`u`.`nombreu`,' ',`u`.`apellidosu`) AS `Docente`,(select concat(`u`.`nombreu`,' ',`u`.`apellidosu`) AS `Autor` from `usuario` where ((`ea`.`CODUSER` = `usuario`.`CODUSER`) and (`ea`.`tipo_colaboracion` = 'autor'))) AS `Name_exp_3`,`ea`.`tipo_colaboracion` AS `categoria`,`t`.`titulo` AS `Titulo_de_Tesis` from ((`usuario` `u` join `es_autor` `ea`) join `tesis` `t`) where (((`u`.`CODUSER` = `ea`.`CODUSER`) and (`t`.`CODTS` = `ea`.`CODTS`) and (`ea`.`tipo_colaboracion` = 'tutor')) or (`ea`.`tipo_colaboracion` = 'revisor'));

-- --------------------------------------------------------

--
-- Estructura para la vista `vst1`
--
DROP TABLE IF EXISTS `vst1`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vst1` AS select `c`.`CODCM` AS `CODCM`,`c`.`comentario` AS `comentario`,concat(`u`.`nombreu`,' ',`u`.`apellidosu`) AS `Usuario`,(select `codigo_fuente`.`titulo` from `codigo_fuente` where (`c`.`CODCF` = `codigo_fuente`.`CODCF`)) AS `Codigo_fuente`,(select `tesis`.`titulo` from `tesis` where (`c`.`CODTS` = `tesis`.`CODTS`)) AS `Tesis`,(select `text`.`titulo` from `text` where (`c`.`CODTX` = `text`.`CODTX`)) AS `Texto`,(select `grabacion`.`titulo` AS `Grabacion` from `grabacion` where (`c`.`CODAV` = `grabacion`.`CODG`)) AS `Grabacion`,(select `instalador`.`titulo` AS `Instalador` from `instalador` where (`c`.`CODIN` = `instalador`.`CODIN`)) AS `Instalador` from (`comenta` `c` join `usuario` `u`) where (`c`.`CODUSER` = `u`.`CODUSER`);
