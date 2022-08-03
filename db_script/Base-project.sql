-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 01-08-2022 a las 17:33:54
-- Versión del servidor: 5.6.51
-- Versión de PHP: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `project`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `admin`
--

INSERT INTO `admin` (`admin_id`, `email`, `password`) VALUES
(2, 'admin@correo.com', '1234abcd..');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `answer`
--

CREATE TABLE `answer` (
  `qid` text NOT NULL,
  `ansid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `answer`
--

INSERT INTO `answer` (`qid`, `ansid`) VALUES
('62e80a7376d43', '62e80a7381606'),
('62e80a73a40d8', '62e80a73aa129'),
('62e80a73c27cb', '62e80a73d2b73'),
('62e80a73eb303', '62e80a73f13c1'),
('62e80a7415889', '62e80a741b90a');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `feedback`
--

CREATE TABLE `feedback` (
  `id` text NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `subject` varchar(500) NOT NULL,
  `feedback` varchar(500) NOT NULL,
  `date` date NOT NULL,
  `time` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `email`, `subject`, `feedback`, `date`, `time`) VALUES
('5f87ca01c593b', 'Usuario', 'configuroweb@gmail.com', 'problemas con la pregunta 3', 'no estoy de acuerdo con la pregunta 3, no me parece una opción exacta, sería mejor una pregunta abierta.', '2020-10-15', '06:03:13am'),
('5f88c9bea1954', 'Juan Ramón', 'jramon@cweb.com', 'tengo problemas para registrarme', 'Realizo el proceso, pero no puedo acceder tal vez estoy haciendo algo mal, saludos.', '2020-10-16', '12:14:22am');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `history`
--

CREATE TABLE `history` (
  `email` varchar(50) NOT NULL,
  `eid` text NOT NULL,
  `score` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `sahi` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `history`
--

INSERT INTO `history` (`email`, `eid`, `score`, `level`, `sahi`, `wrong`, `date`) VALUES
('hugo@correo.com', '62e809dd5c167', -15, 5, 0, 5, '2022-08-01 17:18:16');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `options`
--

CREATE TABLE `options` (
  `qid` varchar(50) NOT NULL,
  `option` varchar(5000) NOT NULL,
  `optionid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `options`
--

INSERT INTO `options` (`qid`, `option`, `optionid`) VALUES
('62e80a7376d43', '10', '62e80a73815fd'),
('62e80a7376d43', '11', '62e80a7381604'),
('62e80a7376d43', '12', '62e80a7381605'),
('62e80a7376d43', '13', '62e80a7381606'),
('62e80a73a40d8', '10', '62e80a73aa11e'),
('62e80a73a40d8', '11', '62e80a73aa127'),
('62e80a73a40d8', '12', '62e80a73aa129'),
('62e80a73a40d8', '13', '62e80a73aa12a'),
('62e80a73c27cb', '6', '62e80a73d2b73'),
('62e80a73c27cb', '5', '62e80a73d2b79'),
('62e80a73c27cb', '4', '62e80a73d2b7a'),
('62e80a73c27cb', '8', '62e80a73d2b7b'),
('62e80a73eb303', '10', '62e80a73f13bc'),
('62e80a73eb303', '11', '62e80a73f13c1'),
('62e80a73eb303', '12', '62e80a73f13c2'),
('62e80a73eb303', '13', '62e80a73f13c3'),
('62e80a7415889', '10', '62e80a741b904'),
('62e80a7415889', '9', '62e80a741b90a'),
('62e80a7415889', '8', '62e80a741b90b'),
('62e80a7415889', '7', '62e80a741b90c');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `questions`
--

CREATE TABLE `questions` (
  `eid` text NOT NULL,
  `qid` text NOT NULL,
  `qns` text NOT NULL,
  `choice` int(10) NOT NULL,
  `sn` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `questions`
--

INSERT INTO `questions` (`eid`, `qid`, `qns`, `choice`, `sn`) VALUES
('62e809dd5c167', '62e80a7376d43', 'En el aparcamiento de un hotel habÃ­a 8 coches. Han entrado 5 coches mÃ¡s.  Â¿CuÃ¡ntos coches hay ahora en el aparcamiento?', 4, 1),
('62e809dd5c167', '62e80a73a40d8', 'Â¡Las paredes de la clase de Catalina estÃ¡n llenas de dibujos! Hoy he ido a verla y en la pared de la derecha he contado 5 dibujos y en la de la izquierda otros 7. Â¿CuÃ¡ntos dibujos en total hay en las paredes de la clase de Catalina?', 4, 2),
('62e809dd5c167', '62e80a73c27cb', 'MarÃ­a tiene 4 caramelos que le regalÃ³ su abuela cuando estuvo de visita. Ricardo tiene 2 mÃ¡s que ella, porque se comprÃ³ unos cuantos y luego se dio cuenta de que tenÃ­a mÃ¡s en casa. Â¿CuÃ¡ntos caramelos tiene Ricardo?', 4, 3),
('62e809dd5c167', '62e80a73eb303', 'Ayer fuimos muchos niÃ±os a desayunar al comedor del colegio y nos bebimos todo el zumo. Si se hubiesen servido 5 litros de zumo menos se habrÃ­an servido tantos litros como hoy. Hoy se han servido 6 litros de zumo.\r\nÂ¿CuÃ¡ntos litros de zumo se sirvieron ayer?', 4, 4),
('62e809dd5c167', '62e80a7415889', 'En el recreo he estado jugando con 4 amigos a las canicas. Como he tenido poco cuidado, se me han perdido 3 canicas y ahora me quedan 6.\r\nÂ¿CuÃ¡ntas canicas tenÃ­a antes de empezar a jugar?', 4, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `quiz`
--

CREATE TABLE `quiz` (
  `eid` text NOT NULL,
  `title` varchar(100) NOT NULL,
  `sahi` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `time` bigint(20) NOT NULL,
  `intro` text NOT NULL,
  `tag` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `quiz`
--

INSERT INTO `quiz` (`eid`, `title`, `sahi`, `wrong`, `total`, `time`, `intro`, `tag`, `date`) VALUES
('62e809dd5c167', 'SÃºmas', 2, 3, 5, 4, 'Una prueba de aritmÃ©tica iniciando por sumas', 'Sumas', '2022-08-01 17:14:05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rank`
--

CREATE TABLE `rank` (
  `email` varchar(50) NOT NULL,
  `score` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `rank`
--

INSERT INTO `rank` (`email`, `score`, `time`) VALUES
('hugo@correo.com', -15, '2022-08-01 17:18:16');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `name` varchar(50) NOT NULL,
  `gender` varchar(5) NOT NULL,
  `college` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mob` bigint(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`name`, `gender`, `college`, `email`, `mob`, `password`) VALUES
('Hugo Henao', 'M', 'Centro de Comercio y Turismo', 'hugo@correo.com', 3218450520, '4b67deeb9aba04a5b54632ad19934f26'),
('Edwin Wilder', 'M', 'Centro de Comercio y Turismo', 'wilder@correo.com', 3105160807, '4b67deeb9aba04a5b54632ad19934f26');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
