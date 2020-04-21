-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 21, 2020 at 07:21 PM
-- Server version: 5.7.29
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `prueba_ddie`
--

-- --------------------------------------------------------

--
-- Table structure for table `bitacora`
--

DROP TABLE IF EXISTS `bitacora`;
CREATE TABLE IF NOT EXISTS `bitacora` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_usuario` int(10) NOT NULL COMMENT 'id del usuario',
  `cambio` varchar(100) NOT NULL COMMENT 'modificación realizada',
  `id_registro` int(11) NOT NULL COMMENT 'id del registro',
  `fecha` timestamp NOT NULL COMMENT 'fecha de la modificación',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `consultas`
--

DROP TABLE IF EXISTS `consultas`;
CREATE TABLE IF NOT EXISTS `consultas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_usuario` int(10) NOT NULL COMMENT 'id o correo del usuario que registra la consulta',
  `id_intervencion` int(10) NOT NULL COMMENT 'id del tipo de intervencion',
  `id_solicitante` int(10) NOT NULL COMMENT 'id del tipo de solicitante',
  `solicitante_otro` varchar(100) DEFAULT NULL COMMENT 'Descripción del tipo de solicitante OTRO',
  `id_solicitud` int(10) NOT NULL COMMENT 'id del tipo de solicitud',
  `id_respuesta` int(10) DEFAULT NULL COMMENT 'id del tipo de respuesta al usuario',
  `tema` varchar(200) NOT NULL COMMENT 'tema relacionado con la consulta (campo no obligatorio)',
  `fecha_solicitud` date NOT NULL COMMENT 'fecha en que se realiza la solicitud de información',
  `fecha_respuesta` date DEFAULT NULL COMMENT 'fecha en que se atiende la solicitud',
  `borrado` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'Campo que indica el 0 si el registro NO ha sido eliminado 1 fue eliminado',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=73 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `consultas`
--

INSERT INTO `consultas` (`id`, `id_usuario`, `id_intervencion`, `id_solicitante`, `solicitante_otro`, `id_solicitud`, `id_respuesta`, `tema`, `fecha_solicitud`, `fecha_respuesta`, `borrado`) VALUES
(68, 7, 1, 3, NULL, 3, 2, 'Los paquidermos', '2020-03-31', NULL, 0),
(67, 7, 2, 2, NULL, 3, 5, 'Las figuras geométricas novedosas', '2020-03-24', NULL, 0),
(69, 7, 2, 2, NULL, 4, 5, 'Cómo hacer helados caseros', '2020-03-24', NULL, 0),
(70, 7, 2, 2, NULL, 4, 6, 'Origen del trio los panchos', '2020-03-24', NULL, 0),
(71, 7, 2, 2, NULL, 4, 5, 'Pasatiempos para quedarse en casa', '2020-03-24', NULL, 0),
(72, 7, 2, 2, NULL, 4, 6, 'Desaparición de los dinosaurios', '2020-03-24', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ingresos`
--

DROP TABLE IF EXISTS `ingresos`;
CREATE TABLE IF NOT EXISTS `ingresos` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT 'identificador del ingreso',
  `id_usuario` int(20) NOT NULL COMMENT 'id del usuario - correo',
  `id_ingreso` int(20) NOT NULL COMMENT 'identificador del tipo de ingreso',
  `descriptor` int(20) NOT NULL COMMENT 'número de descriptores',
  `portada` int(20) NOT NULL COMMENT 'número de portadas',
  `texto_completo` int(20) NOT NULL COMMENT 'número de tetos completos ingresados',
  `enlace` int(20) NOT NULL COMMENT 'número de enlaces',
  `fecha` date NOT NULL COMMENT 'fecha registrada',
  `mes` int(10) DEFAULT NULL COMMENT 'mes de publicación de articulo periódico',
  `anno` int(10) DEFAULT NULL COMMENT 'año de publicación de artículo perióidico',
  `modificado_reg_antiguo` varchar(100) DEFAULT NULL,
  `registro` varchar(100) DEFAULT NULL COMMENT 'Campo registro nuevo para modificado y registro para eliminados',
  `modificado_datos_corregidos` text,
  `nota` text COMMENT 'Nota para registros eliminados y modificados',
  `borrado` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'Campo que indica el 0 si el registro NO ha sido eliminado 1 fue eliminado',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ingresos`
--

INSERT INTO `ingresos` (`id`, `id_usuario`, `id_ingreso`, `descriptor`, `portada`, `texto_completo`, `enlace`, `fecha`, `mes`, `anno`, `modificado_reg_antiguo`, `registro`, `modificado_datos_corregidos`, `nota`, `borrado`) VALUES
(25, 7, 3, 123, 12, 22, 12, '2020-03-24', 2, 2011, NULL, NULL, NULL, NULL, 0),
(24, 7, 1, 111, 11, 11, 11, '2020-03-24', NULL, NULL, NULL, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
CREATE TABLE IF NOT EXISTS `productos` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'identificador único',
  `id_producto` int(10) NOT NULL COMMENT 'id del producto',
  `desc_otro` varchar(100) DEFAULT NULL COMMENT 'Descripción de tipo producto OTRO',
  `id_usuario` int(10) NOT NULL COMMENT 'id  del usuario',
  `cantidad` int(10) NOT NULL COMMENT 'cantidad del producto',
  `fecha` date NOT NULL COMMENT 'fecha registrada',
  `cantidad_beneficiarios` int(11) NOT NULL COMMENT 'Cantidad de personas que se benefician con el producto',
  `numero_consecutivo` int(11) DEFAULT NULL,
  `tema_video_divulgacion` text COMMENT 'Tema del video de divulgación',
  `volumen_revista` int(10) DEFAULT NULL COMMENT 'número del volúmen de la revista',
  `numero_revista` int(10) DEFAULT NULL COMMENT 'número de la revista',
  `mes_revista` int(10) DEFAULT NULL COMMENT 'mes de la revista',
  `anno_revista` int(10) DEFAULT NULL COMMENT 'año de la revista',
  `poblacion` text COMMENT 'id del tipo poblacion beneficiaria',
  `poblacion_otro` varchar(100) DEFAULT NULL COMMENT 'Descripción de otro tipo de población',
  `borrado` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'Campo que indica el 0 si el registro NO ha sido eliminado 1 fue eliminado',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=87 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `productos`
--

INSERT INTO `productos` (`id`, `id_producto`, `desc_otro`, `id_usuario`, `cantidad`, `fecha`, `cantidad_beneficiarios`, `numero_consecutivo`, `tema_video_divulgacion`, `volumen_revista`, `numero_revista`, `mes_revista`, `anno_revista`, `poblacion`, `poblacion_otro`, `borrado`) VALUES
(82, 1, NULL, 7, 1, '2020-03-01', 5, NULL, NULL, 23, 23, 12, 2013, '[]', NULL, 0),
(83, 7, NULL, 7, 3, '2020-03-24', 4, NULL, 'Los esquemas', NULL, NULL, NULL, NULL, '[{\"id\":\"2\"},{\"id\":\"3\"}]', NULL, 1),
(84, 8, 'Las vocales', 7, 4, '2020-03-02', 4, 5, NULL, NULL, NULL, NULL, NULL, '[{\"id\":\"2\"},{\"id\":\"3\"},{\"id\":\"6\"},{\"id\":\"11\"},{\"id\":\"12\"}]', NULL, 0),
(85, 1, NULL, 7, 4, '2020-03-24', 3, NULL, NULL, 2, 2, 4, 2014, '[]', 'todo el texto', 0),
(86, 4, NULL, 7, 1, '2020-03-17', 1, 12, NULL, NULL, NULL, NULL, NULL, '[{\"id\":\"2\"},{\"id\":\"3\"}]', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `productos_poblacion_meta`
--

DROP TABLE IF EXISTS `productos_poblacion_meta`;
CREATE TABLE IF NOT EXISTS `productos_poblacion_meta` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'identificador único',
  `nombre` varchar(50) NOT NULL COMMENT 'nombre de la población meta',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `productos_poblacion_meta`
--

INSERT INTO `productos_poblacion_meta` (`id`, `nombre`) VALUES
(1, 'Docentes'),
(2, 'Estudiantes'),
(3, 'Directores Institucionales'),
(4, 'Directores Regionales'),
(5, 'Oficinas Centrales del MEP'),
(6, 'Asesores regionales'),
(7, 'Asesores nacionales'),
(8, 'Padres de familia'),
(9, 'Bibliotecólogas'),
(10, 'Centros Educativos'),
(11, 'Despachos'),
(12, 'Otro');

-- --------------------------------------------------------

--
-- Table structure for table `tipo_ingreso`
--

DROP TABLE IF EXISTS `tipo_ingreso`;
CREATE TABLE IF NOT EXISTS `tipo_ingreso` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'identificador del tipo de información que se ingresa',
  `tipo` varchar(100) NOT NULL COMMENT 'tipo de información almacenada',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tipo_ingreso`
--

INSERT INTO `tipo_ingreso` (`id`, `tipo`) VALUES
(1, 'Artículo de prensa'),
(2, 'Artículo de revista'),
(3, 'Artículo de periódico'),
(4, 'Legislación'),
(5, 'Libros'),
(6, 'Memorias'),
(7, 'Programas de estudio'),
(8, 'Modificado'),
(9, 'Eliminado');

-- --------------------------------------------------------

--
-- Table structure for table `tipo_intervencion`
--

DROP TABLE IF EXISTS `tipo_intervencion`;
CREATE TABLE IF NOT EXISTS `tipo_intervencion` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id del tipo de intervención',
  `tipo` varchar(200) NOT NULL COMMENT 'Descripción del tipo de intervención que se realiza',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tipo_intervencion`
--

INSERT INTO `tipo_intervencion` (`id`, `tipo`) VALUES
(1, 'Presencial'),
(2, 'Telefónica'),
(3, 'Correo');

-- --------------------------------------------------------

--
-- Table structure for table `tipo_productos`
--

DROP TABLE IF EXISTS `tipo_productos`;
CREATE TABLE IF NOT EXISTS `tipo_productos` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'identificador del tipo de producto creado',
  `tipo` varchar(200) NOT NULL COMMENT 'descripción del tipo de producto',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tipo_productos`
--

INSERT INTO `tipo_productos` (`id`, `tipo`) VALUES
(1, 'Revista Conexiones'),
(2, 'Boletín La ley al día'),
(3, 'Listado de últimas adquisiciones'),
(4, 'DDIE Informa'),
(5, 'Recomendaciones DDIE'),
(6, 'Revista Conexiones - Divulgación'),
(7, 'Video de divulgación'),
(8, 'Otro');

-- --------------------------------------------------------

--
-- Table structure for table `tipo_respuesta`
--

DROP TABLE IF EXISTS `tipo_respuesta`;
CREATE TABLE IF NOT EXISTS `tipo_respuesta` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'identificador del tipo de respuesta',
  `tipo` varchar(200) NOT NULL COMMENT 'tipo de respuesta en la atención de la consulta',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tipo_respuesta`
--

INSERT INTO `tipo_respuesta` (`id`, `tipo`) VALUES
(1, 'Presencial'),
(2, 'Telefónica'),
(3, 'Correo'),
(4, 'Fax'),
(5, 'Internet'),
(6, 'Biblioteca digital');

-- --------------------------------------------------------

--
-- Table structure for table `tipo_solicitante`
--

DROP TABLE IF EXISTS `tipo_solicitante`;
CREATE TABLE IF NOT EXISTS `tipo_solicitante` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'identificador del tipo de solicitante de información',
  `tipo` varchar(200) NOT NULL COMMENT 'tipo de solicitante de información',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tipo_solicitante`
--

INSERT INTO `tipo_solicitante` (`id`, `tipo`) VALUES
(1, 'Docente'),
(2, 'Asesor'),
(3, 'Administrativo'),
(4, 'Estudiante'),
(5, 'Otro');

-- --------------------------------------------------------

--
-- Table structure for table `tipo_solicitud`
--

DROP TABLE IF EXISTS `tipo_solicitud`;
CREATE TABLE IF NOT EXISTS `tipo_solicitud` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'identificador de tipo de solicitud',
  `tipo` varchar(200) NOT NULL COMMENT 'tipo de solicitud que realiza el usuario',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tipo_solicitud`
--

INSERT INTO `tipo_solicitud` (`id`, `tipo`) VALUES
(1, 'Video'),
(2, 'Libro físico'),
(3, 'Libro digital'),
(4, 'Informacion'),
(5, 'Código ISBN'),
(6, 'Sala'),
(7, 'Revista');

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `idUsuario` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT 'Nombre del usuario',
  `tipoUsuario` varchar(128) CHARACTER SET utf8 NOT NULL COMMENT 'Tipo de usuario, por defecto usuario',
  `apellido1` varchar(25) CHARACTER SET utf8 DEFAULT NULL COMMENT 'Primer apellido del usuario',
  `apellido2` varchar(25) CHARACTER SET utf8 DEFAULT NULL COMMENT 'Segundo Apellido del mediador',
  `correo` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT 'correo oficial del mediador',
  `claveEncriptada` varchar(130) CHARACTER SET utf8 NOT NULL DEFAULT '0' COMMENT 'Contraseña del mediador',
  `activacion` int(11) NOT NULL COMMENT 'Usuario activo(1) o no activo(0)',
  `token` varchar(40) CHARACTER SET utf8 NOT NULL COMMENT 'Valor del token',
  `token_password` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `password_request` int(11) DEFAULT '0',
  `last_session` datetime DEFAULT NULL,
  PRIMARY KEY (`idUsuario`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` (`idUsuario`, `nombre`, `tipoUsuario`, `apellido1`, `apellido2`, `correo`, `claveEncriptada`, `activacion`, `token`, `token_password`, `password_request`, `last_session`) VALUES
(7, 'Ana', 'Administrador', 'Araya', 'Salazar', 'ana.araya.salazar@mep.go.cr', '$2y$10$ugNtW4UnCVK13tUMnMjMUeJB0Fnx5eCfkE6OFJ9g5wivbpiUnCyxK', 1, '86d5d6c3b06452eb01aad5f0a73291ef', NULL, 0, NULL),
(8, 'Jeffrey', '1', 'Cambronero', 'Durán', 'jeffrey.cambronero.duran@mep.go.cr', '$2y$10$W1TFIM/oj.WDe32iqZRs/.uzuLXDZyZjnGSGOLZgGz1jivKoOjIf6', 1, '1f4abbe2ddb79398c293a9e4370513a2', NULL, 0, NULL),
(9, 'María del Pilar ', '-', 'Sánchez', 'Madrigal', 'pilar.sanchez.madrigal@mep.go.cr', '$2y$10$xGVmJCHUjaZw/bCbssVTneshh91ptRDWfcP0i7KcmlH/U/aG3U8qW', 1, 'e27267b980aabe4d50133b2b1ec2b7e3', NULL, 0, NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
