-- phpMyAdmin SQL Dump
-- version 3.4.11.1deb1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 19-06-2013 a las 09:56:36
-- Versión del servidor: 5.5.31
-- Versión de PHP: 5.4.6-1ubuntu1.2

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `multi`
--

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `autorestesis`
--
CREATE TABLE IF NOT EXISTS `autorestesis` (
`Codigo` int(11)
,`Nombres` varchar(101)
,`categoria` int(11)
,`Titulo_de_Tesis` varchar(50)
);
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE IF NOT EXISTS `categoria` (
  `codcat` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codcat`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`codcat`, `nombre`) VALUES
(1, 'web'),
(2, 'programacion orientada a objetos'),
(3, 'java'),
(4, 'programacion funcional'),
(9, 'java'),
(8, 'programacion funcional'),
(7, 'programacion funcional'),
(6, 'programacion funcional'),
(5, 'programacion funcional');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `codigo_fuente`
--

CREATE TABLE IF NOT EXISTS `codigo_fuente` (
  `codf` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(50) DEFAULT NULL,
  `llavepub` varchar(50) DEFAULT NULL,
  `tamanio` varchar(50) DEFAULT NULL,
  `idioma` varchar(50) DEFAULT NULL,
  `CODMAT` int(11) DEFAULT NULL,
  `CODCAT` int(11) DEFAULT NULL,
  `CODTP` int(11) DEFAULT NULL,
  `CODLIC` int(11) DEFAULT NULL,
  `fecha_elaboracion` date DEFAULT NULL,
  `extension` varchar(50) DEFAULT NULL,
  `versionP` varchar(50) DEFAULT NULL,
  `so` varchar(50) DEFAULT NULL,
  `link_ofi` varchar(50) DEFAULT NULL,
  `lenguaje` varchar(50) DEFAULT NULL,
  `resenia` varchar(50) DEFAULT NULL,
  `metodologia` varchar(50) DEFAULT NULL,
  `descripcion` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`codf`),
  KEY `CODMAT` (`CODMAT`),
  KEY `CODCAT` (`CODCAT`),
  KEY `CODTP` (`CODTP`),
  KEY `CODLIC` (`CODLIC`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `codigo_fuente`
--

INSERT INTO `codigo_fuente` (`codf`, `titulo`, `llavepub`, `tamanio`, `idioma`, `CODMAT`, `CODCAT`, `CODTP`, `CODLIC`, `fecha_elaboracion`, `extension`, `versionP`, `so`, `link_ofi`, `lenguaje`, `resenia`, `metodologia`, `descripcion`) VALUES
(1, 'introduccion a la programacion', '0', '12', 'ingles', 1, 2, 1, 1, '2013-06-13', 'exe', '123', 'windows', '123@gmail.com', 'java', 'es una guia muy buena', 'metodologia', 'esta bien hecha'),
(2, 'introduccion a la programacion', '0', '12', 'ingles', 1, 1, 1, 1, '2013-06-13', 'exe', '123', 'windows', '123@gmail.com', 'java', 'es una guia muy buena', 'metodologia', 'esta bien hecha'),
(3, 'introduccion a la programacion', '0', '12', 'ingles', 1, 1, 1, 1, '2013-06-13', 'exe', '123', 'windows', '123@gmail.com', 'java', 'es una guia muy buena', 'metodologia', 'esta bien hecha');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comenta`
--

CREATE TABLE IF NOT EXISTS `comenta` (
  `CODCM` int(11) NOT NULL AUTO_INCREMENT,
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `comenta`
--

INSERT INTO `comenta` (`CODCM`, `comentario`, `fecha_hora`, `CODUSER`, `CODCF`, `CODTS`, `CODTX`, `CODAV`, `CODIN`, `codi`) VALUES
(1, 'esta bien hecho', '2013-06-06', '2', '1', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `descarga`
--

CREATE TABLE IF NOT EXISTS `descarga` (
  `codd` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_hora` date DEFAULT NULL,
  `CODUSER` int(11) DEFAULT NULL,
  `CODCF` int(11) DEFAULT NULL,
  `CODTS` int(11) DEFAULT NULL,
  `CODTX` int(11) DEFAULT NULL,
  `CODAV` int(11) DEFAULT NULL,
  `CODIN` int(11) DEFAULT NULL,
  `codi` int(11) DEFAULT NULL,
  PRIMARY KEY (`codd`),
  KEY `CODUSER` (`CODUSER`),
  KEY `CODCF` (`CODCF`),
  KEY `CODTS` (`CODTS`),
  KEY `CODTX` (`CODTX`),
  KEY `CODAV` (`CODAV`),
  KEY `CODIN` (`CODIN`),
  KEY `codi` (`codi`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `descarga`
--

INSERT INTO `descarga` (`codd`, `fecha_hora`, `CODUSER`, `CODCF`, `CODTS`, `CODTX`, `CODAV`, `CODIN`, `codi`) VALUES
(3, '2013-06-04', 2, NULL, 3, NULL, NULL, NULL, NULL),
(4, '2013-06-03', 3, NULL, 1, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detreconocimiento`
--

CREATE TABLE IF NOT EXISTS `detreconocimiento` (
  `codrec` int(11) NOT NULL AUTO_INCREMENT,
  `CODCF` int(11) DEFAULT NULL,
  `CODTS` int(11) DEFAULT NULL,
  `CODTX` int(11) DEFAULT NULL,
  `CODAV` int(11) DEFAULT NULL,
  `CODIN` int(11) DEFAULT NULL,
  `codi` int(11) DEFAULT NULL,
  `fechar` date DEFAULT NULL,
  PRIMARY KEY (`codrec`),
  KEY `CODCF` (`CODCF`),
  KEY `CODTS` (`CODTS`),
  KEY `CODTX` (`CODTX`),
  KEY `CODAV` (`CODAV`),
  KEY `CODIN` (`CODIN`),
  KEY `codi` (`codi`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `detreconocimiento`
--

INSERT INTO `detreconocimiento` (`codrec`, `CODCF`, `CODTS`, `CODTX`, `CODAV`, `CODIN`, `codi`, `fechar`) VALUES
(1, 1, NULL, NULL, NULL, NULL, NULL, '2013-06-20'),
(2, NULL, NULL, NULL, 1, NULL, NULL, '2013-06-05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `es_autor`
--

CREATE TABLE IF NOT EXISTS `es_autor` (
  `tipo_colaboracion` int(11) DEFAULT NULL,
  `CODUSER` int(11) DEFAULT NULL,
  `CODCF` int(11) DEFAULT NULL,
  `CODTS` int(11) DEFAULT NULL,
  `CODTX` int(11) DEFAULT NULL,
  `CODAV` int(11) DEFAULT NULL,
  `CODIN` int(11) DEFAULT NULL,
  `codi` int(11) DEFAULT NULL,
  KEY `CODUSER` (`CODUSER`),
  KEY `CODCF` (`CODCF`),
  KEY `CODTS` (`CODTS`),
  KEY `CODTX` (`CODTX`),
  KEY `CODAV` (`CODAV`),
  KEY `CODIN` (`CODIN`),
  KEY `codi` (`codi`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `es_autor`
--

INSERT INTO `es_autor` (`tipo_colaboracion`, `CODUSER`, `CODCF`, `CODTS`, `CODTX`, `CODAV`, `CODIN`, `codi`) VALUES
(1, NULL, NULL, NULL, 1, NULL, NULL, NULL),
(1, NULL, NULL, NULL, NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grabacion`
--

CREATE TABLE IF NOT EXISTS `grabacion` (
  `codg` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(50) DEFAULT NULL,
  `llavepub` varchar(50) DEFAULT NULL,
  `tamanio` varchar(50) DEFAULT NULL,
  `idioma` varchar(50) DEFAULT NULL,
  `CODMAT` int(11) DEFAULT NULL,
  `CODCAT` int(11) DEFAULT NULL,
  `CODTP` int(11) DEFAULT NULL,
  `CODLIC` int(11) DEFAULT NULL,
  `fecha_elaboracion` date DEFAULT NULL,
  `extension` varchar(50) DEFAULT NULL,
  `versionP` varchar(50) DEFAULT NULL,
  `tiempo` float DEFAULT NULL,
  `descripcion` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`codg`),
  KEY `CODMAT` (`CODMAT`),
  KEY `CODCAT` (`CODCAT`),
  KEY `CODTP` (`CODTP`),
  KEY `CODLIC` (`CODLIC`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `grabacion`
--

INSERT INTO `grabacion` (`codg`, `titulo`, `llavepub`, `tamanio`, `idioma`, `CODMAT`, `CODCAT`, `CODTP`, `CODLIC`, `fecha_elaboracion`, `extension`, `versionP`, `tiempo`, `descripcion`) VALUES
(1, 'audio de ingles', '123', '12', 'ingles', 1, 1, 1, 1, '2013-06-17', '123', '1.0', 12.3, 'para aprender ingles');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imagen`
--

CREATE TABLE IF NOT EXISTS `imagen` (
  `codi` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(50) DEFAULT NULL,
  `tamanio` varchar(50) DEFAULT NULL,
  `rutaubic` varchar(50) DEFAULT NULL,
  `CODMAT` int(11) DEFAULT NULL,
  `CODCAT` int(11) DEFAULT NULL,
  `CODTP` int(11) DEFAULT NULL,
  `CODLIC` int(11) DEFAULT NULL,
  `fecha_elaboracion` date DEFAULT NULL,
  `extension` varchar(50) DEFAULT NULL,
  `descripcion` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`codi`),
  KEY `CODMAT` (`CODMAT`),
  KEY `CODCAT` (`CODCAT`),
  KEY `CODTP` (`CODTP`),
  KEY `CODLIC` (`CODLIC`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `imagen`
--

INSERT INTO `imagen` (`codi`, `titulo`, `tamanio`, `rutaubic`, `CODMAT`, `CODCAT`, `CODTP`, `CODLIC`, `fecha_elaboracion`, `extension`, `descripcion`) VALUES
(1, 'flores', '3', 'texto.html', 1, 1, 1, 1, '2013-06-02', 'EXE', 'FONDO DE PANTALL');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `instalador`
--

CREATE TABLE IF NOT EXISTS `instalador` (
  `codin` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(50) DEFAULT NULL,
  `llavepub` varchar(50) DEFAULT NULL,
  `tamanio` varchar(50) DEFAULT NULL,
  `idioma` varchar(50) DEFAULT NULL,
  `CODMAT` int(11) DEFAULT NULL,
  `CODCAT` int(11) DEFAULT NULL,
  `CODTP` int(11) DEFAULT NULL,
  `CODLIC` int(11) DEFAULT NULL,
  `fecha_elaboracion` date DEFAULT NULL,
  `extension` varchar(50) DEFAULT NULL,
  `versionP` varchar(50) DEFAULT NULL,
  `so` varchar(50) DEFAULT NULL,
  `link_ofi` varchar(50) DEFAULT NULL,
  `descripcion` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`codin`),
  KEY `CODMAT` (`CODMAT`),
  KEY `CODCAT` (`CODCAT`),
  KEY `CODTP` (`CODTP`),
  KEY `CODLIC` (`CODLIC`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `instalador`
--

INSERT INTO `instalador` (`codin`, `titulo`, `llavepub`, `tamanio`, `idioma`, `CODMAT`, `CODCAT`, `CODTP`, `CODLIC`, `fecha_elaboracion`, `extension`, `versionP`, `so`, `link_ofi`, `descripcion`) VALUES
(1, 'sdk java', '0', '2', 'i', 1, 1, 1, 1, '2013-06-19', 'EXE', '6.9', 'WINDOWS', '123', 'INSATALADOR DEL JDK');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `licencia`
--

CREATE TABLE IF NOT EXISTS `licencia` (
  `codlic` int(11) NOT NULL AUTO_INCREMENT,
  `tipo` varchar(30) DEFAULT NULL,
  `montocosto` float DEFAULT NULL,
  PRIMARY KEY (`codlic`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `licencia`
--

INSERT INTO `licencia` (`codlic`, `tipo`, `montocosto`) VALUES
(1, 'EULA', 100),
(2, 'GPL', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materia`
--

CREATE TABLE IF NOT EXISTS `materia` (
  `CODMAT` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `sigla` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`CODMAT`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `materia`
--

INSERT INTO `materia` (`CODMAT`, `nombre`, `sigla`) VALUES
(1, 'Introduccion a la programacion', 'INF 111'),
(2, 'estructura de computadores', 'INF 112');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `publica`
--

CREATE TABLE IF NOT EXISTS `publica` (
  `CODP` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_hora` date DEFAULT NULL,
  `CODUSER` int(11) DEFAULT NULL,
  `CODCF` int(11) DEFAULT NULL,
  `CODTS` int(11) DEFAULT NULL,
  `CODTX` int(11) DEFAULT NULL,
  `CODAV` int(11) DEFAULT NULL,
  `CODIN` int(11) DEFAULT NULL,
  `codi` int(11) DEFAULT NULL,
  PRIMARY KEY (`CODP`),
  KEY `CODUSER` (`CODUSER`),
  KEY `CODCF` (`CODCF`),
  KEY `CODTS` (`CODTS`),
  KEY `CODTX` (`CODTX`),
  KEY `CODAV` (`CODAV`),
  KEY `CODIN` (`CODIN`),
  KEY `codi` (`codi`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `publica`
--

INSERT INTO `publica` (`CODP`, `fecha_hora`, `CODUSER`, `CODCF`, `CODTS`, `CODTX`, `CODAV`, `CODIN`, `codi`) VALUES
(1, '2013-06-21', 1, NULL, 2, NULL, NULL, NULL, NULL),
(2, '2013-06-05', 3, NULL, NULL, 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reconocimiento`
--

CREATE TABLE IF NOT EXISTS `reconocimiento` (
  `codrec` int(11) NOT NULL AUTO_INCREMENT,
  `CODUSER` int(11) DEFAULT NULL,
  `nombre` varchar(30) DEFAULT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`codrec`),
  KEY `CODUSER` (`CODUSER`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `reconocimiento`
--

INSERT INTO `reconocimiento` (`codrec`, `CODUSER`, `nombre`, `descripcion`) VALUES
(1, 1, 'valor', 'reconocimiento al emprendurismo'),
(3, 2, 'valor', 'reconocimiento al emprendurismo'),
(4, 3, 'maya', 'goierno municipal de la paz');

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `revisortutor`
--
CREATE TABLE IF NOT EXISTS `revisortutor` (
`Codigo` int(11)
,`Docente` varchar(101)
,`Name_exp_3` varchar(101)
,`categoria` int(11)
,`Titulo_de_Tesis` varchar(50)
);
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tesis`
--

CREATE TABLE IF NOT EXISTS `tesis` (
  `codts` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(50) DEFAULT NULL,
  `tamanio` varchar(50) DEFAULT NULL,
  `idioma` varchar(50) DEFAULT NULL,
  `rutaubic` varchar(50) DEFAULT NULL,
  `CODMAT` int(11) DEFAULT NULL,
  `CODCAT` int(11) DEFAULT NULL,
  `CODTP` int(11) DEFAULT NULL,
  `CODLIC` int(11) DEFAULT NULL,
  `fecha_elaboracion` date DEFAULT NULL,
  `extension` varchar(50) DEFAULT NULL,
  `codtesis` varchar(50) DEFAULT NULL,
  `descripcion` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`codts`),
  KEY `CODMAT` (`CODMAT`),
  KEY `CODCAT` (`CODCAT`),
  KEY `CODTP` (`CODTP`),
  KEY `CODLIC` (`CODLIC`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `text`
--

CREATE TABLE IF NOT EXISTS `text` (
  `CODTX` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(50) DEFAULT NULL,
  `llavepub` varchar(50) DEFAULT NULL,
  `tamanio` varchar(50) DEFAULT NULL,
  `idioma` varchar(50) DEFAULT NULL,
  `rutaubic` varchar(50) DEFAULT NULL,
  `editor` varchar(50) DEFAULT NULL,
  `CODMAT` int(11) DEFAULT NULL,
  `CODCAT` int(11) DEFAULT NULL,
  `CODTP` int(11) DEFAULT NULL,
  `CODLIC` int(11) DEFAULT NULL,
  `fecha_elaboracion` date DEFAULT NULL,
  `extension` varchar(50) DEFAULT NULL,
  `descripcion` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`CODTX`),
  KEY `CODMAT` (`CODMAT`),
  KEY `CODCAT` (`CODCAT`),
  KEY `CODTP` (`CODTP`),
  KEY `CODLIC` (`CODLIC`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo`
--

CREATE TABLE IF NOT EXISTS `tipo` (
  `codt` int(11) NOT NULL AUTO_INCREMENT,
  `nombret` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`codt`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `tipo`
--

INSERT INTO `tipo` (`codt`, `nombret`) VALUES
(1, 'docente'),
(2, 'auxiliar');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipopublicacion`
--

CREATE TABLE IF NOT EXISTS `tipopublicacion` (
  `CODTP` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`CODTP`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `tipopublicacion`
--

INSERT INTO `tipopublicacion` (`CODTP`, `descripcion`) VALUES
(1, 'tarea'),
(2, 'practica'),
(3, 'manual'),
(4, 'ejemplo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
  `CODUSER` int(11) NOT NULL AUTO_INCREMENT,
  `nombreu` varchar(50) DEFAULT NULL,
  `apellidosu` varchar(50) DEFAULT NULL,
  `sexo` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `pasword` varchar(50) DEFAULT NULL,
  `fecha_nac` date DEFAULT NULL,
  `nacionalidad` varchar(50) DEFAULT NULL,
  `correo` varchar(50) DEFAULT NULL,
  `codt` int(11) DEFAULT NULL,
  PRIMARY KEY (`CODUSER`),
  KEY `codt` (`codt`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`CODUSER`, `nombreu`, `apellidosu`, `sexo`, `username`, `pasword`, `fecha_nac`, `nacionalidad`, `correo`, `codt`) VALUES
(1, 'monica', 'canaza mamani', 'f', 'luz', '12345', '2013-06-05', 'boliviana', 'luz.info14@gmail.com', 1),
(2, 'marcelo', 'mendoza', 'm', 'marce', '123', '2013-06-20', 'bolivia', 'marz@gmail.com', 2),
(3, 'monica', 'canaza mamani', 'f', 'luz', '12345', '2013-06-05', 'boliviana', 'luz.info14@gmail.com', 1),
(4, 'marcelo', 'mendoza', 'm', 'marce', '123', '2013-06-20', 'bolivia', 'marz@gmail.com', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `valora`
--

CREATE TABLE IF NOT EXISTS `valora` (
  `valor` int(11) DEFAULT NULL,
  `fecha_hora` date DEFAULT NULL,
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
-- Volcado de datos para la tabla `valora`
--

INSERT INTO `valora` (`valor`, `fecha_hora`, `CODUSER`, `CODCF`, `CODTS`, `CODTX`, `CODAV`, `CODIN`, `codi`) VALUES
(1, '2013-06-04', '2', '1', NULL, NULL, NULL, NULL, NULL),
(2, '2013-06-20', NULL, NULL, '2', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura para la vista `autorestesis`
--
DROP TABLE IF EXISTS `autorestesis`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `autorestesis` AS select `u`.`CODUSER` AS `Codigo`,concat(`u`.`nombreu`,' ',`u`.`apellidosu`) AS `Nombres`,`ea`.`tipo_colaboracion` AS `categoria`,`t`.`titulo` AS `Titulo_de_Tesis` from ((`usuario` `u` join `es_autor` `ea`) join `tesis` `t`) where ((`u`.`CODUSER` = `ea`.`CODUSER`) and (`t`.`codts` = `ea`.`CODTS`) and (`ea`.`tipo_colaboracion` = 'autor'));

-- --------------------------------------------------------

--
-- Estructura para la vista `revisortutor`
--
DROP TABLE IF EXISTS `revisortutor`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `revisortutor` AS select `u`.`CODUSER` AS `Codigo`,concat(`u`.`nombreu`,' ',`u`.`apellidosu`) AS `Docente`,(select concat(`u`.`nombreu`,' ',`u`.`apellidosu`) AS `Autor` from `usuario` where ((`ea`.`CODUSER` = `usuario`.`CODUSER`) and (`ea`.`tipo_colaboracion` = 'autor'))) AS `Name_exp_3`,`ea`.`tipo_colaboracion` AS `categoria`,`t`.`titulo` AS `Titulo_de_Tesis` from ((`usuario` `u` join `es_autor` `ea`) join `tesis` `t`) where (((`u`.`CODUSER` = `ea`.`CODUSER`) and (`t`.`codts` = `ea`.`CODTS`) and (`ea`.`tipo_colaboracion` = 'tutor')) or (`ea`.`tipo_colaboracion` = 'revisor'));

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
