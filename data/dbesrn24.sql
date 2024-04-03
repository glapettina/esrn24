-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-04-2024 a las 16:31:44
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `dbesrn24`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciudades`
--

CREATE TABLE `ciudades` (
  `id_ciudad` int(11) NOT NULL,
  `nombre` text COLLATE utf8_spanish_ci NOT NULL,
  `kilometros` int(11) NOT NULL,
  `estado` int(11) NOT NULL DEFAULT 1,
  `id_usuario` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `ciudades`
--

INSERT INTO `ciudades` (`id_ciudad`, `nombre`, `kilometros`, `estado`, `id_usuario`, `fecha`) VALUES
(1, 'Darwin', 10, 1, 0, '2022-03-31 14:49:00'),
(2, 'Luis Beltrán', 12, 1, 0, '2022-03-31 14:52:50'),
(3, 'Lamarque', 20, 1, 0, '2022-04-04 18:22:16'),
(4, 'Pomona', 35, 1, 0, '2022-04-11 17:01:43'),
(5, 'Chelforó', 50, 1, 0, '2022-04-11 17:19:36'),
(6, 'Coronel Belisle', 30, 1, 0, '2022-04-11 17:22:19'),
(7, 'Choele Choel', 0, 1, 0, '2022-05-09 21:50:47');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuarto`
--

CREATE TABLE `cuarto` (
  `id` int(11) NOT NULL,
  `documento` text NOT NULL,
  `nombre` text NOT NULL,
  `id_curso` int(11) NOT NULL,
  `modalidad` text NOT NULL,
  `saberes_cientifica` text NOT NULL,
  `saberes_sociales` text NOT NULL,
  `saberes_ingles` text NOT NULL,
  `saberes_matematica` text NOT NULL,
  `saberes_fisica` text NOT NULL,
  `saberes_artistica` text NOT NULL,
  `saberes_lengua` text NOT NULL,
  `saberes_tierra4` text NOT NULL,
  `saberes_fisica4` text NOT NULL,
  `saberes_pedagogia` text NOT NULL,
  `saberes_psicologia` text NOT NULL,
  `saberes_seminario4` text NOT NULL,
  `aprecia_cientifica` text NOT NULL,
  `aprecia_sociales` text NOT NULL,
  `aprecia_ingles` text NOT NULL,
  `aprecia_matematica` text NOT NULL,
  `aprecia_fisica` text NOT NULL,
  `aprecia_artistica` text NOT NULL,
  `aprecia_lengua` text NOT NULL,
  `aprecia_tierra4` text NOT NULL,
  `aprecia_fisica4` text NOT NULL,
  `aprecia_pedagogia` text NOT NULL,
  `aprecia_psicologia` text NOT NULL,
  `aprecia_seminario4` text NOT NULL,
  `asistencia_cientifica` text NOT NULL,
  `asistencia_sociales` text NOT NULL,
  `asistencia_ingles` text NOT NULL,
  `asistencia_matematica` text NOT NULL,
  `asistencia_fisica` text NOT NULL,
  `asistencia_artistica` text NOT NULL,
  `asistencia_lengua` text NOT NULL,
  `asistencia_tierra4` text NOT NULL,
  `asistencia_fisica4` text NOT NULL,
  `asistencia_pedagogia` text NOT NULL,
  `asistencia_psicologia` text NOT NULL,
  `asistencia_seminario4` text NOT NULL,
  `observa_cientifica` text NOT NULL,
  `observa_sociales` text NOT NULL,
  `observa_ingles` text NOT NULL,
  `observa_matematica` text NOT NULL,
  `observa_fisica` text NOT NULL,
  `observa_artistica` text NOT NULL,
  `observa_lengua` text NOT NULL,
  `observa_tierra4` text NOT NULL,
  `observa_fisica4` text NOT NULL,
  `observa_pedagogia` text NOT NULL,
  `observa_psicologia` text NOT NULL,
  `observa_seminario4` text NOT NULL,
  `estado` int(11) NOT NULL DEFAULT 1,
  `periodo` text NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cuarto`
--

INSERT INTO `cuarto` (`id`, `documento`, `nombre`, `id_curso`, `modalidad`, `saberes_cientifica`, `saberes_sociales`, `saberes_ingles`, `saberes_matematica`, `saberes_fisica`, `saberes_artistica`, `saberes_lengua`, `saberes_tierra4`, `saberes_fisica4`, `saberes_pedagogia`, `saberes_psicologia`, `saberes_seminario4`, `aprecia_cientifica`, `aprecia_sociales`, `aprecia_ingles`, `aprecia_matematica`, `aprecia_fisica`, `aprecia_artistica`, `aprecia_lengua`, `aprecia_tierra4`, `aprecia_fisica4`, `aprecia_pedagogia`, `aprecia_psicologia`, `aprecia_seminario4`, `asistencia_cientifica`, `asistencia_sociales`, `asistencia_ingles`, `asistencia_matematica`, `asistencia_fisica`, `asistencia_artistica`, `asistencia_lengua`, `asistencia_tierra4`, `asistencia_fisica4`, `asistencia_pedagogia`, `asistencia_psicologia`, `asistencia_seminario4`, `observa_cientifica`, `observa_sociales`, `observa_ingles`, `observa_matematica`, `observa_fisica`, `observa_artistica`, `observa_lengua`, `observa_tierra4`, `observa_fisica4`, `observa_pedagogia`, `observa_psicologia`, `observa_seminario4`, `estado`, `periodo`, `id_usuario`, `fecha`) VALUES
(1, '47472487', 'ALCAPAN Marcela Veronica', 9, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Ciencias de la Tierra I - Cuarto Año', 'Sabares Física Ambiental - Cuarto Año                  ', 'Saberes Pedagogía - Cuarto Año                  ', 'Psicología - Cuarto Año                  ', 'Seminario - Cuarto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-01 16:12:08'),
(2, '48088443', 'AVALOS Ihara Elizabeth', 9, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Ciencias de la Tierra I - Cuarto Año', 'Sabares Física Ambiental - Cuarto Año                  ', 'Saberes Pedagogía - Cuarto Año                  ', 'Psicología - Cuarto Año                  ', 'Seminario - Cuarto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-01 16:12:08'),
(3, '48946842', 'BEROISA Camila Ailen', 9, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Ciencias de la Tierra I - Cuarto Año', 'Sabares Física Ambiental - Cuarto Año                  ', 'Saberes Pedagogía - Cuarto Año                  ', 'Psicología - Cuarto Año                  ', 'Seminario - Cuarto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-01 16:12:08'),
(4, '48732530', 'BURGUERA Juan Emanuel', 9, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Ciencias de la Tierra I - Cuarto Año', 'Sabares Física Ambiental - Cuarto Año                  ', 'Saberes Pedagogía - Cuarto Año                  ', 'Psicología - Cuarto Año                  ', 'Seminario - Cuarto Año                  ', '', '', '', '', '', '', '', '', 'En Proceso de Apropiación de Saberes', '', '', '', '', '', '', '', '', '', '', '', '50', '', '', '', '', '', '', '', '', '', '', '', 'Maso', '', '', '', 1, '01/2024', 8, '2024-04-01 16:12:08'),
(5, '48660011', 'CABEZAS CAISINA María Belen', 9, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Ciencias de la Tierra I - Cuarto Año', 'Sabares Física Ambiental - Cuarto Año                  ', 'Saberes Pedagogía - Cuarto Año                  ', 'Psicología - Cuarto Año                  ', 'Seminario - Cuarto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-01 16:12:08'),
(6, '47472182', 'CARRASCO Tomás José  Adán', 9, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Ciencias de la Tierra I - Cuarto Año', 'Sabares Física Ambiental - Cuarto Año                  ', 'Saberes Pedagogía - Cuarto Año                  ', 'Psicología - Cuarto Año                  ', 'Seminario - Cuarto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-01 16:12:08'),
(7, '48392149', 'CASTILLO Agustina Marisol', 9, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Ciencias de la Tierra I - Cuarto Año', 'Sabares Física Ambiental - Cuarto Año                  ', 'Saberes Pedagogía - Cuarto Año                  ', 'Psicología - Cuarto Año                  ', 'Seminario - Cuarto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-01 16:12:08'),
(8, '48531309', 'CASTILLO Morena Eluney', 9, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Ciencias de la Tierra I - Cuarto Año', 'Sabares Física Ambiental - Cuarto Año                  ', 'Saberes Pedagogía - Cuarto Año                  ', 'Psicología - Cuarto Año                  ', 'Seminario - Cuarto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-01 16:12:08'),
(9, '48946816', 'DONOSA Tatiana Ailen', 9, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Ciencias de la Tierra I - Cuarto Año', 'Sabares Física Ambiental - Cuarto Año                  ', 'Saberes Pedagogía - Cuarto Año                  ', 'Psicología - Cuarto Año                  ', 'Seminario - Cuarto Año                  ', '', '', '', '', '', '', '', 'No se Apropió de los Saberes', '', '', '', '', '', '', '', '', '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', 'Nada de nada', '', '', '', '', 1, '01/2024', 8, '2024-04-01 16:12:08'),
(10, '48547979', 'DORADO Elias Francisco Ezequiel', 9, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Ciencias de la Tierra I - Cuarto Año', 'Sabares Física Ambiental - Cuarto Año                  ', 'Saberes Pedagogía - Cuarto Año                  ', 'Psicología - Cuarto Año                  ', 'Seminario - Cuarto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-01 16:12:08'),
(11, '48908654', 'FARIAS Leslie Gianella', 9, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Ciencias de la Tierra I - Cuarto Año', 'Sabares Física Ambiental - Cuarto Año                  ', 'Saberes Pedagogía - Cuarto Año                  ', 'Psicología - Cuarto Año                  ', 'Seminario - Cuarto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-01 16:12:08'),
(12, '48946813', 'FERNANDEZ Zaira Valentina', 9, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Ciencias de la Tierra I - Cuarto Año', 'Sabares Física Ambiental - Cuarto Año                  ', 'Saberes Pedagogía - Cuarto Año                  ', 'Psicología - Cuarto Año                  ', 'Seminario - Cuarto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-01 16:12:08'),
(13, '48390923', 'GONZALEZ Iriana Macarena', 9, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Ciencias de la Tierra I - Cuarto Año', 'Sabares Física Ambiental - Cuarto Año                  ', 'Saberes Pedagogía - Cuarto Año                  ', 'Psicología - Cuarto Año                  ', 'Seminario - Cuarto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-01 16:12:08'),
(14, '94666328', 'HOYOS Maria Liz', 9, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Ciencias de la Tierra I - Cuarto Año', 'Sabares Física Ambiental - Cuarto Año                  ', 'Saberes Pedagogía - Cuarto Año                  ', 'Psicología - Cuarto Año                  ', 'Seminario - Cuarto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-01 16:12:08'),
(15, '47671657', 'JARA Julieta Nahir', 9, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Ciencias de la Tierra I - Cuarto Año', 'Sabares Física Ambiental - Cuarto Año                  ', 'Saberes Pedagogía - Cuarto Año                  ', 'Psicología - Cuarto Año                  ', 'Seminario - Cuarto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-01 16:12:08'),
(16, '48251344', 'KOVALOV Nahiara Ayelén', 9, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Ciencias de la Tierra I - Cuarto Año', 'Sabares Física Ambiental - Cuarto Año                  ', 'Saberes Pedagogía - Cuarto Año                  ', 'Psicología - Cuarto Año                  ', 'Seminario - Cuarto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-01 16:12:08'),
(17, '48660019', 'LAGOS RODRIGUEZ Aldana Bianca', 9, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Ciencias de la Tierra I - Cuarto Año', 'Sabares Física Ambiental - Cuarto Año                  ', 'Saberes Pedagogía - Cuarto Año                  ', 'Psicología - Cuarto Año                  ', 'Seminario - Cuarto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-01 16:12:08'),
(18, '48660034', 'MARDONES RODRIGUEZ Camila Julieta', 9, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Ciencias de la Tierra I - Cuarto Año', 'Sabares Física Ambiental - Cuarto Año                  ', 'Saberes Pedagogía - Cuarto Año                  ', 'Psicología - Cuarto Año                  ', 'Seminario - Cuarto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-01 16:12:08'),
(19, '48531345', 'MASINA Facundo Nahuel', 9, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Ciencias de la Tierra I - Cuarto Año', 'Sabares Física Ambiental - Cuarto Año                  ', 'Saberes Pedagogía - Cuarto Año                  ', 'Psicología - Cuarto Año                  ', 'Seminario - Cuarto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-01 16:12:08'),
(20, '48732537', 'OJEDA Tatiana Ailin', 9, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Ciencias de la Tierra I - Cuarto Año', 'Sabares Física Ambiental - Cuarto Año                  ', 'Saberes Pedagogía - Cuarto Año                  ', 'Psicología - Cuarto Año                  ', 'Seminario - Cuarto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-01 16:12:08'),
(21, '48732551', 'RAMOS Aixa', 9, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Ciencias de la Tierra I - Cuarto Año', 'Sabares Física Ambiental - Cuarto Año                  ', 'Saberes Pedagogía - Cuarto Año                  ', 'Psicología - Cuarto Año                  ', 'Seminario - Cuarto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-01 16:12:08'),
(22, '48908905', 'ROA HERNANDEZ Ariana Antonela', 9, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Ciencias de la Tierra I - Cuarto Año', 'Sabares Física Ambiental - Cuarto Año                  ', 'Saberes Pedagogía - Cuarto Año                  ', 'Psicología - Cuarto Año                  ', 'Seminario - Cuarto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-01 16:12:08'),
(23, '48251319', 'SOLIS SAN MARTIN Lautaro Daniel', 9, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Ciencias de la Tierra I - Cuarto Año', 'Sabares Física Ambiental - Cuarto Año                  ', 'Saberes Pedagogía - Cuarto Año                  ', 'Psicología - Cuarto Año                  ', 'Seminario - Cuarto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-01 16:12:08'),
(24, '48866582', 'TORMO TROFIMEZUK Alex Mauricio', 9, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Ciencias de la Tierra I - Cuarto Año', 'Sabares Física Ambiental - Cuarto Año                  ', 'Saberes Pedagogía - Cuarto Año                  ', 'Psicología - Cuarto Año                  ', 'Seminario - Cuarto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-01 16:12:08'),
(25, '47375855', 'VASQUEZ Cristian Ricardo', 9, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Ciencias de la Tierra I - Cuarto Año', 'Sabares Física Ambiental - Cuarto Año                  ', 'Saberes Pedagogía - Cuarto Año                  ', 'Psicología - Cuarto Año                  ', 'Seminario - Cuarto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-01 16:12:08'),
(26, '47913792', 'AVILES Lautaro Emanuel', 10, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Ciencias de la Tierra I - Cuarto Año', 'Sabares Física Ambiental - Cuarto Año                  ', 'Saberes Pedagogía - Cuarto Año                  ', 'Psicología - Cuarto Año                  ', 'Seminario - Cuarto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-01 16:12:08'),
(27, '48390933', 'BASTIAS Iara Abigail', 10, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Ciencias de la Tierra I - Cuarto Año', 'Sabares Física Ambiental - Cuarto Año                  ', 'Saberes Pedagogía - Cuarto Año                  ', 'Psicología - Cuarto Año                  ', 'Seminario - Cuarto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-01 16:12:08'),
(28, '48660016', 'BELTRAN Luciana Jaqueline', 10, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Ciencias de la Tierra I - Cuarto Año', 'Sabares Física Ambiental - Cuarto Año                  ', 'Saberes Pedagogía - Cuarto Año                  ', 'Psicología - Cuarto Año                  ', 'Seminario - Cuarto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-01 16:12:08'),
(29, '48660018', 'BENEGAS Antonela Ailén', 10, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Ciencias de la Tierra I - Cuarto Año', 'Sabares Física Ambiental - Cuarto Año                  ', 'Saberes Pedagogía - Cuarto Año                  ', 'Psicología - Cuarto Año                  ', 'Seminario - Cuarto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-01 16:12:08'),
(30, '48123478', 'CACEREZ Thiago Cristian', 10, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Ciencias de la Tierra I - Cuarto Año', 'Sabares Física Ambiental - Cuarto Año                  ', 'Saberes Pedagogía - Cuarto Año                  ', 'Psicología - Cuarto Año                  ', 'Seminario - Cuarto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-01 16:12:08'),
(31, '47670782', 'CATRIAN Bautista Uriel', 10, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Ciencias de la Tierra I - Cuarto Año', 'Sabares Física Ambiental - Cuarto Año                  ', 'Saberes Pedagogía - Cuarto Año                  ', 'Psicología - Cuarto Año                  ', 'Seminario - Cuarto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-01 16:12:08'),
(32, '48319217', 'COLIPE Tisiana Daiana', 10, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Ciencias de la Tierra I - Cuarto Año', 'Sabares Física Ambiental - Cuarto Año                  ', 'Saberes Pedagogía - Cuarto Año                  ', 'Psicología - Cuarto Año                  ', 'Seminario - Cuarto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-01 16:12:08'),
(33, '48947356', 'FLORES Thiara Celena', 10, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Ciencias de la Tierra I - Cuarto Año', 'Sabares Física Ambiental - Cuarto Año                  ', 'Saberes Pedagogía - Cuarto Año                  ', 'Psicología - Cuarto Año                  ', 'Seminario - Cuarto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-01 16:12:08'),
(34, '47913760', 'FUENTEALBA Nicolas Emilio', 10, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Ciencias de la Tierra I - Cuarto Año', 'Sabares Física Ambiental - Cuarto Año                  ', 'Saberes Pedagogía - Cuarto Año                  ', 'Psicología - Cuarto Año                  ', 'Seminario - Cuarto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-01 16:12:08'),
(35, '47661276', 'LAURIN Yuliana Abigail', 10, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Ciencias de la Tierra I - Cuarto Año', 'Sabares Física Ambiental - Cuarto Año                  ', 'Saberes Pedagogía - Cuarto Año                  ', 'Psicología - Cuarto Año                  ', 'Seminario - Cuarto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-01 16:12:08'),
(36, '48684504', 'LOPEZ CATÁN Tania', 10, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Ciencias de la Tierra I - Cuarto Año', 'Sabares Física Ambiental - Cuarto Año                  ', 'Saberes Pedagogía - Cuarto Año                  ', 'Psicología - Cuarto Año                  ', 'Seminario - Cuarto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-01 16:12:08'),
(37, '47670777', 'MARTINEZ Jeremias Emiliano', 10, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Ciencias de la Tierra I - Cuarto Año', 'Sabares Física Ambiental - Cuarto Año                  ', 'Saberes Pedagogía - Cuarto Año                  ', 'Psicología - Cuarto Año                  ', 'Seminario - Cuarto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-01 16:12:08'),
(38, '47913706', 'MUÑOZ Tiago Lautaro', 10, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Ciencias de la Tierra I - Cuarto Año', 'Sabares Física Ambiental - Cuarto Año                  ', 'Saberes Pedagogía - Cuarto Año                  ', 'Psicología - Cuarto Año                  ', 'Seminario - Cuarto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-01 16:12:08'),
(39, '48732054', 'NARAMBUENA Rocio Candela', 10, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Ciencias de la Tierra I - Cuarto Año', 'Sabares Física Ambiental - Cuarto Año                  ', 'Saberes Pedagogía - Cuarto Año                  ', 'Psicología - Cuarto Año                  ', 'Seminario - Cuarto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-01 16:12:08'),
(40, '48866586', 'ORDOÑEZ DIAZ María Victoria', 10, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Ciencias de la Tierra I - Cuarto Año', 'Sabares Física Ambiental - Cuarto Año                  ', 'Saberes Pedagogía - Cuarto Año                  ', 'Psicología - Cuarto Año                  ', 'Seminario - Cuarto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-01 16:12:08'),
(41, '47670738', 'PANELO Axel Elian', 10, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Ciencias de la Tierra I - Cuarto Año', 'Sabares Física Ambiental - Cuarto Año                  ', 'Saberes Pedagogía - Cuarto Año                  ', 'Psicología - Cuarto Año                  ', 'Seminario - Cuarto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-01 16:12:08'),
(42, '47913757', 'ROCHA Santiago Natanael', 10, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Ciencias de la Tierra I - Cuarto Año', 'Sabares Física Ambiental - Cuarto Año                  ', 'Saberes Pedagogía - Cuarto Año                  ', 'Psicología - Cuarto Año                  ', 'Seminario - Cuarto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-01 16:12:08'),
(43, '48084226', 'RODAS Diego Alejandro', 10, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Ciencias de la Tierra I - Cuarto Año', 'Sabares Física Ambiental - Cuarto Año                  ', 'Saberes Pedagogía - Cuarto Año                  ', 'Psicología - Cuarto Año                  ', 'Seminario - Cuarto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-01 16:12:08'),
(44, '48251335', 'RUBIO Santiago Gabriel', 10, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Ciencias de la Tierra I - Cuarto Año', 'Sabares Física Ambiental - Cuarto Año                  ', 'Saberes Pedagogía - Cuarto Año                  ', 'Psicología - Cuarto Año                  ', 'Seminario - Cuarto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-01 16:12:08'),
(45, '48908763', 'SANDOVAL Ezequiel Fernando', 10, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Ciencias de la Tierra I - Cuarto Año', 'Sabares Física Ambiental - Cuarto Año                  ', 'Saberes Pedagogía - Cuarto Año                  ', 'Psicología - Cuarto Año                  ', 'Seminario - Cuarto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-01 16:12:08'),
(46, '48390903', 'SEGUEL Karen Ayelen', 10, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Ciencias de la Tierra I - Cuarto Año', 'Sabares Física Ambiental - Cuarto Año                  ', 'Saberes Pedagogía - Cuarto Año                  ', 'Psicología - Cuarto Año                  ', 'Seminario - Cuarto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-01 16:12:08'),
(47, '46983413', 'TRALCAL Cecilia Karina', 10, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Ciencias de la Tierra I - Cuarto Año', 'Sabares Física Ambiental - Cuarto Año                  ', 'Saberes Pedagogía - Cuarto Año                  ', 'Psicología - Cuarto Año                  ', 'Seminario - Cuarto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-01 16:12:08'),
(48, '45376314', 'TRONCOSO Jose Ismael', 10, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Ciencias de la Tierra I - Cuarto Año', 'Sabares Física Ambiental - Cuarto Año                  ', 'Saberes Pedagogía - Cuarto Año                  ', 'Psicología - Cuarto Año                  ', 'Seminario - Cuarto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-01 16:12:08'),
(49, '48531319', 'VALENZUELA Valentina Lujan', 10, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Ciencias de la Tierra I - Cuarto Año', 'Sabares Física Ambiental - Cuarto Año                  ', 'Saberes Pedagogía - Cuarto Año                  ', 'Psicología - Cuarto Año                  ', 'Seminario - Cuarto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-01 16:12:08'),
(50, '48660009', 'VIDAL Julieta Agustina', 10, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Ciencias de la Tierra I - Cuarto Año', 'Sabares Física Ambiental - Cuarto Año                  ', 'Saberes Pedagogía - Cuarto Año                  ', 'Psicología - Cuarto Año                  ', 'Seminario - Cuarto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-01 16:12:08'),
(51, '48251350', 'VILLAGRA Morena Avril', 10, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Ciencias de la Tierra I - Cuarto Año', 'Sabares Física Ambiental - Cuarto Año                  ', 'Saberes Pedagogía - Cuarto Año                  ', 'Psicología - Cuarto Año                  ', 'Seminario - Cuarto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-01 16:12:08'),
(52, '48732523', 'AGUIAR María Valentina', 21, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Ciencias de la Tierra I - Cuarto Año', 'Sabares Física Ambiental - Cuarto Año                  ', 'Saberes Pedagogía - Cuarto Año                  ', 'Psicología - Cuarto Año                  ', 'Seminario - Cuarto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-01 16:12:08'),
(53, '48390939', 'AGUILAR Luciana Ahinara', 21, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Ciencias de la Tierra I - Cuarto Año', 'Sabares Física Ambiental - Cuarto Año                  ', 'Saberes Pedagogía - Cuarto Año                  ', 'Psicología - Cuarto Año                  ', 'Seminario - Cuarto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-01 16:12:08'),
(54, '48392204', 'ALARCON CATRILAO Helena', 21, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Ciencias de la Tierra I - Cuarto Año', 'Sabares Física Ambiental - Cuarto Año                  ', 'Saberes Pedagogía - Cuarto Año                  ', 'Psicología - Cuarto Año                  ', 'Seminario - Cuarto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-01 16:12:08'),
(55, '48732058', 'CIDE Milagros Anahí', 21, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Ciencias de la Tierra I - Cuarto Año', 'Sabares Física Ambiental - Cuarto Año                  ', 'Saberes Pedagogía - Cuarto Año                  ', 'Psicología - Cuarto Año                  ', 'Seminario - Cuarto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-01 16:12:08'),
(56, '48531321', 'COCHE Tatiana Antonella', 21, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Ciencias de la Tierra I - Cuarto Año', 'Sabares Física Ambiental - Cuarto Año                  ', 'Saberes Pedagogía - Cuarto Año                  ', 'Psicología - Cuarto Año                  ', 'Seminario - Cuarto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-01 16:12:08'),
(57, '48251309', 'CRESPO Gonzalo Exekiel', 21, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Ciencias de la Tierra I - Cuarto Año', 'Sabares Física Ambiental - Cuarto Año                  ', 'Saberes Pedagogía - Cuarto Año                  ', 'Psicología - Cuarto Año                  ', 'Seminario - Cuarto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-01 16:12:08'),
(58, '48531308', 'FASANO Fiorella Agostina', 21, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Ciencias de la Tierra I - Cuarto Año', 'Sabares Física Ambiental - Cuarto Año                  ', 'Saberes Pedagogía - Cuarto Año                  ', 'Psicología - Cuarto Año                  ', 'Seminario - Cuarto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-01 16:12:08'),
(59, '48392152', 'GAST CANALE Valentina Mariet', 21, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Ciencias de la Tierra I - Cuarto Año', 'Sabares Física Ambiental - Cuarto Año                  ', 'Saberes Pedagogía - Cuarto Año                  ', 'Psicología - Cuarto Año                  ', 'Seminario - Cuarto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-01 16:12:08'),
(60, '47670776', 'GUTIERREZ Tiago Adrian Valentin', 21, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Ciencias de la Tierra I - Cuarto Año', 'Sabares Física Ambiental - Cuarto Año                  ', 'Saberes Pedagogía - Cuarto Año                  ', 'Psicología - Cuarto Año                  ', 'Seminario - Cuarto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-01 16:12:08'),
(61, '48660041', 'LAGOS Samira Ayelen', 21, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Ciencias de la Tierra I - Cuarto Año', 'Sabares Física Ambiental - Cuarto Año                  ', 'Saberes Pedagogía - Cuarto Año                  ', 'Psicología - Cuarto Año                  ', 'Seminario - Cuarto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-01 16:12:08'),
(62, '48123497', 'LEVONIUK Malena Agustina', 21, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Ciencias de la Tierra I - Cuarto Año', 'Sabares Física Ambiental - Cuarto Año                  ', 'Saberes Pedagogía - Cuarto Año                  ', 'Psicología - Cuarto Año                  ', 'Seminario - Cuarto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-01 16:12:08'),
(63, '48660024', 'LLANQUIMAN Fabiana Nicol', 21, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Ciencias de la Tierra I - Cuarto Año', 'Sabares Física Ambiental - Cuarto Año                  ', 'Saberes Pedagogía - Cuarto Año                  ', 'Psicología - Cuarto Año                  ', 'Seminario - Cuarto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-01 16:12:08'),
(64, '48866580', 'LUIS Federico Gabriel', 21, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Ciencias de la Tierra I - Cuarto Año', 'Sabares Física Ambiental - Cuarto Año                  ', 'Saberes Pedagogía - Cuarto Año                  ', 'Psicología - Cuarto Año                  ', 'Seminario - Cuarto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-01 16:12:08'),
(65, '48866577', 'MARABOLIS Morena Luján', 21, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Ciencias de la Tierra I - Cuarto Año', 'Sabares Física Ambiental - Cuarto Año                  ', 'Saberes Pedagogía - Cuarto Año                  ', 'Psicología - Cuarto Año                  ', 'Seminario - Cuarto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-01 16:12:08'),
(66, '48732087', 'MARTINEZ Rolvira Luján', 21, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Ciencias de la Tierra I - Cuarto Año', 'Sabares Física Ambiental - Cuarto Año                  ', 'Saberes Pedagogía - Cuarto Año                  ', 'Psicología - Cuarto Año                  ', 'Seminario - Cuarto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-01 16:12:08'),
(67, '48732548', 'MATUS Jael Abigail', 21, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Ciencias de la Tierra I - Cuarto Año', 'Sabares Física Ambiental - Cuarto Año                  ', 'Saberes Pedagogía - Cuarto Año                  ', 'Psicología - Cuarto Año                  ', 'Seminario - Cuarto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-01 16:12:08'),
(68, '48947380', 'MOLINA SEIJAS Daiana Ludmila', 21, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Ciencias de la Tierra I - Cuarto Año', 'Sabares Física Ambiental - Cuarto Año                  ', 'Saberes Pedagogía - Cuarto Año                  ', 'Psicología - Cuarto Año                  ', 'Seminario - Cuarto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-01 16:12:08'),
(69, '53769233', 'MORAGA Lucas Joaquin', 21, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Ciencias de la Tierra I - Cuarto Año', 'Sabares Física Ambiental - Cuarto Año                  ', 'Saberes Pedagogía - Cuarto Año                  ', 'Psicología - Cuarto Año                  ', 'Seminario - Cuarto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-01 16:12:08'),
(70, '48531314', 'MORALES QUEZADA Juan Exequiel', 21, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Ciencias de la Tierra I - Cuarto Año', 'Sabares Física Ambiental - Cuarto Año                  ', 'Saberes Pedagogía - Cuarto Año                  ', 'Psicología - Cuarto Año                  ', 'Seminario - Cuarto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-01 16:12:08'),
(71, '48185215', 'MUÑOZ Jeremias Antonio', 21, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Ciencias de la Tierra I - Cuarto Año', 'Sabares Física Ambiental - Cuarto Año                  ', 'Saberes Pedagogía - Cuarto Año                  ', 'Psicología - Cuarto Año                  ', 'Seminario - Cuarto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-01 16:12:08'),
(72, '48392158', 'MUÑOZ Sarah Noemí', 21, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Ciencias de la Tierra I - Cuarto Año', 'Sabares Física Ambiental - Cuarto Año                  ', 'Saberes Pedagogía - Cuarto Año                  ', 'Psicología - Cuarto Año                  ', 'Seminario - Cuarto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-01 16:12:08'),
(73, '48946803', 'PARRA Narella Fernanda', 21, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Ciencias de la Tierra I - Cuarto Año', 'Sabares Física Ambiental - Cuarto Año                  ', 'Saberes Pedagogía - Cuarto Año                  ', 'Psicología - Cuarto Año                  ', 'Seminario - Cuarto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-01 16:12:08'),
(74, '48392148', 'RODRIGUEZ CABALLERO Eimi Anahi', 21, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Ciencias de la Tierra I - Cuarto Año', 'Sabares Física Ambiental - Cuarto Año                  ', 'Saberes Pedagogía - Cuarto Año                  ', 'Psicología - Cuarto Año                  ', 'Seminario - Cuarto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-01 16:12:08'),
(75, '48390932', 'RODRIGUEZ MARIQUEO Shaira Sayhara Daiara', 21, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Ciencias de la Tierra I - Cuarto Año', 'Sabares Física Ambiental - Cuarto Año                  ', 'Saberes Pedagogía - Cuarto Año                  ', 'Psicología - Cuarto Año                  ', 'Seminario - Cuarto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-01 16:12:08'),
(76, '48251339', 'SEIJAS Iara Micaela', 21, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Ciencias de la Tierra I - Cuarto Año', 'Sabares Física Ambiental - Cuarto Año                  ', 'Saberes Pedagogía - Cuarto Año                  ', 'Psicología - Cuarto Año                  ', 'Seminario - Cuarto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-01 16:12:08'),
(77, '48251340', 'SEIJAS Pamela Marinel', 21, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Ciencias de la Tierra I - Cuarto Año', 'Sabares Física Ambiental - Cuarto Año                  ', 'Saberes Pedagogía - Cuarto Año                  ', 'Psicología - Cuarto Año                  ', 'Seminario - Cuarto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-01 16:12:08'),
(78, '48531320', 'SOLIS Brandon Alejandro', 21, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Ciencias de la Tierra I - Cuarto Año', 'Sabares Física Ambiental - Cuarto Año                  ', 'Saberes Pedagogía - Cuarto Año                  ', 'Psicología - Cuarto Año                  ', 'Seminario - Cuarto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-01 16:12:08'),
(79, '48390593', 'SOTO REYES Ruth Abigail', 21, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Ciencias de la Tierra I - Cuarto Año', 'Sabares Física Ambiental - Cuarto Año                  ', 'Saberes Pedagogía - Cuarto Año                  ', 'Psicología - Cuarto Año                  ', 'Seminario - Cuarto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-01 16:12:08'),
(80, '48782486', 'AGUILAR Mia Loana', 14, 'Educación', '', '', '', '', '', '', '', 'Ciencias de la Tierra I - Cuarto Año', 'Sabares Física Ambiental - Cuarto Año                  ', 'Saberes Pedagogía - Cuarto Año                  ', 'Psicología - Cuarto Año                  ', 'Seminario - Cuarto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-01 16:12:08'),
(81, '47995563', 'AGUILERA Alan Enrique', 14, 'Educación', '', '', '', '', '', '', '', 'Ciencias de la Tierra I - Cuarto Año', 'Sabares Física Ambiental - Cuarto Año                  ', 'Saberes Pedagogía - Cuarto Año                  ', 'Psicología - Cuarto Año                  ', 'Seminario - Cuarto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-01 16:12:08'),
(82, '48660007', 'ALDANA SANTILLAN Jordana Valentina', 14, 'Educación', '', '', '', '', '', '', '', 'Ciencias de la Tierra I - Cuarto Año', 'Sabares Física Ambiental - Cuarto Año                  ', 'Saberes Pedagogía - Cuarto Año                  ', 'Psicología - Cuarto Año                  ', 'Seminario - Cuarto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-01 16:12:08'),
(83, '48185219', 'ANTORENA JARA Sayhara  Agustina', 14, 'Educación', '', '', '', '', '', '', '', 'Ciencias de la Tierra I - Cuarto Año', 'Sabares Física Ambiental - Cuarto Año                  ', 'Saberes Pedagogía - Cuarto Año                  ', 'Psicología - Cuarto Año                  ', 'Seminario - Cuarto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-01 16:12:08'),
(84, '48185226', 'ATECA SANCHEZ Yarela Alexandra', 14, 'Educación', '', '', '', '', '', '', '', 'Ciencias de la Tierra I - Cuarto Año', 'Sabares Física Ambiental - Cuarto Año                  ', 'Saberes Pedagogía - Cuarto Año                  ', 'Psicología - Cuarto Año                  ', 'Seminario - Cuarto Año                  ', '', '', '', '', '', '', '', '', '', 'Se Apropió de los Saberes', '', '', '', '', '', '', '', '', '', '', '', '100', '', '', '', '', '', '', '', '', '', '', '', 'Muy Bueno', '', '', 1, '01/2024', 8, '2024-04-01 16:12:08'),
(85, '50025129', 'BALBOA Santiago Gabriel', 14, 'Educación', '', '', '', '', '', '', '', 'Ciencias de la Tierra I - Cuarto Año', 'Sabares Física Ambiental - Cuarto Año                  ', 'Saberes Pedagogía - Cuarto Año                  ', 'Psicología - Cuarto Año                  ', 'Seminario - Cuarto Año                  ', '', '', '', '', '', '', '', '', '', '', 'No se Apropió de los Saberes', 'Se Apropió de los Saberes', '', '', '', '', '', '', '', '', '', '', '0', '100', '', '', '', '', '', '', '', '', '', '', 'Nada de nada', 'Good', 1, '01/2024', 8, '2024-04-01 16:14:56'),
(86, '47470762', 'CALDERON Tomás Emiliano', 14, 'Educación', '', '', '', '', '', '', '', 'Ciencias de la Tierra I - Cuarto Año', 'Sabares Física Ambiental - Cuarto Año                  ', 'Saberes Pedagogía - Cuarto Año                  ', 'Psicología - Cuarto Año                  ', 'Seminario - Cuarto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-01 16:12:08'),
(87, '48392124', 'CAYUQUEO Braian Agustín', 14, 'Educación', '', '', '', '', '', '', '', 'Ciencias de la Tierra I - Cuarto Año', 'Sabares Física Ambiental - Cuarto Año                  ', 'Saberes Pedagogía - Cuarto Año                  ', 'Psicología - Cuarto Año                  ', 'Seminario - Cuarto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-01 16:12:08'),
(88, '46403422', 'CONTRERAS Gianella Balbina', 14, 'Educación', '', '', '', '', '', '', '', 'Ciencias de la Tierra I - Cuarto Año', 'Sabares Física Ambiental - Cuarto Año                  ', 'Saberes Pedagogía - Cuarto Año                  ', 'Psicología - Cuarto Año                  ', 'Seminario - Cuarto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-01 16:12:08'),
(89, '48531323', 'CURIQUEO Kevin Nahuel', 14, 'Educación', '', '', '', '', '', '', '', 'Ciencias de la Tierra I - Cuarto Año', 'Sabares Física Ambiental - Cuarto Año                  ', 'Saberes Pedagogía - Cuarto Año                  ', 'Psicología - Cuarto Año                  ', 'Seminario - Cuarto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-01 16:12:08'),
(90, '48732092', 'LARA SEIJAS Sebastian Emanuel', 14, 'Educación', '', '', '', '', '', '', '', 'Ciencias de la Tierra I - Cuarto Año', 'Sabares Física Ambiental - Cuarto Año                  ', 'Saberes Pedagogía - Cuarto Año                  ', 'Psicología - Cuarto Año                  ', 'Seminario - Cuarto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-01 16:12:08'),
(91, '48390929', 'MARIGUAN Sofia Ayelen', 14, 'Educación', '', '', '', '', '', '', '', 'Ciencias de la Tierra I - Cuarto Año', 'Sabares Física Ambiental - Cuarto Año                  ', 'Saberes Pedagogía - Cuarto Año                  ', 'Psicología - Cuarto Año                  ', 'Seminario - Cuarto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-01 16:12:08'),
(92, '48123457', 'MARINAO Sol Milagros', 14, 'Educación', '', '', '', '', '', '', '', 'Ciencias de la Tierra I - Cuarto Año', 'Sabares Física Ambiental - Cuarto Año                  ', 'Saberes Pedagogía - Cuarto Año                  ', 'Psicología - Cuarto Año                  ', 'Seminario - Cuarto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-01 16:12:08'),
(93, '48185208', 'MOYANO Yasmín Candela', 14, 'Educación', '', '', '', '', '', '', '', 'Ciencias de la Tierra I - Cuarto Año', 'Sabares Física Ambiental - Cuarto Año                  ', 'Saberes Pedagogía - Cuarto Año                  ', 'Psicología - Cuarto Año                  ', 'Seminario - Cuarto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-01 16:12:08');
INSERT INTO `cuarto` (`id`, `documento`, `nombre`, `id_curso`, `modalidad`, `saberes_cientifica`, `saberes_sociales`, `saberes_ingles`, `saberes_matematica`, `saberes_fisica`, `saberes_artistica`, `saberes_lengua`, `saberes_tierra4`, `saberes_fisica4`, `saberes_pedagogia`, `saberes_psicologia`, `saberes_seminario4`, `aprecia_cientifica`, `aprecia_sociales`, `aprecia_ingles`, `aprecia_matematica`, `aprecia_fisica`, `aprecia_artistica`, `aprecia_lengua`, `aprecia_tierra4`, `aprecia_fisica4`, `aprecia_pedagogia`, `aprecia_psicologia`, `aprecia_seminario4`, `asistencia_cientifica`, `asistencia_sociales`, `asistencia_ingles`, `asistencia_matematica`, `asistencia_fisica`, `asistencia_artistica`, `asistencia_lengua`, `asistencia_tierra4`, `asistencia_fisica4`, `asistencia_pedagogia`, `asistencia_psicologia`, `asistencia_seminario4`, `observa_cientifica`, `observa_sociales`, `observa_ingles`, `observa_matematica`, `observa_fisica`, `observa_artistica`, `observa_lengua`, `observa_tierra4`, `observa_fisica4`, `observa_pedagogia`, `observa_psicologia`, `observa_seminario4`, `estado`, `periodo`, `id_usuario`, `fecha`) VALUES
(94, '47282990', 'NOVOA Franco Nicolás', 14, 'Educación', '', '', '', '', '', '', '', 'Ciencias de la Tierra I - Cuarto Año', 'Sabares Física Ambiental - Cuarto Año                  ', 'Saberes Pedagogía - Cuarto Año                  ', 'Psicología - Cuarto Año                  ', 'Seminario - Cuarto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-01 16:12:08'),
(95, '48185210', 'PIERMARTIRI Alan Ezequiel', 14, 'Educación', '', '', '', '', '', '', '', 'Ciencias de la Tierra I - Cuarto Año', 'Sabares Física Ambiental - Cuarto Año                  ', 'Saberes Pedagogía - Cuarto Año                  ', 'Psicología - Cuarto Año                  ', 'Seminario - Cuarto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-01 16:12:08'),
(96, '48419765', 'QUIROGA Brisa Rosa Victoria', 14, 'Educación', '', '', '', '', '', '', '', 'Ciencias de la Tierra I - Cuarto Año', 'Sabares Física Ambiental - Cuarto Año                  ', 'Saberes Pedagogía - Cuarto Año                  ', 'Psicología - Cuarto Año                  ', 'Seminario - Cuarto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-01 16:12:08'),
(97, '48185228', 'ROLDAN JIMENEZ Yuliana Marlene', 14, 'Educación', '', '', '', '', '', '', '', 'Ciencias de la Tierra I - Cuarto Año', 'Sabares Física Ambiental - Cuarto Año                  ', 'Saberes Pedagogía - Cuarto Año                  ', 'Psicología - Cuarto Año                  ', 'Seminario - Cuarto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-01 16:12:08'),
(98, '48488698', 'SAN MARTIN Sergio Ismael', 14, 'Educación', '', '', '', '', '', '', '', 'Ciencias de la Tierra I - Cuarto Año', 'Sabares Física Ambiental - Cuarto Año                  ', 'Saberes Pedagogía - Cuarto Año                  ', 'Psicología - Cuarto Año                  ', 'Seminario - Cuarto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-01 16:12:08'),
(99, '48123490', 'SANCHEZ Nicole Abigail', 14, 'Educación', '', '', '', '', '', '', '', 'Ciencias de la Tierra I - Cuarto Año', 'Sabares Física Ambiental - Cuarto Año                  ', 'Saberes Pedagogía - Cuarto Año                  ', 'Psicología - Cuarto Año                  ', 'Seminario - Cuarto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-01 16:12:08'),
(100, '48908779', 'SANHUEZA Melanie Juliet', 14, 'Educación', '', '', '', '', '', '', '', 'Ciencias de la Tierra I - Cuarto Año', 'Sabares Física Ambiental - Cuarto Año                  ', 'Saberes Pedagogía - Cuarto Año                  ', 'Psicología - Cuarto Año                  ', 'Seminario - Cuarto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-01 16:12:08'),
(101, '48390917', 'SPRECHER CARDENAS Candela Lihuén', 14, 'Educación', '', '', '', '', '', '', '', 'Ciencias de la Tierra I - Cuarto Año', 'Sabares Física Ambiental - Cuarto Año                  ', 'Saberes Pedagogía - Cuarto Año                  ', 'Psicología - Cuarto Año                  ', 'Seminario - Cuarto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-01 16:12:08'),
(102, '47913780', 'SURA Tiara Abigail', 14, 'Educación', '', '', '', '', '', '', '', 'Ciencias de la Tierra I - Cuarto Año', 'Sabares Física Ambiental - Cuarto Año                  ', 'Saberes Pedagogía - Cuarto Año                  ', 'Psicología - Cuarto Año                  ', 'Seminario - Cuarto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-01 16:12:08'),
(103, '48660008', 'TORRES PEREYRA Ignacio Marcelo', 14, 'Educación', '', '', '', '', '', '', '', 'Ciencias de la Tierra I - Cuarto Año', 'Sabares Física Ambiental - Cuarto Año                  ', 'Saberes Pedagogía - Cuarto Año                  ', 'Psicología - Cuarto Año                  ', 'Seminario - Cuarto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-01 16:12:08'),
(104, '48732077', 'VEGA Lucas Gonzalo', 14, 'Educación', '', '', '', '', '', '', '', 'Ciencias de la Tierra I - Cuarto Año', 'Sabares Física Ambiental - Cuarto Año                  ', 'Saberes Pedagogía - Cuarto Año                  ', 'Psicología - Cuarto Año                  ', 'Seminario - Cuarto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-01 16:12:08'),
(105, '48732007', 'ACUÑA Gianella Mía', 15, 'Educación', '', '', '', '', '', '', '', 'Ciencias de la Tierra I - Cuarto Año', 'Sabares Física Ambiental - Cuarto Año                  ', 'Saberes Pedagogía - Cuarto Año                  ', 'Psicología - Cuarto Año                  ', 'Seminario - Cuarto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-01 16:12:08'),
(106, '48251306', 'ARBELOA Guillermo Agustín', 15, 'Educación', '', '', '', '', '', '', '', 'Ciencias de la Tierra I - Cuarto Año', 'Sabares Física Ambiental - Cuarto Año                  ', 'Saberes Pedagogía - Cuarto Año                  ', 'Psicología - Cuarto Año                  ', 'Seminario - Cuarto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-01 16:12:08'),
(107, '47670763', 'BEROIZA Fernanda Abigail', 15, 'Educación', '', '', '', '', '', '', '', 'Ciencias de la Tierra I - Cuarto Año', 'Sabares Física Ambiental - Cuarto Año                  ', 'Saberes Pedagogía - Cuarto Año                  ', 'Psicología - Cuarto Año                  ', 'Seminario - Cuarto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-01 16:12:08'),
(108, '48947351', 'CALFUEQUE NAVARRETE Ismael', 15, 'Educación', '', '', '', '', '', '', '', 'Ciencias de la Tierra I - Cuarto Año', 'Sabares Física Ambiental - Cuarto Año                  ', 'Saberes Pedagogía - Cuarto Año                  ', 'Psicología - Cuarto Año                  ', 'Seminario - Cuarto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-01 16:12:08'),
(109, '48946817', 'CAMARGO QUICHU Verónica', 15, 'Educación', '', '', '', '', '', '', '', 'Ciencias de la Tierra I - Cuarto Año', 'Sabares Física Ambiental - Cuarto Año                  ', 'Saberes Pedagogía - Cuarto Año                  ', 'Psicología - Cuarto Año                  ', 'Seminario - Cuarto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-01 16:12:08'),
(110, '48390924', 'CASTILLO Martín Alán', 15, 'Educación', '', '', '', '', '', '', '', 'Ciencias de la Tierra I - Cuarto Año', 'Sabares Física Ambiental - Cuarto Año                  ', 'Saberes Pedagogía - Cuarto Año                  ', 'Psicología - Cuarto Año                  ', 'Seminario - Cuarto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-01 16:12:08'),
(111, '48660046', 'CASTRO GARRADO Melani', 15, 'Educación', '', '', '', '', '', '', '', 'Ciencias de la Tierra I - Cuarto Año', 'Sabares Física Ambiental - Cuarto Año                  ', 'Saberes Pedagogía - Cuarto Año                  ', 'Psicología - Cuarto Año                  ', 'Seminario - Cuarto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-01 16:12:08'),
(112, '48185240', 'ESPOSITO Valentín Nicolás', 15, 'Educación', '', '', '', '', '', '', '', 'Ciencias de la Tierra I - Cuarto Año', 'Sabares Física Ambiental - Cuarto Año                  ', 'Saberes Pedagogía - Cuarto Año                  ', 'Psicología - Cuarto Año                  ', 'Seminario - Cuarto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-01 16:12:08'),
(113, '48531301', 'HENRIQUEZ Braian Alexander', 15, 'Educación', '', '', '', '', '', '', '', 'Ciencias de la Tierra I - Cuarto Año', 'Sabares Física Ambiental - Cuarto Año                  ', 'Saberes Pedagogía - Cuarto Año                  ', 'Psicología - Cuarto Año                  ', 'Seminario - Cuarto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-01 16:12:08'),
(114, '49217532', 'JARA Nazarena Abigaíl', 15, 'Educación', '', '', '', '', '', '', '', 'Ciencias de la Tierra I - Cuarto Año', 'Sabares Física Ambiental - Cuarto Año                  ', 'Saberes Pedagogía - Cuarto Año                  ', 'Psicología - Cuarto Año                  ', 'Seminario - Cuarto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-01 16:12:08'),
(115, '48866590', 'KACHU Claudio  Leonel', 15, 'Educación', '', '', '', '', '', '', '', 'Ciencias de la Tierra I - Cuarto Año', 'Sabares Física Ambiental - Cuarto Año                  ', 'Saberes Pedagogía - Cuarto Año                  ', 'Psicología - Cuarto Año                  ', 'Seminario - Cuarto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-01 16:12:08'),
(116, '48450534', 'MAMANI ALMAZAN  Danitza Belén', 15, 'Educación', '', '', '', '', '', '', '', 'Ciencias de la Tierra I - Cuarto Año', 'Sabares Física Ambiental - Cuarto Año                  ', 'Saberes Pedagogía - Cuarto Año                  ', 'Psicología - Cuarto Año                  ', 'Seminario - Cuarto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-01 16:12:08'),
(117, '48401968', 'MAMANI BEJARANO Angelina Jazmin', 15, 'Educación', '', '', '', '', '', '', '', 'Ciencias de la Tierra I - Cuarto Año', 'Sabares Física Ambiental - Cuarto Año                  ', 'Saberes Pedagogía - Cuarto Año                  ', 'Psicología - Cuarto Año                  ', 'Seminario - Cuarto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-01 16:12:08'),
(118, '48946829', 'MENDEZ HERMOSILLA Karen Cecilia', 15, 'Educación', '', '', '', '', '', '', '', 'Ciencias de la Tierra I - Cuarto Año', 'Sabares Física Ambiental - Cuarto Año                  ', 'Saberes Pedagogía - Cuarto Año                  ', 'Psicología - Cuarto Año                  ', 'Seminario - Cuarto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-01 16:12:08'),
(119, '48531328', 'MORALES SALAS Malena Ayelén', 15, 'Educación', '', '', '', '', '', '', '', 'Ciencias de la Tierra I - Cuarto Año', 'Sabares Física Ambiental - Cuarto Año                  ', 'Saberes Pedagogía - Cuarto Año                  ', 'Psicología - Cuarto Año                  ', 'Seminario - Cuarto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-01 16:12:08'),
(120, '48319211', 'NOVOA Lucía Valentina', 15, 'Educación', '', '', '', '', '', '', '', 'Ciencias de la Tierra I - Cuarto Año', 'Sabares Física Ambiental - Cuarto Año                  ', 'Saberes Pedagogía - Cuarto Año                  ', 'Psicología - Cuarto Año                  ', 'Seminario - Cuarto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-01 16:12:08'),
(121, '48908766', 'ORTEGA ZALAZAR Luz María', 15, 'Educación', '', '', '', '', '', '', '', 'Ciencias de la Tierra I - Cuarto Año', 'Sabares Física Ambiental - Cuarto Año                  ', 'Saberes Pedagogía - Cuarto Año                  ', 'Psicología - Cuarto Año                  ', 'Seminario - Cuarto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-01 16:12:08'),
(122, '48908765', 'ORTEGA ZALAZAR Morena Roxana', 15, 'Educación', '', '', '', '', '', '', '', 'Ciencias de la Tierra I - Cuarto Año', 'Sabares Física Ambiental - Cuarto Año                  ', 'Saberes Pedagogía - Cuarto Año                  ', 'Psicología - Cuarto Año                  ', 'Seminario - Cuarto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-01 16:12:08'),
(123, '48390920', 'ROBLES Araceli Celeste', 15, 'Educación', '', '', '', '', '', '', '', 'Ciencias de la Tierra I - Cuarto Año', 'Sabares Física Ambiental - Cuarto Año                  ', 'Saberes Pedagogía - Cuarto Año                  ', 'Psicología - Cuarto Año                  ', 'Seminario - Cuarto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-01 16:12:08'),
(124, '48659663', 'RUIZ DIAZ Maia Luciana', 15, 'Educación', '', '', '', '', '', '', '', 'Ciencias de la Tierra I - Cuarto Año', 'Sabares Física Ambiental - Cuarto Año                  ', 'Saberes Pedagogía - Cuarto Año                  ', 'Psicología - Cuarto Año                  ', 'Seminario - Cuarto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-01 16:12:08'),
(125, '48732527', 'SAAVEDRA Gonzalo Martín', 15, 'Educación', '', '', '', '', '', '', '', 'Ciencias de la Tierra I - Cuarto Año', 'Sabares Física Ambiental - Cuarto Año                  ', 'Saberes Pedagogía - Cuarto Año                  ', 'Psicología - Cuarto Año                  ', 'Seminario - Cuarto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-01 16:12:08'),
(126, '48815627', 'SULLCA AIZA Gladys Evelin', 15, 'Educación', '', '', '', '', '', '', '', 'Ciencias de la Tierra I - Cuarto Año', 'Sabares Física Ambiental - Cuarto Año                  ', 'Saberes Pedagogía - Cuarto Año                  ', 'Psicología - Cuarto Año                  ', 'Seminario - Cuarto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-01 16:12:08'),
(127, '95699406', 'TRINGIPIO LAZO Jenny Leidy', 15, 'Educación', '', '', '', '', '', '', '', 'Ciencias de la Tierra I - Cuarto Año', 'Sabares Física Ambiental - Cuarto Año                  ', 'Saberes Pedagogía - Cuarto Año                  ', 'Psicología - Cuarto Año                  ', 'Seminario - Cuarto Año                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-01 16:12:08');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cursos`
--

CREATE TABLE `cursos` (
  `id` int(11) NOT NULL,
  `nombre` text COLLATE utf8_spanish_ci NOT NULL,
  `turno` text COLLATE utf8_spanish_ci NOT NULL,
  `estado` int(11) NOT NULL DEFAULT 1,
  `id_usuario` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `cursos`
--

INSERT INTO `cursos` (`id`, `nombre`, `turno`, `estado`, `id_usuario`, `fecha`) VALUES
(1, '1º Primera ', 'Mañana', 1, 0, '2022-08-01 23:26:11'),
(2, '1º Segunda', 'Mañana', 1, 0, '2022-08-01 23:26:33'),
(3, '2º Primera', 'Mañana', 1, 0, '2022-08-01 23:26:52'),
(4, '1º Primera', 'Tarde', 1, 0, '2022-08-01 23:27:07'),
(5, '2º Primera', 'Tarde', 1, 0, '2022-08-01 23:27:25'),
(6, '2º Segunda', 'Tarde', 1, 0, '2022-08-01 23:27:42'),
(7, '3º Primera', 'Mañana', 1, 0, '2022-08-01 23:28:20'),
(8, '3º Segunda', 'Mañana', 1, 0, '2022-08-01 23:28:36'),
(9, '4º Primera', 'Mañana', 1, 0, '2022-08-01 23:28:57'),
(10, '4º Segunda', 'Mañana', 1, 0, '2024-03-14 23:29:32'),
(11, '5º Primera', 'Mañana', 1, 0, '2022-08-01 23:29:25'),
(12, '5º Segunda', 'Mañana', 1, 0, '2022-08-01 23:29:39'),
(13, '3º Primera', 'Tarde', 1, 0, '2022-08-01 23:30:32'),
(14, '4º Primera', 'Tarde', 1, 0, '2022-08-01 23:31:03'),
(15, '4º Segunda', 'Tarde', 1, 0, '2022-08-01 23:38:19'),
(16, '5º Primera', 'Tarde', 1, 0, '2022-08-01 23:38:37'),
(17, '5º Segunda', 'Tarde', 1, 0, '2022-08-01 23:38:50'),
(18, '2º Tercera', 'Tarde', 1, 0, '2023-05-15 12:08:33'),
(19, '2º Segunda', 'Mañana', 1, 0, '2024-03-14 23:29:54'),
(20, '3º Tercera', 'Mañana', 1, 0, '2024-03-14 23:30:23'),
(21, '4º Tercera', 'Mañana', 1, 0, '2024-03-14 23:30:54'),
(22, '1º Segunda', 'Tarde', 1, 0, '2024-03-14 23:32:21'),
(23, '3º Segunda', 'Tarde', 1, 0, '2024-03-14 23:34:18'),
(24, '3º Tercera', 'Tarde', 1, 0, '2024-03-14 23:34:36');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `movilidad`
--

CREATE TABLE `movilidad` (
  `id_movilidad` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `turno` text COLLATE utf8_spanish_ci NOT NULL,
  `numero` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `movilidad`
--

INSERT INTO `movilidad` (`id_movilidad`, `id_usuario`, `fecha`, `turno`, `numero`) VALUES
(1, 23, '2022-03-28', 'Mañana', 1),
(2, 23, '2022-03-28', 'Tarde', 1),
(3, 23, '2022-03-29', 'Mañana', 1),
(4, 23, '2022-03-29', 'Tarde', 1),
(5, 23, '2022-03-30', 'Tarde', 1),
(6, 23, '2022-03-31', 'Mañana', 1),
(7, 23, '2022-04-04', 'Mañana', 1),
(8, 23, '2022-04-04', 'Tarde', 1),
(9, 23, '2022-04-07', 'Mañana', 1),
(10, 23, '2022-04-07', 'Tarde', 1),
(11, 23, '2022-04-11', 'Mañana', 1),
(12, 23, '2022-04-11', 'Tarde', 1),
(13, 23, '2022-04-12', 'Mañana', 1),
(14, 23, '2022-04-12', 'Tarde', 1),
(15, 23, '2022-04-13', 'Tarde', 1),
(16, 23, '2022-04-18', 'Mañana', 1),
(17, 23, '2022-04-18', 'Tarde', 1),
(18, 23, '2022-04-19', 'Mañana', 1),
(19, 23, '2022-04-20', 'Tarde', 1),
(20, 23, '2022-04-21', 'Mañana', 1),
(21, 23, '2022-04-21', 'Tarde', 1),
(22, 23, '2022-04-25', 'Mañana', 1),
(23, 23, '2022-04-25', 'Tarde', 1),
(24, 22, '2022-04-28', 'Mañana', 1),
(25, 34, '2022-04-28', 'Tarde', 1),
(26, 28, '2022-04-28', 'Mañana', 1),
(27, 29, '2022-04-28', 'Tarde', 1),
(28, 24, '2022-04-28', 'Tarde', 1),
(29, 24, '2022-04-29', 'Tarde', 1),
(30, 34, '2022-04-29', 'Tarde', 1),
(31, 25, '2022-04-28', 'Tarde', 1),
(32, 34, '2022-05-02', 'Tarde', 1),
(33, 31, '2022-05-02', 'Tarde', 1),
(34, 24, '2022-05-04', 'Tarde', 1),
(35, 34, '2022-05-04', 'Tarde', 1),
(36, 28, '2022-05-02', 'Mañana', 1),
(37, 28, '2022-05-02', 'Tarde', 1),
(38, 28, '2022-05-03', 'Mañana', 1),
(39, 28, '2022-05-03', 'Tarde', 1),
(40, 28, '2022-05-04', 'Mañana', 1),
(41, 28, '2022-05-04', 'Tarde', 1),
(42, 25, '2022-05-03', 'Tarde', 1),
(43, 25, '2022-05-04', 'Tarde', 1),
(49, 26, '2022-04-28', 'Mañana', 1),
(50, 26, '2022-04-28', 'Tarde', 1),
(51, 26, '2022-04-29', 'Mañana', 1),
(52, 26, '2022-04-29', 'Tarde', 1),
(53, 26, '2022-05-02', 'Mañana', 1),
(54, 26, '2022-05-02', 'Tarde', 1),
(55, 26, '2022-05-03', 'Mañana', 1),
(56, 26, '2022-05-04', 'Mañana', 1),
(57, 26, '2022-05-05', 'Mañana', 1),
(58, 26, '2022-05-05', 'Tarde', 1),
(59, 34, '2022-05-05', 'Tarde', 1),
(60, 25, '2022-05-05', 'Tarde', 1),
(61, 28, '2022-05-05', 'Mañana', 1),
(62, 8, '2022-05-16', 'Mañana', 1),
(63, 8, '2022-05-16', 'Tarde', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `netbooks`
--

CREATE TABLE `netbooks` (
  `id` int(11) NOT NULL,
  `nombre` text NOT NULL,
  `id_curso` int(11) NOT NULL,
  `nserie` text NOT NULL,
  `estado` int(11) NOT NULL DEFAULT 1,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `netbooks`
--

INSERT INTO `netbooks` (`id`, `nombre`, `id_curso`, `nserie`, `estado`, `fecha`) VALUES
(1, 'Aguiar Luis Ezequiel', 4, 'AA8811045600', 1, '2022-04-29 18:11:09'),
(2, 'Alvarez Máximo Pablo', 3, 'AA7811045963', 1, '2022-04-29 18:11:55'),
(3, 'Aucachi Nicolás', 4, 'AA8811054326', 1, '2022-04-29 18:12:49'),
(4, 'Barbosa Thiago Lionel', 3, 'AA1811046572', 1, '2022-04-29 18:13:49'),
(5, 'Basualdo Miyel Carolina', 4, 'Aa1811047273', 1, '2022-04-29 18:14:45'),
(6, 'Beroísa Beltrán Juan David', 4, 'AA9811045953', 1, '2022-04-29 18:15:44'),
(7, 'Beroísa Beltrán Liliana Anabel', 4, 'AA7811050265', 1, '2022-04-29 18:16:41'),
(8, 'Cárdenas Méndez Ezequiel Angel', 3, 'AA7811056169', 1, '2022-04-29 18:17:27'),
(9, 'Carrasco Morena Costanza', 3, 'AA7811045607', 1, '2022-04-29 18:18:19'),
(10, 'Carrillo Tiziano Valentín', 3, 'AA1811042005', 1, '2022-04-29 18:18:58'),
(11, 'Catalano Ana Sol', 3, 'AA0811050246', 1, '2022-04-29 18:19:34'),
(12, 'Constante Danixa Jazmín', 3, 'AA1811042090', 1, '2022-04-29 18:20:12'),
(13, 'Constante Rodríguez Denis Ezequiel', 4, 'aa8811043683', 1, '2022-04-29 18:21:08'),
(14, 'Coronel Paola Andrea', 3, 'AA6811044974', 1, '2022-04-29 18:21:59'),
(15, 'Dithurbide Luciana Nicole', 3, 'Aa1811045865', 1, '2022-04-29 18:22:37'),
(16, 'Ferreyra Román Daiana Francisca', 4, 'AA1811042745', 1, '2022-04-29 18:23:50'),
(17, 'Franco Luciano', 3, 'AA7811043187', 1, '2022-04-29 18:24:37'),
(18, 'Gatica Candela', 4, 'AA7811044380', 1, '2022-04-29 18:25:27'),
(19, 'Génova Néstor Sebastián', 3, 'AA6811051312', 1, '2022-04-29 18:26:17'),
(20, 'Huayta Chambí Malena Rocío', 4, 'AA0811048221', 1, '2022-04-29 18:27:02'),
(21, 'Laborda Francisco Ezequiel', 3, 'AA8811042192', 1, '2022-04-29 18:27:43'),
(22, 'Larraburu Nievas Valentín', 3, 'AA7811054266', 1, '2022-04-29 18:28:43'),
(23, 'Larrosa López Tomás Geremías', 4, 'AA7811046534', 1, '2022-04-29 18:29:38'),
(24, 'Ledesma Manríquez Máximo Josemir', 4, 'AA7811044454', 1, '2022-04-29 18:30:35'),
(25, 'Lefiñir Yésica Joselín', 4, 'AA0811043967', 1, '2022-04-29 18:31:17'),
(26, 'Leiva Roldán Litsi Agustina', 3, 'AA6811055353', 1, '2022-04-29 18:32:05'),
(27, 'Lima Puma Alex Román', 3, 'AA6811055370', 1, '2022-04-29 18:33:07'),
(28, 'Loaiza González Alex Ariel', 3, 'AA68110512223', 1, '2022-04-29 18:33:44'),
(29, 'Maldonado Linares Juana Martina', 3, 'Aa1811046030', 1, '2022-04-29 18:34:45'),
(30, 'Mansilla Abril Ainnara', 4, 'AA7811051987', 1, '2022-04-29 18:35:34'),
(31, 'Marciro Merlina Selena', 4, 'AA1811043332', 1, '2022-04-29 18:36:11'),
(32, 'Martínez Giuliana Anabella', 4, 'AA1811045603', 1, '2022-04-29 18:37:02'),
(33, 'Melivilo Araya Emiliano Alfredo', 4, 'AA7811054433', 1, '2022-04-29 18:38:06'),
(34, 'Millañanco Nehuén Antú', 3, 'AA6811044734', 1, '2022-04-29 18:39:07'),
(35, 'Minetti Facundo Exequiel', 3, 'AA1811045335', 1, '2022-04-29 18:41:02'),
(36, 'Molins Iñaki Gabriel', 3, 'AA1811045839', 1, '2022-04-29 18:41:37'),
(37, 'Painel Alhué María Florencia', 4, 'AA0811053993', 1, '2022-04-29 18:42:19'),
(38, 'Palacio Juana Alejandra', 4, 'AA7811048371', 1, '2022-04-29 18:43:30'),
(39, 'Peinecura Villa Nahuel Néstor', 4, 'AA0811056247', 1, '2022-04-29 18:44:20'),
(40, 'Pueblas Pedro Francisco', 4, 'AA0811053957', 1, '2022-04-29 18:45:20'),
(41, 'Reyes Santiago', 3, 'AA7811055881', 1, '2022-04-29 18:45:54'),
(42, 'Sánchez Dailoff Juana', 3, 'AA1811046008', 1, '2022-04-29 18:47:35'),
(43, 'Sempé Daniel Exequiel', 3, 'Aa5811055692', 1, '2022-04-29 18:48:25'),
(44, 'Valdebenito Jonathan Abel', 4, 'AA0811050591', 1, '2022-04-29 18:49:11'),
(45, 'Vallejos Alvarez Valentina Milagros', 3, 'AA9811046991', 1, '2022-04-29 19:04:05'),
(46, 'Velázquez Matías Fermín', 3, 'AA3811044253', 1, '2022-04-29 19:05:05'),
(47, 'Velázquez Villasuso Laureano Benjamín', 4, 'AA0811048881', 1, '2022-04-29 19:07:41'),
(48, 'Viveros Ariela Belén', 4, 'Aa9811048852', 1, '2022-04-29 19:08:20');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `primero`
--

CREATE TABLE `primero` (
  `id` int(11) NOT NULL,
  `documento` text COLLATE utf8_spanish_ci NOT NULL,
  `nombre` text COLLATE utf8_spanish_ci NOT NULL,
  `id_curso` int(11) NOT NULL,
  `saberes_cientifica` text COLLATE utf8_spanish_ci NOT NULL,
  `saberes_sociales` text COLLATE utf8_spanish_ci NOT NULL,
  `saberes_ingles` text COLLATE utf8_spanish_ci NOT NULL,
  `saberes_matematica` text COLLATE utf8_spanish_ci NOT NULL,
  `saberes_fisica` text COLLATE utf8_spanish_ci NOT NULL,
  `saberes_artistica` text COLLATE utf8_spanish_ci NOT NULL,
  `saberes_lengua` text COLLATE utf8_spanish_ci NOT NULL,
  `aprecia_cientifica` text COLLATE utf8_spanish_ci NOT NULL,
  `aprecia_sociales` text COLLATE utf8_spanish_ci NOT NULL,
  `aprecia_ingles` text COLLATE utf8_spanish_ci NOT NULL,
  `aprecia_matematica` text COLLATE utf8_spanish_ci NOT NULL,
  `aprecia_fisica` text COLLATE utf8_spanish_ci NOT NULL,
  `aprecia_artistica` text COLLATE utf8_spanish_ci NOT NULL,
  `aprecia_lengua` text COLLATE utf8_spanish_ci NOT NULL,
  `asistencia_cientifica` text COLLATE utf8_spanish_ci NOT NULL,
  `asistencia_sociales` text COLLATE utf8_spanish_ci NOT NULL,
  `asistencia_ingles` text COLLATE utf8_spanish_ci NOT NULL,
  `asistencia_matematica` text COLLATE utf8_spanish_ci NOT NULL,
  `asistencia_fisica` text COLLATE utf8_spanish_ci NOT NULL,
  `asistencia_artistica` text COLLATE utf8_spanish_ci NOT NULL,
  `asistencia_lengua` text COLLATE utf8_spanish_ci NOT NULL,
  `observa_cientifica` text COLLATE utf8_spanish_ci NOT NULL,
  `observa_sociales` text COLLATE utf8_spanish_ci NOT NULL,
  `observa_ingles` text COLLATE utf8_spanish_ci NOT NULL,
  `observa_matematica` text COLLATE utf8_spanish_ci NOT NULL,
  `observa_fisica` text COLLATE utf8_spanish_ci NOT NULL,
  `observa_artistica` text COLLATE utf8_spanish_ci NOT NULL,
  `observa_lengua` text COLLATE utf8_spanish_ci NOT NULL,
  `estado` int(11) NOT NULL DEFAULT 1,
  `periodo` text COLLATE utf8_spanish_ci NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `primero`
--

INSERT INTO `primero` (`id`, `documento`, `nombre`, `id_curso`, `saberes_cientifica`, `saberes_sociales`, `saberes_ingles`, `saberes_matematica`, `saberes_fisica`, `saberes_artistica`, `saberes_lengua`, `aprecia_cientifica`, `aprecia_sociales`, `aprecia_ingles`, `aprecia_matematica`, `aprecia_fisica`, `aprecia_artistica`, `aprecia_lengua`, `asistencia_cientifica`, `asistencia_sociales`, `asistencia_ingles`, `asistencia_matematica`, `asistencia_fisica`, `asistencia_artistica`, `asistencia_lengua`, `observa_cientifica`, `observa_sociales`, `observa_ingles`, `observa_matematica`, `observa_fisica`, `observa_artistica`, `observa_lengua`, `estado`, `periodo`, `id_usuario`, `fecha`) VALUES
(1, '50729577', 'AVALOS  Iris Morena', 1, 'Primero Primera TM - Científica y Tecnológica                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 18:13:15'),
(2, '50677825', 'BENEGAS Lautaro Emanuel', 1, 'Primero Primera TM - Científica y Tecnológica                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 18:13:15'),
(3, '50571461', 'BERNADETE BARROS Sabrina Beatriz', 1, 'Primero Primera TM - Científica y Tecnológica                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 18:13:15'),
(4, '51081829', 'CAYUPE Rocio Luan', 1, 'Primero Primera TM - Científica y Tecnológica                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 18:13:15'),
(5, '51040973', 'CURIMIL Nicol Tamara', 1, 'Primero Primera TM - Científica y Tecnológica                  ', '', '', '', '', '', '', 'En Proceso de Apropiación de Saberes', '', '', '', '', '', '', '50', '', '', '', '', '', '', 'Maso Maso', '', '', '', '', '', '', 1, '01/2024', 8, '2024-03-22 19:33:09'),
(6, '50676081', 'FERNANDEZ Julieta Guadalupe', 1, 'Primero Primera TM - Científica y Tecnológica                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 18:13:15'),
(7, '50709882', 'FILET Bautista Nehuen', 1, 'Primero Primera TM - Científica y Tecnológica                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 18:13:15'),
(8, '50796880', 'GALLEGO Lautaro Exequiel', 1, 'Primero Primera TM - Científica y Tecnológica                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 18:13:15'),
(9, '50023730', 'GARCIA Franco Ezequiel', 1, 'Primero Primera TM - Científica y Tecnológica                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 18:13:15'),
(10, '49704147', 'GONZALEZ Claudio Noriel', 1, 'Primero Primera TM - Científica y Tecnológica                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 18:13:15'),
(11, '50506233', 'GONZALEZ Shaira Lylen', 1, 'Primero Primera TM - Científica y Tecnológica                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 18:13:15'),
(12, '50504708', 'GRAMAJO Camila Jazmín', 1, 'Primero Primera TM - Científica y Tecnológica                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 18:13:15'),
(13, '51127732', 'LAGOS CALFUMIL Noelia Magalí', 1, 'Primero Primera TM - Científica y Tecnológica                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 18:13:15'),
(14, '50505920', 'LESCANO Leandro Oscar', 1, 'Primero Primera TM - Científica y Tecnológica                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 18:13:15'),
(15, '50504747', 'LUIS Santiago Nicolás', 1, 'Primero Primera TM - Científica y Tecnológica                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 18:13:15'),
(16, '50709888', 'MARABOLIS Mateo Valentin', 1, 'Primero Primera TM - Científica y Tecnológica                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 18:13:15'),
(17, '50504729', 'MERINO Miguel Aarón', 1, 'Primero Primera TM - Científica y Tecnológica                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 18:13:15'),
(18, '50709885', 'MONJES RAIQUIL Kiara Naiara', 1, 'Primero Primera TM - Científica y Tecnológica                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 18:13:15'),
(19, '50709884', 'MONJES RAIQUIL Sahira Alejandra', 1, 'Primero Primera TM - Científica y Tecnológica                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 18:13:15'),
(20, '50709864', 'OVEJERO MALDONADO Isabel Estrella', 1, 'Primero Primera TM - Científica y Tecnológica                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 18:13:15'),
(21, '50504745', 'REYES Jeremias Tiziano Astor', 1, 'Primero Primera TM - Científica y Tecnológica                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 18:13:15'),
(22, '50796892', 'ROZAS Angelina Nahiara', 1, 'Primero Primera TM - Científica y Tecnológica                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 18:13:15'),
(23, '50676057', 'SOLIS SAN MARTÍN Jimena Avril', 1, 'Primero Primera TM - Científica y Tecnológica                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 18:13:15'),
(24, '50505982', 'TORMO TROFIMEZUK Angel Valentín', 1, 'Primero Primera TM - Científica y Tecnológica                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 18:13:15'),
(25, '50588186', 'VASQUEZ Milagros María', 1, 'Primero Primera TM - Científica y Tecnológica                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 18:13:15'),
(26, '51081845', 'ALVAREZ Fabricio José', 2, 'Primero SegundaTM - Científica y Tecnológica                       ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 19:42:26'),
(27, '50626312', 'ARRARAS SANCHEZ Ignacio Lionel', 2, 'Primero SegundaTM - Científica y Tecnológica                       ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 19:42:26'),
(28, '50432488', 'BENITEZ NUÑEZ Thiago Lautaro', 2, 'Primero SegundaTM - Científica y Tecnológica                       ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 19:42:26'),
(29, '50913816', 'CASTILLO Agustina Solange', 2, 'Primero SegundaTM - Científica y Tecnológica                       ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 19:42:26'),
(30, '50271461', 'CASTILLO SACCOMANDI Juan David', 2, 'Primero SegundaTM - Científica y Tecnológica                       ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 19:42:26'),
(31, '50505994', 'CHOIMAN Valentino Sebastián', 2, 'Primero SegundaTM - Científica y Tecnológica                       ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 19:42:26'),
(32, '51119971', 'GARCIA Juan Ignacio', 2, 'Primero SegundaTM - Científica y Tecnológica                       ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 19:42:26'),
(33, '50676079', 'JAIME Carla Fernanda', 2, 'Primero SegundaTM - Científica y Tecnológica                       ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 19:42:26'),
(34, '50676089', 'JARA Naiara Jazmín', 2, 'Primero SegundaTM - Científica y Tecnológica                       ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 19:42:26'),
(35, '51025279', 'KACHU Leonardo Miguel', 2, 'Primero SegundaTM - Científica y Tecnológica                       ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 19:42:26'),
(36, '51082199', 'MARTINEZ Candela Agostina', 2, 'Primero SegundaTM - Científica y Tecnológica                       ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 19:42:26'),
(37, '51237697', 'MILLANAO Juan Agustin', 2, 'Primero SegundaTM - Científica y Tecnológica                       ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 19:42:26'),
(38, '50676080', 'MUÑOZ Martina Gabriela', 2, 'Primero SegundaTM - Científica y Tecnológica                       ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 19:42:26'),
(39, '52321515', 'ORTIZ Delfina Marilyn', 2, 'Primero SegundaTM - Científica y Tecnológica                       ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 19:42:26'),
(40, '50676090', 'PALAVECINO Zahiara', 2, 'Primero SegundaTM - Científica y Tecnológica                       ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 19:42:26'),
(41, '50992776', 'PILQUIMAN CERDA Jazmín  Aurora', 2, 'Primero SegundaTM - Científica y Tecnológica                       ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 19:42:26'),
(42, '49340034', 'POBLETE Aimara', 2, 'Primero SegundaTM - Científica y Tecnológica                       ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 19:42:26'),
(43, '51127794', 'QUINTANA Alma Abigail', 2, 'Primero SegundaTM - Científica y Tecnológica                       ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 19:42:26'),
(44, '50676093', 'RAILEN Morena Jazmín', 2, 'Primero SegundaTM - Científica y Tecnológica                       ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 19:42:26'),
(45, '50709900', 'ROA Sofía Catalina  Alejandra', 2, 'Primero SegundaTM - Científica y Tecnológica                       ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 19:42:26'),
(46, '51127761', 'SANCHEZ DOMINGUEZ Alison Priscila', 2, 'Primero SegundaTM - Científica y Tecnológica                       ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 19:42:26'),
(47, '50505958', 'SANCHEZ Javier Alejandro', 2, 'Primero SegundaTM - Científica y Tecnológica                       ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 19:42:26'),
(48, '51127752', 'SEPULVEDA Tatiana Eluney', 2, 'Primero SegundaTM - Científica y Tecnológica                       ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 19:42:26'),
(49, '50796899', 'SORIA Ada Valentina', 2, 'Primero SegundaTM - Científica y Tecnológica                       ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 19:42:26'),
(50, '50913829', 'VERDUGO VILLALOBOS Tiziano Agustín', 2, 'Primero SegundaTM - Científica y Tecnológica                       ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 19:42:26'),
(51, '50873067', 'ACUÑA Tiziano Roman', 4, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 17:46:11'),
(52, '51025289', 'ANDRADE Luisa Valentina', 4, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 17:45:34'),
(53, '50505918', 'BANEGAS ARANGUEZ Nelson Benjamin', 4, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 17:45:34'),
(54, '50505999', 'BEROIZA Yamila Nicol', 4, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 17:45:34'),
(55, '51024806', 'CID Thiago Nazareno', 4, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 17:45:34'),
(56, '50432294', 'COTAL Sheila Stefany', 4, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 17:45:34'),
(57, '50992999', 'FRITZ Leonardo Raul', 4, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 17:45:34'),
(58, '49800198', 'GUZMAN Franco Nicolas', 4, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 17:45:34'),
(59, '50504735', 'INOSTROSA Nicole Julieta', 4, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 17:45:34'),
(60, '50505978', 'IVACACHE Eduardo Javier', 4, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 17:45:34'),
(61, '50796871', 'LLANQUILEO Samuel Ivan', 4, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 17:45:34'),
(62, '51237686', 'LLORENTE Santino Damian', 4, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 17:45:34'),
(63, '50873456', 'MERLO Juanita Catalina', 4, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 17:45:34'),
(64, '50992784', 'MORALES SANDOVAL Jazmín Cielo', 4, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 17:52:08'),
(65, '51081841', 'MORALES Santiago Benjamin', 4, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 17:45:34'),
(66, '51127788', 'PIUTRIN Griselda Oreana', 4, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 17:45:34'),
(67, '51081822', 'ROCHA Miqueas Santiago', 4, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 17:45:34'),
(68, '96125540', 'ROMERO CHOJLLU Rosmery', 4, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 17:45:34'),
(69, '51040412', 'ROMERO Lucas Adonai', 4, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 17:45:34'),
(70, '50913824', 'ROSALES GARCES Benjamin Jonathan', 4, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 17:45:34'),
(71, '51025283', 'SANDOVAL DURAND Rocío Valentina', 4, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 17:55:42'),
(72, '49800182', 'SANDOVAL DURAND Zoé  Antonella', 4, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 17:56:12'),
(73, '51127744', 'SOSA Uma Naiara', 4, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 17:45:34'),
(74, '50913815', 'VILLARINO Carlos Patricio', 4, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 17:45:34'),
(75, '51081837', 'VILLARREAL Ivonne Azul Aixa', 4, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 17:45:34'),
(76, '52328447', 'ARIAS COFRE Julieta Abigail', 22, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 17:45:34'),
(77, '51127769', 'ASTROZA Angie Alahi', 22, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 17:45:34'),
(78, '50505937', 'BUSTOS Luca Ever', 22, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 17:45:34'),
(79, '51081833', 'CAICOMPAY FREDERICK Alan', 22, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 17:45:34'),
(80, '51025293', 'CATALAN Lautaro Elias', 22, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 17:45:34'),
(81, '50873454', 'CATALAN MAUREIRA Sasha Jazmín', 22, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 17:46:37'),
(82, '51081849', 'CHOIMAN Cesia Isaí', 22, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 17:48:42'),
(83, '50505954', 'ESCOBAR NAHUELAN Cesar Agustin', 22, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 17:45:34'),
(84, '51127786', 'FERNANDEZ Julián  José', 22, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 17:49:44'),
(85, '50992778', 'FIERRO Eitan Osvaldo', 22, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 17:45:34'),
(86, '50676074', 'FUENTEALBA Megan Belen', 22, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 17:45:34'),
(87, '50676073', 'FUENTEALBA Oriana Jazmin', 22, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 17:45:34'),
(88, '50913828', 'GUTIERREZ Axel Maximiliano', 22, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 17:45:34'),
(89, '51081844', 'HERMOSILLA ÑANCUFIL Luzmila Alahy', 22, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 17:50:18'),
(90, '51127720', 'HUENUQUEO ANCAVIL Priscila Aylin', 22, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 17:45:34'),
(91, '50504723', 'LLANQUINAO Kiara Valentina', 22, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 17:45:34'),
(92, '51127792', 'MONTECINO Mateo Joaquin', 22, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 17:45:34'),
(93, '50505976', 'MUÑOZ Ever Agustin', 22, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 17:52:22'),
(94, '50505959', 'MUÑOZ Jazmín  Tatiana', 22, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 17:53:07'),
(95, '50913808', 'NAVARRETE Araceli  Eunice', 22, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 17:45:34'),
(96, '51127751', 'QUILODRAN Román Aarón', 22, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 17:53:49'),
(97, '52047027', 'QUINTANA Bianca Valentina', 22, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 17:45:34'),
(98, '51127695', 'SANDOVAL Giuliana Nahiara', 22, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 17:45:34'),
(99, '51127782', 'SANDOVAL Morena Ailén', 22, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 17:56:35'),
(100, '50873455', 'SILVA GARCIA Luisana Narella', 22, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 17:45:34'),
(101, '50676054', 'TORRES Gonzalo Agustín', 22, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 17:57:58'),
(102, '50588286', 'TORRES Uma Aime', 22, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 17:45:34'),
(103, '50796894', 'VIZZOTTO SAEZ Giuliana Maribel', 22, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 17:45:34');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `quinto`
--

CREATE TABLE `quinto` (
  `id` int(11) NOT NULL,
  `documento` text NOT NULL,
  `nombre` text NOT NULL,
  `id_curso` int(11) NOT NULL,
  `modalidad` text NOT NULL,
  `saberes_cientifica` text NOT NULL,
  `saberes_sociales` text NOT NULL,
  `saberes_ingles` text NOT NULL,
  `saberes_matematica` text NOT NULL,
  `saberes_fisica` text NOT NULL,
  `saberes_artistica` text NOT NULL,
  `saberes_lengua` text NOT NULL,
  `saberes_biotecnologia` text NOT NULL,
  `saberes_ciencia` text NOT NULL,
  `saberes_tierra5` text NOT NULL,
  `saberes_historia` text NOT NULL,
  `saberes_pensamiento` text NOT NULL,
  `saberes_sociedad` text NOT NULL,
  `saberes_sociologia` text NOT NULL,
  `saberes_taller` text NOT NULL,
  `aprecia_cientifica` text NOT NULL,
  `aprecia_sociales` text NOT NULL,
  `aprecia_ingles` text NOT NULL,
  `aprecia_matematica` text NOT NULL,
  `aprecia_fisica` text NOT NULL,
  `aprecia_artistica` text NOT NULL,
  `aprecia_lengua` text NOT NULL,
  `aprecia_biotecnologia` text NOT NULL,
  `aprecia_ciencia` text NOT NULL,
  `aprecia_tierra5` text NOT NULL,
  `aprecia_historia` text NOT NULL,
  `aprecia_pensamiento` text NOT NULL,
  `aprecia_sociedad` text NOT NULL,
  `aprecia_sociologia` text NOT NULL,
  `aprecia_taller` text NOT NULL,
  `asistencia_cientifica` text NOT NULL,
  `asistencia_sociales` text NOT NULL,
  `asistencia_ingles` text NOT NULL,
  `asistencia_matematica` text NOT NULL,
  `asistencia_fisica` text NOT NULL,
  `asistencia_artistica` text NOT NULL,
  `asistencia_lengua` text NOT NULL,
  `asistencia_biotecnologia` text NOT NULL,
  `asistencia_ciencia` text NOT NULL,
  `asistencia_tierra5` text NOT NULL,
  `asistencia_historia` text NOT NULL,
  `asistencia_pensamiento` text NOT NULL,
  `asistencia_sociedad` text NOT NULL,
  `asistencia_sociologia` text NOT NULL,
  `asistencia_taller` text NOT NULL,
  `observa_cientifica` text NOT NULL,
  `observa_sociales` text NOT NULL,
  `observa_ingles` text NOT NULL,
  `observa_matematica` text NOT NULL,
  `observa_fisica` text NOT NULL,
  `observa_artistica` text NOT NULL,
  `observa_lengua` text NOT NULL,
  `observa_biotecnologia` text NOT NULL,
  `observa_ciencia` text NOT NULL,
  `observa_tierra5` text NOT NULL,
  `observa_historia` text NOT NULL,
  `observa_pensamiento` text NOT NULL,
  `observa_sociedad` text NOT NULL,
  `observa_sociologia` text NOT NULL,
  `observa_taller` text NOT NULL,
  `estado` int(11) NOT NULL DEFAULT 1,
  `periodo` text NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `quinto`
--

INSERT INTO `quinto` (`id`, `documento`, `nombre`, `id_curso`, `modalidad`, `saberes_cientifica`, `saberes_sociales`, `saberes_ingles`, `saberes_matematica`, `saberes_fisica`, `saberes_artistica`, `saberes_lengua`, `saberes_biotecnologia`, `saberes_ciencia`, `saberes_tierra5`, `saberes_historia`, `saberes_pensamiento`, `saberes_sociedad`, `saberes_sociologia`, `saberes_taller`, `aprecia_cientifica`, `aprecia_sociales`, `aprecia_ingles`, `aprecia_matematica`, `aprecia_fisica`, `aprecia_artistica`, `aprecia_lengua`, `aprecia_biotecnologia`, `aprecia_ciencia`, `aprecia_tierra5`, `aprecia_historia`, `aprecia_pensamiento`, `aprecia_sociedad`, `aprecia_sociologia`, `aprecia_taller`, `asistencia_cientifica`, `asistencia_sociales`, `asistencia_ingles`, `asistencia_matematica`, `asistencia_fisica`, `asistencia_artistica`, `asistencia_lengua`, `asistencia_biotecnologia`, `asistencia_ciencia`, `asistencia_tierra5`, `asistencia_historia`, `asistencia_pensamiento`, `asistencia_sociedad`, `asistencia_sociologia`, `asistencia_taller`, `observa_cientifica`, `observa_sociales`, `observa_ingles`, `observa_matematica`, `observa_fisica`, `observa_artistica`, `observa_lengua`, `observa_biotecnologia`, `observa_ciencia`, `observa_tierra5`, `observa_historia`, `observa_pensamiento`, `observa_sociedad`, `observa_sociologia`, `observa_taller`, `estado`, `periodo`, `id_usuario`, `fecha`) VALUES
(1, '46854556', 'BERNADETE BARROS Braian David', 11, 'Ciencias Naturales', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-03 12:20:21'),
(2, '47670708', 'FERNANDEZ Luciana Candela', 11, 'Ciencias Naturales', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-03 12:20:21'),
(3, '46983455', 'FUENTEALBA HUETE Ivanna Aixa Ain', 11, 'Ciencias Naturales', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-03 12:20:21'),
(4, '47670701', 'GANGAS Daira Abigail', 11, 'Ciencias Naturales', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-03 12:20:21'),
(5, '47720864', 'HUISCA Jazmin Macarena', 11, 'Ciencias Naturales', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-03 12:20:21'),
(6, '47670747', 'IVACACHI Ailin Agustina', 11, 'Ciencias Naturales', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-03 12:20:21'),
(7, '47913709', 'LEFIAN Ivana Milagros Soledad', 11, 'Ciencias Naturales', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-03 12:20:21'),
(8, '47913783', 'MARTICORENA Juan Pablo', 11, 'Ciencias Naturales', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-03 12:20:21'),
(9, '46796919', 'MARTINEZ Milagros Soledad Abigail', 11, 'Ciencias Naturales', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-03 12:20:21'),
(10, '47670757', 'MILLAQUEO Daira Iriel', 11, 'Ciencias Naturales', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-03 12:20:21'),
(11, '47596903', 'ORTEGA Milagros Verena', 11, 'Ciencias Naturales', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-03 12:20:21'),
(12, '45562426', 'PENEPIL Tomás Ariel', 11, 'Ciencias Naturales', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-03 12:28:21'),
(13, '47670710', 'PERALTA Franco Joaquin', 11, 'Ciencias Naturales', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-03 12:20:21'),
(14, '46983423', 'PEREYRA Nazareno Leonel', 11, 'Ciencias Naturales', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-03 12:20:21'),
(15, '47670707', 'ROSALES Maité Valentina', 11, 'Ciencias Naturales', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-03 12:29:38'),
(16, '47670733', 'RUZZI Martina Soledad', 11, 'Ciencias Naturales', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-03 12:20:21'),
(17, '48185191', 'SANHUEZA Luna Simonel', 11, 'Ciencias Naturales', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-03 12:20:21'),
(18, '47720833', 'TEJADA Alejo Daniel', 11, 'Ciencias Naturales', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-03 12:20:21'),
(19, '47472168', 'VALDEBENITO Valentina Ariana', 11, 'Ciencias Naturales', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-03 12:20:21'),
(20, '48013017', 'VALENZUELA ARENUCCI Agostina Abigail', 11, 'Ciencias Naturales', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-03 12:20:21'),
(21, '47590846', 'ALTAMIRANO BARROS Aldo Matias', 12, 'Ciencias Naturales', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-03 12:20:21'),
(22, '50209561', 'ARANGUEZ Agustina', 12, 'Ciencias Naturales', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-03 12:20:21'),
(23, '47913730', 'BENITEZ Sergio Emanuel', 12, 'Ciencias Naturales', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-03 12:20:21'),
(24, '47284099', 'BRABO Jimena Alilia', 12, 'Ciencias Naturales', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-03 12:20:21'),
(25, '47670765', 'CALCAGNO Mia Agostina', 12, 'Ciencias Naturales', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-03 12:20:21'),
(26, '47670745', 'CARRASCO MEDINA Sol Valentina', 12, 'Ciencias Naturales', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-03 12:20:21'),
(27, '94523308', 'CUELLAR ORTEGA Lisseth', 12, 'Ciencias Naturales', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-03 12:20:21'),
(28, '47244263', 'EPULEF Alex Javier', 12, 'Ciencias Naturales', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-03 12:20:21'),
(29, '47670751', 'ESPINOSA GARCIA Victoria', 12, 'Ciencias Naturales', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-03 12:20:21'),
(30, '47596911', 'FLORES Luciano Ariel', 12, 'Ciencias Naturales', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-03 12:20:21'),
(31, '47720850', 'GARCIA Camila Florencia', 12, 'Ciencias Naturales', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-03 12:20:21'),
(32, '46482707', 'GARCIA Catalina', 12, 'Ciencias Naturales', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-03 12:20:21'),
(33, '47913711', 'GRAMAJO Alan Nahuel', 12, 'Ciencias Naturales', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-03 12:20:21'),
(34, '47720863', 'HUISCA Geraldine Brisa', 12, 'Ciencias Naturales', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-03 12:20:21'),
(35, '47670723', 'LUCERO ORMEÑO Alexandra Belén', 12, 'Ciencias Naturales', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-03 12:27:49'),
(36, '47374924', 'MAMANI JARA Adelaida Arminda', 12, 'Ciencias Naturales', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-03 12:20:21'),
(37, '47913774', 'MARTINEZ Franco Dario', 12, 'Ciencias Naturales', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-03 12:20:21'),
(38, '47913743', 'MEDINA Gastón Ezequiel', 12, 'Ciencias Naturales', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-03 12:28:05'),
(39, '47374938', 'MEDINA Luz Valentina', 12, 'Ciencias Naturales', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-03 12:20:21'),
(40, '47282922', 'MELIHUAL Gisella Muriel', 12, 'Ciencias Naturales', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-03 12:20:21'),
(41, '47670714', 'MORENO Anette Solange', 12, 'Ciencias Naturales', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-03 12:20:21'),
(42, '47671779', 'PAILOS Nahiara Darlin', 12, 'Ciencias Naturales', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-03 12:20:21'),
(43, '47720849', 'REYES Lautaro Benjamin', 12, 'Ciencias Naturales', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-03 12:20:21'),
(44, '47670773', 'ROZAS Santiago Nicolas', 12, 'Ciencias Naturales', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-03 12:20:21'),
(45, '46592495', 'SULLCA AIZA Ronald', 12, 'Ciencias Naturales', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-03 12:20:21'),
(46, '47720854', 'VIDAL Valentina Giselle', 12, 'Ciencias Naturales', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-03 12:20:21'),
(47, '48013030', 'ALBORNOZ SEIJAS Angel Gabriel', 16, 'Educación', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-03 12:23:53'),
(48, '47306577', 'ASTIZ Belen', 16, 'Educación', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-03 12:23:53'),
(49, '48013034', 'AVILA Morena Antonella', 16, 'Educación', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-03 12:23:53'),
(50, '47913791', 'BURGOS Alejandro Vladimir', 16, 'Educación', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-03 12:23:53'),
(51, '47913741', 'FIERRO Franco Benjamín', 16, 'Educación', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-03 12:29:51'),
(52, '48660043', 'FLORES CHOQUE Evelyn Noemi', 16, 'Educación', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-03 12:23:53'),
(53, '47720997', 'FUENTEALBA GONZALEZ Daiara Alejandra', 16, 'Educación', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-03 12:23:53'),
(54, '46796899', 'FUENTEALBA Valentina', 16, 'Educación', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-03 12:23:53'),
(55, '47472151', 'GARCIA Esmeralda Gisela', 16, 'Educación', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-03 12:23:53'),
(56, '47284042', 'GOMEZ Shaiel Agostina', 16, 'Educación', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-03 12:23:53'),
(57, '47180596', 'IAGATTI Máximo Martin', 16, 'Educación', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-03 12:30:05'),
(58, '46070333', 'INOSTROZA GONZALEZ Samirah Abigail', 16, 'Educación', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-03 12:23:53'),
(59, '47369797', 'IRRAZABAL Briana Rocio', 16, 'Educación', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-03 12:23:53'),
(60, '47472179', 'LACA ESPIRITU Jose Luis', 16, 'Educación', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-03 12:23:53'),
(61, '7179586', 'MAMANI BEJARANO Luis Sebastian', 16, 'Educación', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-03 12:23:53'),
(62, '47720868', 'MAZA MARQUEZ Camila Angelica', 16, 'Educación', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-03 12:23:53'),
(63, '47472185', 'MERINO Elda Yenifer', 16, 'Educación', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-03 12:23:53'),
(64, '48123464', 'PARRA Maitena Agostina', 16, 'Educación', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-03 12:23:53'),
(65, '47472164', 'REYES Diego Tomas', 16, 'Educación', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-03 12:23:53'),
(66, '47374962', 'SOLIS Milagros Lilen', 16, 'Educación', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-03 12:23:53'),
(67, '48123496', 'URIBE Thiago Gabriel', 16, 'Educación', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-03 12:23:53'),
(68, '47670729', 'VEGA Axel Emiliano', 16, 'Educación', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-03 12:23:53'),
(69, '47670715', 'VILLAGRAN José Ignacio', 16, 'Educación', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-03 12:31:22'),
(70, '48123476', 'VILLARINO Valeria Alexandra', 16, 'Educación', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-03 12:23:53'),
(71, '48013004', 'VISCARRA Malén Azul', 16, 'Educación', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-03 12:31:45'),
(72, '47284045', 'ALBORNOZ Milagros Fiorella', 17, 'Educación', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-03 12:23:53'),
(73, '47374915', 'BRIZUELA ETCHEGARAY Candelaria Florencia', 17, 'Educación', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-03 12:23:53'),
(74, '45797577', 'CARILEO PACHECO Juan Andres', 17, 'Educación', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-03 12:23:53'),
(75, '47472178', 'CAYUQUEO Santiago Gabriel', 17, 'Educación', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-03 12:23:53'),
(76, '47374985', 'CHANDIA VALLEJOS Facundo Manuel', 17, 'Educación', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-03 12:23:53'),
(77, '47915005', 'DIAZ Luz Oriana', 17, 'Educación', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-03 12:23:53'),
(78, '47596944', 'ESPARZA SALAZAR Abigail Gloria', 17, 'Educación', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-03 12:23:53'),
(79, '47670771', 'FLORES Martina', 17, 'Educación', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-03 12:23:53'),
(80, '95092906', 'GARCIA AIZA Daniela', 17, 'Educación', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-03 12:23:53'),
(81, '46983476', 'HERRERA Marcelo Ezequiel', 17, 'Educación', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-03 12:23:53'),
(82, '47049138', 'JARA Milagros Alejandra', 17, 'Educación', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-03 12:23:53'),
(83, '47720999', 'MARTINEZ Alexandro Matias', 17, 'Educación', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-03 12:23:53'),
(84, '46931047', 'MILLANAO Diego Andres', 17, 'Educación', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-03 12:23:53'),
(85, '45377379', 'MONTENEGRO Nicolás Iván', 17, 'Educación', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-03 12:30:33'),
(86, '47913765', 'MORALES CAMPOS Lautaro Ezequiel', 17, 'Educación', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-03 12:23:53'),
(87, '47596937', 'PEREZ Suyai Alfonsina', 17, 'Educación', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-03 12:23:53'),
(88, '47282982', 'PRADO Matías Facundo', 17, 'Educación', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-03 12:30:48'),
(89, '48732094', 'QUIRILAO Jimena Priscila', 17, 'Educación', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-03 12:23:53'),
(90, '46070367', 'QUIRILAO RAMIREZ Melanie Anahí', 17, 'Educación', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-03 12:24:50'),
(91, '47472163', 'REYES Lucas Darío', 17, 'Educación', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-03 12:31:05'),
(92, '47374963', 'RUBIO Bautista Alejandro', 17, 'Educación', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-03 12:23:53'),
(93, '46983435', 'SANDOVAL Gonzalo Ezequiel', 17, 'Educación', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-03 12:23:53'),
(94, '47670791', 'SOLIS Oriana Paola', 17, 'Educación', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-03 12:23:53'),
(95, '48118570', 'TORRES Lourdes Guadalupe', 17, 'Educación', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-03 12:23:53'),
(96, '94717191', 'VIDAURRE CALDERON Saida', 17, 'Educación', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-03 12:23:53'),
(97, '47374997', 'VILLAVICENCIO CABALLERO Leonel Yamil', 17, 'Educación', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-04-03 12:23:53');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `segundo`
--

CREATE TABLE `segundo` (
  `id` int(11) NOT NULL,
  `documento` text NOT NULL,
  `nombre` text NOT NULL,
  `id_curso` int(11) NOT NULL,
  `saberes_cientifica` text NOT NULL,
  `saberes_sociales` text NOT NULL,
  `saberes_ingles` text NOT NULL,
  `saberes_matematica` text NOT NULL,
  `saberes_fisica` text NOT NULL,
  `saberes_artistica` text NOT NULL,
  `saberes_lengua` text NOT NULL,
  `aprecia_cientifica` text NOT NULL,
  `aprecia_sociales` text NOT NULL,
  `aprecia_ingles` text NOT NULL,
  `aprecia_matematica` text NOT NULL,
  `aprecia_fisica` text NOT NULL,
  `aprecia_artistica` text NOT NULL,
  `aprecia_lengua` text NOT NULL,
  `asistencia_cientifica` text NOT NULL,
  `asistencia_sociales` text NOT NULL,
  `asistencia_ingles` text NOT NULL,
  `asistencia_matematica` text NOT NULL,
  `asistencia_fisica` text NOT NULL,
  `asistencia_artistica` text NOT NULL,
  `asistencia_lengua` text NOT NULL,
  `observa_cientifica` text NOT NULL,
  `observa_sociales` text NOT NULL,
  `observa_ingles` text NOT NULL,
  `observa_matematica` text NOT NULL,
  `observa_fisica` text NOT NULL,
  `observa_artistica` text NOT NULL,
  `observa_lengua` text NOT NULL,
  `estado` int(11) NOT NULL DEFAULT 1,
  `periodo` text NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `segundo`
--

INSERT INTO `segundo` (`id`, `documento`, `nombre`, `id_curso`, `saberes_cientifica`, `saberes_sociales`, `saberes_ingles`, `saberes_matematica`, `saberes_fisica`, `saberes_artistica`, `saberes_lengua`, `aprecia_cientifica`, `aprecia_sociales`, `aprecia_ingles`, `aprecia_matematica`, `aprecia_fisica`, `aprecia_artistica`, `aprecia_lengua`, `asistencia_cientifica`, `asistencia_sociales`, `asistencia_ingles`, `asistencia_matematica`, `asistencia_fisica`, `asistencia_artistica`, `asistencia_lengua`, `observa_cientifica`, `observa_sociales`, `observa_ingles`, `observa_matematica`, `observa_fisica`, `observa_artistica`, `observa_lengua`, `estado`, `periodo`, `id_usuario`, `fecha`) VALUES
(1, '49661492', ' DE OLIVERA Isaura Soledad', 3, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 20:21:09'),
(2, '49844302', 'CABEZAS CAISINA Judith Eliana', 3, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 20:21:09'),
(3, '49950234', 'CACEREZ Eluney Tiziana', 3, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 20:21:09'),
(4, '50023748', 'CAYUPE Tobías Agustín', 3, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 20:22:23'),
(5, '49651213', 'DIAZ Lutmila Nicole ', 3, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 20:21:09'),
(6, '50271448', 'DONOSA Mia Nahiara', 3, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 20:21:09'),
(7, '49800920', 'FASANO Ignacio Andrés', 3, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 20:23:06'),
(8, '49574269', 'FAUNDEZ Lautaro Emiliano', 3, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 20:21:09'),
(9, '49763525', 'FERNANDEZ NINAJA Luciano Elvis William', 3, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 20:21:09'),
(10, '50209855', 'GALVAN José Luis', 3, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 21:38:55'),
(11, '49950212', 'GONZALEZ Sofía Aldana', 3, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 21:39:07'),
(12, '49925172', 'GUZMAN Abigail  Melany', 3, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 20:21:09'),
(13, '50271431', 'JARA Luciana Estefanía', 3, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 21:39:21'),
(14, '50504720', 'JARA Milagros Aylén', 3, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 21:39:48'),
(15, '50117180', 'KOVALOV Abigail  Ana  Milagros', 3, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 20:21:09'),
(16, '50370844', 'LASTRA Juan Cruz', 3, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 20:21:09'),
(17, '48866566', 'LESCANO Celena Yasmín', 3, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 21:40:18'),
(18, '50117150', 'LLANQUINAO Lara Nicol Andrea', 3, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 20:21:09'),
(19, '50117187', 'MAZZINA Iñaki Julian', 3, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 21:40:30'),
(20, '49574261', 'MONJES RAIQUIL Andrea Agustina', 3, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 20:21:09'),
(21, '50505919', 'MUÑOZ Tatiana Nahir', 3, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 21:40:45'),
(22, '50271465', 'POBLETE MONTIVERO Imanol Bautista', 3, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 20:21:09'),
(23, '49925154', 'SAAVEDRA TIZNADO Julieta', 3, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 20:21:09'),
(24, '49925158', 'SALAZAR Ulises Joaquin', 3, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 20:21:09'),
(25, '49466404', 'SAMUEL Matías Ezequiel', 3, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 21:42:08'),
(26, '50259830', 'SAN MARTIN COCHE Morena Damari', 3, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 20:21:09'),
(27, '49925155', 'SANDOVAL MELO Stefany Marianella', 3, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 20:21:09'),
(28, '49399335', 'SANDOVAL Nahir Agustina', 3, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 20:21:09'),
(29, '50166256', 'URRUTIA  AVILEZ Valentina Nicole', 3, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 20:21:09'),
(30, '48693035', 'VERA Lautaro Agustin', 3, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 20:21:09'),
(31, '49844305', 'YAÑEZ  COFRE Luciano  Ezequiel', 3, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 21:43:51'),
(32, '49950243', 'AGUAYO MEDEL Valentina Yasmín', 19, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 21:44:47'),
(33, '49925157', 'BILBAO Nohar Maximiano', 19, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 20:21:09'),
(34, '48531316', 'BRABO ALABI Madelein Maciela', 19, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 20:21:09'),
(35, '50259889', 'CAÑUMIR Santiago Bautista', 19, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 21:45:04'),
(36, '50209551', 'CARRASCO FAUNDEZ Zahira Gabriela', 19, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 20:21:09'),
(37, '48915367', 'CARRILON Micaías Thaiel', 19, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 21:45:27'),
(38, '49925159', 'CARRIZO FIGUEROA Luka Mateo', 19, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 20:21:09'),
(39, '51362076', 'CARRIZO Francisco Armando', 19, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 20:21:09'),
(40, '50166254', 'CONTRERAS Morena Solange', 19, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 20:21:09'),
(41, '49844799', 'CUELLAR ORTEGA Marlene Analis', 19, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 20:21:09'),
(42, '49950221', 'DOMINGUEZ Zoe Jazmin', 19, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 20:21:09'),
(43, '49950237', 'EBNER SANTILLAN Brisa Abigail', 19, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 20:21:09'),
(44, '50025109', 'ESCOBAR Rocío  Abigail', 19, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 21:46:00'),
(45, '49844777', 'FILET Lautaro Nahuel', 19, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 20:21:09'),
(46, '49399309', 'FUENTEALBA Gabriel Otoniel', 19, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 20:21:09'),
(47, '50271430', 'GARCIA Aixa Dasha', 19, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 20:21:09'),
(48, '49844789', 'GARCIA Diego Gabriel', 19, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 20:21:09'),
(49, '50271455', 'GUTIERREZ Mía Carolina', 19, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 21:49:30'),
(50, '49800155', 'LABRIN INOSTROZA Zoé Nicole', 19, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 21:50:51'),
(51, '49714549', 'LOPEZ CATAN Walter Andrés', 19, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 21:52:02'),
(52, '49279222', 'MENDIETA  Bautista Yoel', 19, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 20:21:09'),
(53, '49800758', 'MERA Diego Joaquin', 19, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 20:21:09'),
(54, '49099479', 'MIRANDA Lautaro Ezequiel', 19, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 20:21:09'),
(55, '50271466', 'PEREIRA VEDIA Carlos Newen', 19, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 20:21:09'),
(56, '49800756', 'PEREZ Lucas Emanuel', 19, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 20:21:09'),
(57, '50023739', 'PIUTRIN QUINTANA Bairon Natanael', 19, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 20:21:09'),
(58, '49844797', 'PURRAN Thiago Jos?;19', 19, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 20:21:09'),
(59, '50025134', 'ROA ELIAS Dylan  Emanuel', 19, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 20:21:09'),
(60, '49800171', 'RUIZ QUINTANA Roc?o Delia', 19, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 20:21:09'),
(61, '50259932', 'SANCHEZ Mateo Emiliano', 19, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 20:21:09'),
(62, '49800742', 'VALENZUELA Valentina  Selena', 19, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 20:21:09'),
(63, '50466130', 'ZOLORZA Nahiara Abigail', 19, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 20:21:09'),
(64, '50504714', 'AVILES Dayla Jazmín', 5, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 20:22:43'),
(65, '50271428', 'BRABO ALABI Maria Elena', 5, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 20:21:09'),
(66, '50271432', 'CABEZAS Camila Ivon', 5, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 20:21:09'),
(67, '48732556', 'COTAL Matias Sebastián', 5, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 20:22:53'),
(68, '50432289', 'ESPARZA SALAZAR Candela Eluney', 5, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 20:21:09'),
(69, '50209852', 'ESPINOSA Igor Zair', 5, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 20:21:09'),
(70, '50166240', 'FLORES MARTINEZ Gabriel Cesar', 5, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 20:21:09'),
(71, '49800188', 'FRIAS Tamara Melina', 5, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 20:21:09'),
(72, '50023706', 'FUENTEALBA María Paz', 5, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 20:23:21'),
(73, '49800200', 'GACITUA Emma Camila', 5, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 20:21:09'),
(74, '94886893', 'GAMBOA RAMO Alex Alfredo', 5, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 20:21:09'),
(75, '50166249', 'JARA Giovanna Ivonne', 5, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 20:21:09'),
(76, '51238573', 'KACHU Mateo Daniel', 5, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 20:21:09'),
(77, '50117164', 'LEFIAN Mateo Nahuel', 5, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 20:21:09'),
(78, '49800184', 'LLANQUILEO Yisel Araceli', 5, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 20:21:09'),
(79, '50023749', 'LOPEZ PEREIRA Candela', 5, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 20:21:09'),
(80, '50166234', 'MARILEO Franco Agustin', 5, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 20:21:09'),
(81, '50432252', 'MARIN FUNARI Brunella', 5, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 20:21:09'),
(82, '50271429', 'MILLANAO Rodrigo Ezequiel Jose', 5, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 20:21:09'),
(83, '50209558', 'MONTENEGRO Madeleine Tatiana', 5, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 20:21:09'),
(84, '49925186', 'PEREZ Aarón', 5, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 21:40:56'),
(85, '50117174', 'QUINTANA Mía Milagros ', 5, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 21:41:09'),
(86, '49778134', 'QUIROGA Joaquin Leonel', 5, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 20:21:09'),
(87, '49925780', 'RECHONI Giovanna Nicole', 5, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 20:21:09'),
(88, '49800769', 'REUQUE CARO Ivana  Malén', 5, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 21:41:57'),
(89, '49800187', 'SALOMON PANA Zaira Josiana', 5, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 20:21:09'),
(90, '52537140', 'SANDOVAL DURAND Lautaro Emanuel', 5, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 20:21:09'),
(91, '50166242', 'TRONCOSO Nahiara Jazmín', 5, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 21:42:21'),
(92, '50023701', 'ALEGRE Lucia Melania', 6, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 20:21:09'),
(93, '50271459', 'ALONSO CHEPU Amaia Noel', 6, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 20:21:09'),
(94, '50259839', 'BELMAR Mia Abril', 6, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 20:21:09'),
(95, '49925180', 'BUSTAMANTE Ibrain Alberto', 6, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 20:21:09'),
(96, '49950210', 'CATALA SANHUEZA Francisco Benjamín', 6, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 21:45:46'),
(97, '50432267', 'CAYUQUEO Ailin Wanda', 6, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 20:21:09'),
(98, '49950240', 'ESPINDOLA Benjamín Alejandro', 6, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 21:46:17'),
(99, '50209860', 'ESPINDOLA Mateo Joaquin', 6, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 20:21:09'),
(100, '95582605', 'ESTRADA CABEZAS Dania', 6, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 20:21:09'),
(101, '49800760', 'FIGUEROA Candela Jazmín', 6, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 21:46:29'),
(102, '50166250', 'GARCÉS Eduardo Alejandro', 6, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 21:46:55'),
(103, '50271427', 'HUENUMILLA Camila Nahiara', 6, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 20:21:09'),
(104, '49465072', 'IBAÑEZ Melody Shakira', 6, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 21:49:41'),
(105, '50117182', 'JOSÉ Luján', 6, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 21:50:31'),
(106, '50432297', 'LAGOS Marcos Julian', 6, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 20:21:09'),
(107, '50271437', 'LLAULEN Camila Milagros', 6, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 20:21:09'),
(108, '50505917', 'LLAUPE Leandro Adrián', 6, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 21:51:51'),
(109, '50371452', 'LOPEZ Sofia Jazmin', 6, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 20:21:09'),
(110, '50368881', 'MU?OZ ORTIZ Kiara Mailen', 6, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 20:21:09'),
(111, '95105645', 'ORELLANA ACHU Jhonny', 6, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 20:21:09'),
(112, '52169727', 'PAINEMILLA Maicol Leonel', 6, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 20:21:09'),
(113, '50432281', 'PARRA Julieta Tahiara', 6, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 20:21:09'),
(114, '49925181', 'RAILEN Alejandra Amira Lujan', 6, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 20:21:09'),
(115, '50117171', 'RAMIREZ Angel Miqueas', 6, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 20:21:09'),
(116, '49800177', 'RIQUELMEZ Gustavo', 6, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 20:21:09'),
(117, '48660035', 'RIVAS SAAVEDRA Benjamin Tiago', 6, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 20:21:09'),
(118, '50271463', 'RIVAS Valent?n Andr?s ', 6, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 20:21:09'),
(119, '49844317', 'SANTILLAN GARRIDO El?as Ariel', 6, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 20:21:09'),
(120, '50023721', 'SOLIS Oriana Daniela', 6, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 20:21:09'),
(121, '50271452', 'SPRECHER CARDENAS Catalina', 6, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 20:21:09'),
(122, '50117169', 'SULLCA AIZA Mariluz', 6, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 20:21:09'),
(123, '50023742', 'VENEGAS Pilar Dannae', 6, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 20:21:09'),
(124, '49704277', 'ANTILAF Jazmín Agostina', 18, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 21:47:17'),
(125, '50001035', 'ARANEDA Benjamin Tomás', 18, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 21:47:30'),
(126, '50259860', 'CANDIA Naomi Yexalem', 18, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 20:21:09'),
(127, '49613787', 'CARDOZO Myriam Antonella Jazmín', 18, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 21:48:14'),
(128, '48390905', 'CAYUQUEO Maximiliano Raúl Alejo', 18, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 21:48:27'),
(129, '48947374', 'CONTRERAS Agustina Paola', 18, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 20:21:09'),
(130, '50061297', 'FUNES Santiago David', 18, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 20:21:09'),
(131, '49574266', 'GOLOB Jazmin Eluney', 18, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 20:21:09'),
(132, '50209851', 'HENRIQUEZ RIOS Juanita Daiana', 18, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 20:21:09'),
(133, '50023734', 'HERRERA Gianella Agustina', 18, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 20:21:09'),
(134, '50209567', 'INOSTROZA SAN MARTIN Daniel Alejandro', 18, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 20:21:09'),
(135, '50023708', 'IRRAZABAL Aldana Magalí', 18, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 21:50:02'),
(136, '50023729', 'JARA GUTIERREZ Zaira Andrea', 18, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 20:21:09'),
(137, '50271443', 'LEIVA Tiziana  Angelina', 18, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 20:21:09'),
(138, '49950231', 'LONCÓN Zaira  Ruth', 18, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 21:52:26'),
(139, '49465070', 'LUCERO Bautista Lionel', 18, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 20:21:09'),
(140, '50117181', 'MARQUEZ ETCHEGARAY Julieta  Celeste', 18, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 20:21:09'),
(141, '49800768', 'MERLO Sofía  Luciana', 18, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 21:52:39'),
(142, '49574254', 'MILLAQUEO Santiago', 18, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 20:21:09'),
(143, '50024171', 'MIRANDA Rocio Milagros', 18, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 20:21:09'),
(144, '50271462', 'MOSQUEZ Jazmin Luz Maria', 18, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 20:21:09'),
(145, '50271433', 'NI?O Hugo Valentin', 18, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 20:21:09'),
(146, '50432268', 'NOVOA Benjam?n Demian', 18, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 20:21:09'),
(147, '50432269', 'OSE Ernesto Alejandro', 18, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 20:21:09'),
(148, '50023732', 'QUINTANA JARAMILLO Mia Valentina', 18, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 20:21:09'),
(149, '50050928', 'RAPIMAN Valentina Siboney', 18, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 20:21:09'),
(150, '50271439', 'SANDOVAL Candela Abril', 18, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 20:21:09'),
(151, '49925165', 'SANDOVAL Giuliana  Agostina', 18, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 20:21:09'),
(152, '50271460', 'TRUJILLO Caterine Cynthia', 18, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-22 20:21:09');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tercero`
--

CREATE TABLE `tercero` (
  `id` int(11) NOT NULL,
  `documento` text NOT NULL,
  `nombre` text NOT NULL,
  `id_curso` int(11) NOT NULL,
  `modalidad` text NOT NULL,
  `saberes_cientifica` text NOT NULL,
  `saberes_sociales` text NOT NULL,
  `saberes_ingles` text NOT NULL,
  `saberes_matematica` text NOT NULL,
  `saberes_fisica` text NOT NULL,
  `saberes_artistica` text NOT NULL,
  `saberes_lengua` text NOT NULL,
  `saberes_quimica` text NOT NULL,
  `saberes_seminario3` text NOT NULL,
  `aprecia_cientifica` text NOT NULL,
  `aprecia_sociales` text NOT NULL,
  `aprecia_ingles` text NOT NULL,
  `aprecia_matematica` text NOT NULL,
  `aprecia_fisica` text NOT NULL,
  `aprecia_artistica` text NOT NULL,
  `aprecia_lengua` text NOT NULL,
  `aprecia_quimica` text NOT NULL,
  `aprecia_seminario3` text NOT NULL,
  `asistencia_cientifica` text NOT NULL,
  `asistencia_sociales` text NOT NULL,
  `asistencia_ingles` text NOT NULL,
  `asistencia_matematica` text NOT NULL,
  `asistencia_fisica` text NOT NULL,
  `asistencia_artistica` text NOT NULL,
  `asistencia_lengua` text NOT NULL,
  `asistencia_quimica` text NOT NULL,
  `asistencia_seminario3` text NOT NULL,
  `observa_cientifica` text NOT NULL,
  `observa_sociales` text NOT NULL,
  `observa_ingles` text NOT NULL,
  `observa_matematica` text NOT NULL,
  `observa_fisica` text NOT NULL,
  `observa_artistica` text NOT NULL,
  `observa_lengua` text NOT NULL,
  `observa_quimica` text NOT NULL,
  `observa_seminario3` text NOT NULL,
  `estado` int(11) NOT NULL DEFAULT 1,
  `periodo` text NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tercero`
--

INSERT INTO `tercero` (`id`, `documento`, `nombre`, `id_curso`, `modalidad`, `saberes_cientifica`, `saberes_sociales`, `saberes_ingles`, `saberes_matematica`, `saberes_fisica`, `saberes_artistica`, `saberes_lengua`, `saberes_quimica`, `saberes_seminario3`, `aprecia_cientifica`, `aprecia_sociales`, `aprecia_ingles`, `aprecia_matematica`, `aprecia_fisica`, `aprecia_artistica`, `aprecia_lengua`, `aprecia_quimica`, `aprecia_seminario3`, `asistencia_cientifica`, `asistencia_sociales`, `asistencia_ingles`, `asistencia_matematica`, `asistencia_fisica`, `asistencia_artistica`, `asistencia_lengua`, `asistencia_quimica`, `asistencia_seminario3`, `observa_cientifica`, `observa_sociales`, `observa_ingles`, `observa_matematica`, `observa_fisica`, `observa_artistica`, `observa_lengua`, `observa_quimica`, `observa_seminario3`, `estado`, `periodo`, `id_usuario`, `fecha`) VALUES
(1, '48732557', 'ANAYA CASTILLO Alexis Gabriel', 7, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Química Ambiental - Tercero ciclo Orientado                  ', 'Seminario Tercero - Turno tarde                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-26 22:46:02'),
(2, '49339540', 'AYALA Guillermo Agustín', 7, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Química Ambiental - Tercero ciclo Orientado                  ', 'Seminario Tercero - Turno tarde                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-26 22:46:02'),
(3, '49030818', 'BARRA Diego Sahid', 7, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Química Ambiental - Tercero ciclo Orientado                  ', 'Seminario Tercero - Turno tarde                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-26 22:46:02'),
(4, '49339539', 'BONVENTRE Jonathan Manuel', 7, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Química Ambiental - Tercero ciclo Orientado                  ', 'Seminario Tercero - Turno tarde                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-26 22:46:02'),
(5, '48392151', 'CARRIZO Ignacio Tomas', 7, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Química Ambiental - Tercero ciclo Orientado                  ', 'Seminario Tercero - Turno tarde                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-26 22:46:02'),
(6, '49466436', 'GONZALEZ ASTRADA Benjamin Bautista', 7, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Química Ambiental - Tercero ciclo Orientado                  ', 'Seminario Tercero - Turno tarde                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-26 22:46:02'),
(7, '48947387', 'GUERRA Uriel Franco', 7, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Química Ambiental - Tercero ciclo Orientado                  ', 'Seminario Tercero - Turno tarde                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-26 22:46:02'),
(8, '49466396', 'GUTIERREZ PEREZ Joaquín Emiliano', 7, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Química Ambiental - Tercero ciclo Orientado                  ', 'Seminario Tercero - Turno tarde                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-26 22:46:02'),
(9, '49466251', 'LARA Nazareno Daniel', 7, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Química Ambiental - Tercero ciclo Orientado                  ', 'Seminario Tercero - Turno tarde                  ', '', '', '', '', '', '', '', 'Se Apropió de los Saberes', '', '', '', '', '', '', '', '', '100', '', '', '', '', '', '', '', '', 'Muy Bien', '', 1, '01/2024', 8, '2024-03-26 22:46:02'),
(10, '49031407', 'MEDEL Nahiara Génesis', 7, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Química Ambiental - Tercero ciclo Orientado                  ', 'Seminario Tercero - Turno tarde                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-26 22:46:02'),
(11, '49465077', 'MUÑOZ Benjamín Nehuen', 7, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Química Ambiental - Tercero ciclo Orientado                  ', 'Seminario Tercero - Turno tarde                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-26 22:46:02'),
(12, '49399325', 'PAINEMIL LAGOS  Kyhara Ailen', 7, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Química Ambiental - Tercero ciclo Orientado                  ', 'Seminario Tercero - Turno tarde                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-26 22:46:02'),
(13, '49466406', 'PARRA Axel David', 7, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Química Ambiental - Tercero ciclo Orientado                  ', 'Seminario Tercero - Turno tarde                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-26 22:46:02'),
(14, '48251332', 'PARRA Santiago  Emanuel', 7, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Química Ambiental - Tercero ciclo Orientado                  ', 'Seminario Tercero - Turno tarde                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-26 22:46:02'),
(15, '48543062', 'PEREYRA ACU?A Victoria Abril', 7, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Química Ambiental - Tercero ciclo Orientado                  ', 'Seminario Tercero - Turno tarde                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-26 22:46:02'),
(16, '48318616', 'PINO ROJAS Dilan Alejandro', 7, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Química Ambiental - Tercero ciclo Orientado                  ', 'Seminario Tercero - Turno tarde                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-26 22:46:02'),
(17, '49030825', 'PUELPAN  Sheila Esmeralda', 7, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Química Ambiental - Tercero ciclo Orientado                  ', 'Seminario Tercero - Turno tarde                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-26 22:46:02'),
(18, '49465058', 'RAMOS Geronimo Lionel', 7, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Química Ambiental - Tercero ciclo Orientado                  ', 'Seminario Tercero - Turno tarde                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-26 22:46:02'),
(19, '49574245', 'RIOS Saira Oriana', 7, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Química Ambiental - Tercero ciclo Orientado                  ', 'Seminario Tercero - Turno tarde                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-26 22:46:02'),
(20, '49465087', 'SANDOVAL LEAL Jazmin Nahiara', 7, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Química Ambiental - Tercero ciclo Orientado                  ', 'Seminario Tercero - Turno tarde                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-26 22:46:02'),
(21, '49465086', 'SANDOVAL LEAL Tatiana Agustina', 7, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Química Ambiental - Tercero ciclo Orientado                  ', 'Seminario Tercero - Turno tarde                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-26 22:46:02'),
(22, '49399331', 'SEGUEL Julieta Magdalena', 7, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Química Ambiental - Tercero ciclo Orientado                  ', 'Seminario Tercero - Turno tarde                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-26 22:46:02'),
(23, '50117159', 'SOLIS MONJES  Jeremi?s Andres', 7, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Química Ambiental - Tercero ciclo Orientado                  ', 'Seminario Tercero - Turno tarde                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-26 22:46:02'),
(24, '49030812', 'SUAREZ Santiago Joaqu?n Uriel', 7, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Química Ambiental - Tercero ciclo Orientado                  ', 'Seminario Tercero - Turno tarde                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-26 22:46:02'),
(25, '49340010', 'ULLUA Joaquin Valentino', 7, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Química Ambiental - Tercero ciclo Orientado                  ', 'Seminario Tercero - Turno tarde                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-26 22:46:02'),
(26, '49029155', 'VALLEJOS Alma Ludmilen', 7, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Química Ambiental - Tercero ciclo Orientado                  ', 'Seminario Tercero - Turno tarde                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-26 22:46:02'),
(27, '49030784', 'ARAVENA Yesica Patricia Yanet', 8, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Química Ambiental - Tercero ciclo Orientado                  ', 'Seminario Tercero - Turno tarde                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-26 22:46:02'),
(28, '48947388', 'CABRERA Antonella Giuliana', 8, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Química Ambiental - Tercero ciclo Orientado                  ', 'Seminario Tercero - Turno tarde                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-26 22:46:02'),
(29, '48392135', 'CONTRERAS Alan Ariel', 8, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Química Ambiental - Tercero ciclo Orientado                  ', 'Seminario Tercero - Turno tarde                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-26 22:46:02'),
(30, '49465067', 'DIOMEDI Giuliano', 8, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Química Ambiental - Tercero ciclo Orientado                  ', 'Seminario Tercero - Turno tarde                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-26 22:46:02'),
(31, '48392132', 'DUMINAO VILLARINO Gisel Valeria', 8, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Química Ambiental - Tercero ciclo Orientado                  ', 'Seminario Tercero - Turno tarde                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-26 22:46:02'),
(32, '49029706', 'GALLEGO Aldana Noemi', 8, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Química Ambiental - Tercero ciclo Orientado                  ', 'Seminario Tercero - Turno tarde                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-26 22:46:02'),
(33, '49030356', 'GONZALEZ Morena Del Cielo', 8, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Química Ambiental - Tercero ciclo Orientado                  ', 'Seminario Tercero - Turno tarde                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-26 22:46:02'),
(34, '49029703', 'JARA Ailen Celeste', 8, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Química Ambiental - Tercero ciclo Orientado                  ', 'Seminario Tercero - Turno tarde                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-26 22:46:02'),
(35, '49399330', 'JARA PORRINI Ittay Horacio', 8, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Química Ambiental - Tercero ciclo Orientado                  ', 'Seminario Tercero - Turno tarde                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-26 22:46:02'),
(36, '49217536', 'LAGOS Camila Valentina', 8, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Química Ambiental - Tercero ciclo Orientado                  ', 'Seminario Tercero - Turno tarde                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-26 22:46:02'),
(37, '49279215', 'LOBOS Siomara Naomí', 8, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Química Ambiental - Tercero ciclo Orientado                  ', 'Seminario Tercero - Turno tarde                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-26 22:46:02'),
(38, '49217503', 'MARTINEZ Thomas Aarón', 8, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Química Ambiental - Tercero ciclo Orientado                  ', 'Seminario Tercero - Turno tarde                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-26 22:46:02'),
(39, '48866564', 'MAYA Gabriel Alejandro', 8, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Química Ambiental - Tercero ciclo Orientado                  ', 'Seminario Tercero - Turno tarde                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-26 22:46:02'),
(40, '49030809', 'MEDINA Thomás Nahuel', 8, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Química Ambiental - Tercero ciclo Orientado                  ', 'Seminario Tercero - Turno tarde                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-26 22:46:02'),
(41, '49466410', 'MELLA Sofía Victoria', 8, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Química Ambiental - Tercero ciclo Orientado                  ', 'Seminario Tercero - Turno tarde                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-26 22:46:02'),
(42, '49340406', 'MENDEZ Gabriela Luzmila Abigail', 8, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Química Ambiental - Tercero ciclo Orientado                  ', 'Seminario Tercero - Turno tarde                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-26 22:46:02'),
(43, '49950207', 'PEREYRA Loana Candela Vittoria', 8, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Química Ambiental - Tercero ciclo Orientado                  ', 'Seminario Tercero - Turno tarde                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-26 22:46:02'),
(44, '49340014', 'QUINTANA Keila Xiomara', 8, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Química Ambiental - Tercero ciclo Orientado                  ', 'Seminario Tercero - Turno tarde                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-26 22:46:02'),
(45, '49030363', 'RETAMAL Jose Sebastian', 8, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Química Ambiental - Tercero ciclo Orientado                  ', 'Seminario Tercero - Turno tarde                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-26 22:46:02'),
(46, '49279217', 'RUIZ Keila Sof?a', 8, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Química Ambiental - Tercero ciclo Orientado                  ', 'Seminario Tercero - Turno tarde                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-26 22:46:02'),
(47, '48660029', 'SALAZAR Benjamin Alexander', 8, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Química Ambiental - Tercero ciclo Orientado                  ', 'Seminario Tercero - Turno tarde                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-26 22:46:02'),
(48, '48732521', 'SALAZAR Mateo Jeremias', 8, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Química Ambiental - Tercero ciclo Orientado                  ', 'Seminario Tercero - Turno tarde                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-26 22:46:02'),
(49, '49466405', 'SAN MARTIN Yamila Jazm?n', 8, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Química Ambiental - Tercero ciclo Orientado                  ', 'Seminario Tercero - Turno tarde                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-26 22:46:02'),
(50, '49340412', 'SANDOVAL RODRIGUEZ Sofia Jazmin', 8, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Química Ambiental - Tercero ciclo Orientado                  ', 'Seminario Tercero - Turno tarde                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-26 22:46:02'),
(51, '48660004', 'SEPULVEDA Franco Iv?n', 8, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Química Ambiental - Tercero ciclo Orientado                  ', 'Seminario Tercero - Turno tarde                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-26 22:46:02'),
(52, '49138434', 'TOLOZA  Agust?n Alexandro', 8, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Química Ambiental - Tercero ciclo Orientado                  ', 'Seminario Tercero - Turno tarde                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-26 22:46:02'),
(53, '48947845', 'VASQUEZ   Magdalena Judith', 8, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Química Ambiental - Tercero ciclo Orientado                  ', 'Seminario Tercero - Turno tarde                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-26 22:46:02'),
(54, '48915859', 'VILLCA RAMIRES Kenneth Roger', 8, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Química Ambiental - Tercero ciclo Orientado                  ', 'Seminario Tercero - Turno tarde                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-26 22:46:02'),
(55, '95248873', 'ALVARADO VARGAS Juan José', 20, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Química Ambiental - Tercero ciclo Orientado                  ', 'Seminario Tercero - Turno tarde                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-26 22:46:02'),
(56, '48392141', 'ARAUJO Eric Luciano', 20, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Química Ambiental - Tercero ciclo Orientado                  ', 'Seminario Tercero - Turno tarde                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-26 22:46:02'),
(57, '49217547', 'BASCUÑAN Emiliano Adriel', 20, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Química Ambiental - Tercero ciclo Orientado                  ', 'Seminario Tercero - Turno tarde                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-26 22:46:02'),
(58, '49138189', 'BRANDT Maria Paz', 20, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Química Ambiental - Tercero ciclo Orientado                  ', 'Seminario Tercero - Turno tarde                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-26 22:46:02'),
(59, '49030805', 'CANIUCURA  CIFUENTES Thiago Leonel', 20, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Química Ambiental - Tercero ciclo Orientado                  ', 'Seminario Tercero - Turno tarde                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-26 22:46:02'),
(60, '49465088', 'CAYUPE Nahiara Flor', 20, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Química Ambiental - Tercero ciclo Orientado                  ', 'Seminario Tercero - Turno tarde                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-26 22:46:02'),
(61, '49498020', 'CONTINI Carla Antonela', 20, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Química Ambiental - Tercero ciclo Orientado                  ', 'Seminario Tercero - Turno tarde                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-26 22:46:02'),
(62, '48570812', 'ESQUIVEL Nayla Ludmila', 20, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Química Ambiental - Tercero ciclo Orientado                  ', 'Seminario Tercero - Turno tarde                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-26 22:46:02'),
(63, '48185092', 'FIGUEROA Luciano Luis', 20, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Química Ambiental - Tercero ciclo Orientado                  ', 'Seminario Tercero - Turno tarde                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-26 22:46:02'),
(64, '49573604', 'FUENTEALBA Laura Valentina', 20, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Química Ambiental - Tercero ciclo Orientado                  ', 'Seminario Tercero - Turno tarde                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-26 22:46:02'),
(65, '94642568', 'GARRADO CORIA  Antony Jamil', 20, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Química Ambiental - Tercero ciclo Orientado                  ', 'Seminario Tercero - Turno tarde                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-26 22:46:02'),
(66, '49340405', 'GUTIERREZ Belén Yoselin', 20, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Química Ambiental - Tercero ciclo Orientado                  ', 'Seminario Tercero - Turno tarde                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-26 22:46:02'),
(67, '47720831', 'IBARCACHE ÑANCUFIL Cristian Benjamín', 20, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Química Ambiental - Tercero ciclo Orientado                  ', 'Seminario Tercero - Turno tarde                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-26 22:46:02'),
(68, '48531317', 'INALAF  Lautaro Jeremías', 20, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Química Ambiental - Tercero ciclo Orientado                  ', 'Seminario Tercero - Turno tarde                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-26 22:46:02'),
(69, '49030810', 'KACHU Leandro Gabriel', 20, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Química Ambiental - Tercero ciclo Orientado                  ', 'Seminario Tercero - Turno tarde                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-26 22:46:02'),
(70, '49399336', 'LILLO Luz Adriana', 20, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Química Ambiental - Tercero ciclo Orientado                  ', 'Seminario Tercero - Turno tarde                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-26 22:46:02'),
(71, '48123461', 'MASINA MONTIVERO Jerónimo Efraín', 20, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Química Ambiental - Tercero ciclo Orientado                  ', 'Seminario Tercero - Turno tarde                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-26 22:46:02'),
(72, '49030781', 'MEDINA CASTRO Gabriela Martina', 20, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Química Ambiental - Tercero ciclo Orientado                  ', 'Seminario Tercero - Turno tarde                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-26 22:46:02'),
(73, '48660020', 'MEZQUIDA Solana Malen', 20, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Química Ambiental - Tercero ciclo Orientado                  ', 'Seminario Tercero - Turno tarde                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-26 22:46:02'),
(74, '49138446', 'OÑATE Juana Jacqueline', 20, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Química Ambiental - Tercero ciclo Orientado                  ', 'Seminario Tercero - Turno tarde                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-26 22:46:02'),
(75, '49484560', 'OVEJERO Nayla Luna', 20, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Química Ambiental - Tercero ciclo Orientado                  ', 'Seminario Tercero - Turno tarde                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-26 22:46:02'),
(76, '49399339', 'PITOCCO Angel Leonel', 20, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Química Ambiental - Tercero ciclo Orientado                  ', 'Seminario Tercero - Turno tarde                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-26 22:46:02'),
(77, '49399317', 'REYES Jazm?n Agustina', 20, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Química Ambiental - Tercero ciclo Orientado                  ', 'Seminario Tercero - Turno tarde                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-26 22:46:02'),
(78, '49465099', 'SAAVEDRA Julieta Morena', 20, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Química Ambiental - Tercero ciclo Orientado                  ', 'Seminario Tercero - Turno tarde                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-26 22:46:02'),
(79, '49399319', 'SALDIAS ESCALES Thiago Nicol?s', 20, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Química Ambiental - Tercero ciclo Orientado                  ', 'Seminario Tercero - Turno tarde                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-26 22:46:02'),
(80, '49465114', 'ZOLORZA Keren Hapuc', 20, 'Ciencias Naturales', '', '', '', '', '', '', '', 'Química Ambiental - Tercero ciclo Orientado                  ', 'Seminario Tercero - Turno tarde                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-26 22:46:02'),
(81, '49340422', 'AVILA Candela Sofía', 13, 'Educación', '', '', '', '', '', '', '', 'Química Ambiental - Tercero ciclo Orientado                  ', 'Seminario Tercero - Turno tarde                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-26 22:46:02'),
(82, '49465081', 'BELMAR SAVEDRA Tatiana Ailen  ', 13, 'Educación', '', '', '', '', '', '', '', 'Química Ambiental - Tercero ciclo Orientado                  ', 'Seminario Tercero - Turno tarde                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-26 22:46:02'),
(83, '49340029', 'BLANCO MARILEF Yoselin Deborah Marisol', 13, 'Educación', '', '', '', '', '', '', '', 'Química Ambiental - Tercero ciclo Orientado                  ', 'Seminario Tercero - Turno tarde                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-26 22:46:02'),
(84, '49574244', 'CIFUENTE Ximena Ludmila', 13, 'Educación', '', '', '', '', '', '', '', 'Química Ambiental - Tercero ciclo Orientado                  ', 'Seminario Tercero - Turno tarde                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-26 22:46:02'),
(85, '49031278', 'CUELLO Xiomara Tatiana', 13, 'Educación', '', '', '', '', '', '', '', 'Química Ambiental - Tercero ciclo Orientado                  ', 'Seminario Tercero - Turno tarde                  ', '', '', '', '', '', '', '', '', 'En Proceso de Apropiación de Saberes', '', '', '', '', '', '', '', '', '50', '', '', '', '', '', '', '', '', 'Maso', 1, '01/2024', 8, '2024-03-26 23:02:43'),
(86, '48488961', 'FELIPIN Jesús Esteban', 13, 'Educación', '', '', '', '', '', '', '', 'Química Ambiental - Tercero ciclo Orientado                  ', 'Seminario Tercero - Turno tarde                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-26 22:46:02'),
(87, '49030816', 'FRIAS Nicole Selena Eugenia', 13, 'Educación', '', '', '', '', '', '', '', 'Química Ambiental - Tercero ciclo Orientado                  ', 'Seminario Tercero - Turno tarde                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-26 22:46:02'),
(88, '49138436', 'GONZALEZ Ariadna Sherill', 13, 'Educación', '', '', '', '', '', '', '', 'Química Ambiental - Tercero ciclo Orientado                  ', 'Seminario Tercero - Turno tarde                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-26 22:46:02'),
(89, '49217507', 'GONZALEZ Christian Benjamin', 13, 'Educación', '', '', '', '', '', '', '', 'Química Ambiental - Tercero ciclo Orientado                  ', 'Seminario Tercero - Turno tarde                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-26 22:46:02'),
(90, '49030814', 'JARA Joselin Luciana', 13, 'Educación', '', '', '', '', '', '', '', 'Química Ambiental - Tercero ciclo Orientado                  ', 'Seminario Tercero - Turno tarde                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-26 22:46:02'),
(91, '49399341', 'JELDRES  Gisel Antonela', 13, 'Educación', '', '', '', '', '', '', '', 'Química Ambiental - Tercero ciclo Orientado                  ', 'Seminario Tercero - Turno tarde                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-26 22:46:02'),
(92, '47596902', 'JUNCO Analía Belén', 13, 'Educación', '', '', '', '', '', '', '', 'Química Ambiental - Tercero ciclo Orientado                  ', 'Seminario Tercero - Turno tarde                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-26 22:46:02'),
(93, '48732071', 'LACA ESPIRITU Miguel Angel', 13, 'Educación', '', '', '', '', '', '', '', 'Química Ambiental - Tercero ciclo Orientado                  ', 'Seminario Tercero - Turno tarde                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-26 22:46:02'),
(94, '49465082', 'LONCOPAN BURGOS Brenda Antonella', 13, 'Educación', '', '', '', '', '', '', '', 'Química Ambiental - Tercero ciclo Orientado                  ', 'Seminario Tercero - Turno tarde                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-26 22:46:02'),
(95, '48947386', 'LONCOPAN TORRES Esteban Ezequiel', 13, 'Educación', '', '', '', '', '', '', '', 'Química Ambiental - Tercero ciclo Orientado                  ', 'Seminario Tercero - Turno tarde                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-26 22:46:02'),
(96, '49574255', 'MARIN MARDONES Diogo Valentin', 13, 'Educación', '', '', '', '', '', '', '', 'Química Ambiental - Tercero ciclo Orientado                  ', 'Seminario Tercero - Turno tarde                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-26 22:46:02'),
(97, '49029747', 'MILLANAO Ainara Milagros Marcela', 13, 'Educación', '', '', '', '', '', '', '', 'Química Ambiental - Tercero ciclo Orientado                  ', 'Seminario Tercero - Turno tarde                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-26 22:46:02'),
(98, '49340421', 'OCAMPO Tomás Abel', 13, 'Educación', '', '', '', '', '', '', '', 'Química Ambiental - Tercero ciclo Orientado                  ', 'Seminario Tercero - Turno tarde                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-26 22:46:02'),
(99, '49279214', 'PARRA Diego Nahuel', 13, 'Educación', '', '', '', '', '', '', '', 'Química Ambiental - Tercero ciclo Orientado                  ', 'Seminario Tercero - Turno tarde                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-26 22:46:02'),
(100, '50117151', 'QUINTANA Nahiara Antonella', 13, 'Educación', '', '', '', '', '', '', '', 'Química Ambiental - Tercero ciclo Orientado                  ', 'Seminario Tercero - Turno tarde                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-26 22:46:02'),
(101, '49340008', 'RAMIREZ PEREIRA Benjamin', 13, 'Educación', '', '', '', '', '', '', '', 'Química Ambiental - Tercero ciclo Orientado                  ', 'Seminario Tercero - Turno tarde                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-26 22:46:02'),
(102, '48251334', 'RIQUELME Tiago Joaquin', 13, 'Educación', '', '', '', '', '', '', '', 'Química Ambiental - Tercero ciclo Orientado                  ', 'Seminario Tercero - Turno tarde                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-26 22:46:02'),
(103, '49029020', 'ROMERO Maria Salome', 13, 'Educación', '', '', '', '', '', '', '', 'Química Ambiental - Tercero ciclo Orientado                  ', 'Seminario Tercero - Turno tarde                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-26 22:46:02'),
(104, '49399326', 'SALDIAS Marixa Antonella', 13, 'Educación', '', '', '', '', '', '', '', 'Química Ambiental - Tercero ciclo Orientado                  ', 'Seminario Tercero - Turno tarde                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-26 22:46:02'),
(105, '49399313', 'SOLIS Tiago Martin', 13, 'Educación', '', '', '', '', '', '', '', 'Química Ambiental - Tercero ciclo Orientado                  ', 'Seminario Tercero - Turno tarde                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-26 22:46:02'),
(106, '50992773', 'VILLANUEVA Maximiliano Ismael', 13, 'Educación', '', '', '', '', '', '', '', 'Química Ambiental - Tercero ciclo Orientado                  ', 'Seminario Tercero - Turno tarde                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-26 22:46:02'),
(107, '49279231', 'VILLARINO Giuliana', 13, 'Educación', '', '', '', '', '', '', '', 'Química Ambiental - Tercero ciclo Orientado                  ', 'Seminario Tercero - Turno tarde                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-26 22:46:02'),
(108, '48949733', 'ANDRADE Daniela Itatí', 23, 'Educación', '', '', '', '', '', '', '', 'Química Ambiental - Tercero ciclo Orientado                  ', 'Seminario Tercero - Turno tarde                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-26 22:46:02'),
(109, '49138442', 'BASTIAS Rocío Malen', 23, 'Educación', '', '', '', '', '', '', '', 'Química Ambiental - Tercero ciclo Orientado                  ', 'Seminario Tercero - Turno tarde                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-26 22:46:02'),
(110, '48660027', 'COLIMIL NORAMBUENA Abigail Ailen', 23, 'Educación', '', '', '', '', '', '', '', 'Química Ambiental - Tercero ciclo Orientado                  ', 'Seminario Tercero - Turno tarde                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-26 22:46:02'),
(111, '49217539', 'CONTRERAS Benjamín Fabián', 23, 'Educación', '', '', '', '', '', '', '', 'Química Ambiental - Tercero ciclo Orientado                  ', 'Seminario Tercero - Turno tarde                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-26 22:46:02'),
(112, '47374935', 'CONTRERAS CALVO Camila Ailen', 23, 'Educación', '', '', '', '', '', '', '', 'Química Ambiental - Tercero ciclo Orientado                  ', 'Seminario Tercero - Turno tarde                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-26 22:46:02'),
(113, '48185225', 'DOMINGUEZ Maia Sol', 23, 'Educación', '', '', '', '', '', '', '', 'Química Ambiental - Tercero ciclo Orientado                  ', 'Seminario Tercero - Turno tarde                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-26 22:46:02'),
(114, '49339533', 'ENCISA Brunella Anette', 23, 'Educación', '', '', '', '', '', '', '', 'Química Ambiental - Tercero ciclo Orientado                  ', 'Seminario Tercero - Turno tarde                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-26 22:46:02'),
(115, '49217537', 'ESPINOSA Amaya Lilen', 23, 'Educación', '', '', '', '', '', '', '', 'Química Ambiental - Tercero ciclo Orientado                  ', 'Seminario Tercero - Turno tarde                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-26 22:46:02'),
(116, '49279463', 'FERREIRA ENRIQUEZ Aynara Catalina', 23, 'Educación', '', '', '', '', '', '', '', 'Química Ambiental - Tercero ciclo Orientado                  ', 'Seminario Tercero - Turno tarde                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-26 22:46:02'),
(117, '49138433', 'GUTIERREZ EBERHARDT Martin Sebastián', 23, 'Educación', '', '', '', '', '', '', '', 'Química Ambiental - Tercero ciclo Orientado                  ', 'Seminario Tercero - Turno tarde                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-26 22:46:02'),
(118, '49339532', 'HUAYQUINAO ESCOBAR Leonel Emanuel', 23, 'Educación', '', '', '', '', '', '', '', 'Química Ambiental - Tercero ciclo Orientado                  ', 'Seminario Tercero - Turno tarde                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-26 22:46:02'),
(119, '49217540', 'KIHN BERTIN Anabella', 23, 'Educación', '', '', '', '', '', '', '', 'Química Ambiental - Tercero ciclo Orientado                  ', 'Seminario Tercero - Turno tarde                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-26 22:46:02'),
(120, '48123492', 'LARA Mayra Alejandra', 23, 'Educación', '', '', '', '', '', '', '', 'Química Ambiental - Tercero ciclo Orientado                  ', 'Seminario Tercero - Turno tarde                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-26 22:46:02'),
(121, '48390927', 'LEFIAN  Tiago Daniel', 23, 'Educación', '', '', '', '', '', '', '', 'Química Ambiental - Tercero ciclo Orientado                  ', 'Seminario Tercero - Turno tarde                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-26 22:46:02'),
(122, '49340003', 'MERLO Nahiara Rocio', 23, 'Educación', '', '', '', '', '', '', '', 'Química Ambiental - Tercero ciclo Orientado                  ', 'Seminario Tercero - Turno tarde                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-26 22:46:02'),
(123, '49925169', 'MILLAN Leandro Benjamín', 23, 'Educación', '', '', '', '', '', '', '', 'Química Ambiental - Tercero ciclo Orientado                  ', 'Seminario Tercero - Turno tarde                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-26 22:46:02'),
(124, '48947385', 'NAHUELCHEO Maria Valentina', 23, 'Educación', '', '', '', '', '', '', '', 'Química Ambiental - Tercero ciclo Orientado                  ', 'Seminario Tercero - Turno tarde                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-26 22:46:02'),
(125, '49029714', 'NAVARRETE Rocio Agustina', 23, 'Educación', '', '', '', '', '', '', '', 'Química Ambiental - Tercero ciclo Orientado                  ', 'Seminario Tercero - Turno tarde                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-26 22:46:02'),
(126, '49030811', 'ROCHA Bautista Joaquín Andrés', 23, 'Educación', '', '', '', '', '', '', '', 'Química Ambiental - Tercero ciclo Orientado                  ', 'Seminario Tercero - Turno tarde                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-26 22:46:02'),
(127, '49030802', 'ROCHA Natasha Ailen', 23, 'Educación', '', '', '', '', '', '', '', 'Química Ambiental - Tercero ciclo Orientado                  ', 'Seminario Tercero - Turno tarde                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-26 22:46:02'),
(128, '49573607', 'SANHUEZA ZAMBRANO Nahiara Jazmin', 23, 'Educación', '', '', '', '', '', '', '', 'Química Ambiental - Tercero ciclo Orientado                  ', 'Seminario Tercero - Turno tarde                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-26 22:46:02'),
(129, '49466439', 'TAPIA Alfonsina Fiorella', 23, 'Educación', '', '', '', '', '', '', '', 'Química Ambiental - Tercero ciclo Orientado                  ', 'Seminario Tercero - Turno tarde                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-26 22:46:02'),
(130, '48732540', 'VARGAS Micaela Gisell', 23, 'Educación', '', '', '', '', '', '', '', 'Química Ambiental - Tercero ciclo Orientado                  ', 'Seminario Tercero - Turno tarde                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-26 22:46:02'),
(131, '49399165', 'VERGARA Sol Agustina', 23, 'Educación', '', '', '', '', '', '', '', 'Química Ambiental - Tercero ciclo Orientado                  ', 'Seminario Tercero - Turno tarde                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-26 22:46:02'),
(132, '48123470', 'ZUÑIGA CHAMBI Celio David', 23, 'Educación', '', '', '', '', '', '', '', 'Química Ambiental - Tercero ciclo Orientado                  ', 'Seminario Tercero - Turno tarde                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-26 22:46:02'),
(133, '49029733', 'CANDIA Katherine Suyai', 24, 'Educación', '', '', '', '', '', '', '', 'Química Ambiental - Tercero ciclo Orientado                  ', 'Seminario Tercero - Turno tarde                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-26 22:46:02'),
(134, '48489786', 'CASTRO CALI Andi Valentino', 24, 'Educación', '', '', '', '', '', '', '', 'Química Ambiental - Tercero ciclo Orientado                  ', 'Seminario Tercero - Turno tarde                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-26 22:46:02'),
(135, '49399349', 'COLIPE Morena Ailen', 24, 'Educación', '', '', '', '', '', '', '', 'Química Ambiental - Tercero ciclo Orientado                  ', 'Seminario Tercero - Turno tarde                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-26 22:46:02'),
(136, '49465068', 'CONTRERAS Ivanna Brunella', 24, 'Educación', '', '', '', '', '', '', '', 'Química Ambiental - Tercero ciclo Orientado                  ', 'Seminario Tercero - Turno tarde                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-26 22:46:02');
INSERT INTO `tercero` (`id`, `documento`, `nombre`, `id_curso`, `modalidad`, `saberes_cientifica`, `saberes_sociales`, `saberes_ingles`, `saberes_matematica`, `saberes_fisica`, `saberes_artistica`, `saberes_lengua`, `saberes_quimica`, `saberes_seminario3`, `aprecia_cientifica`, `aprecia_sociales`, `aprecia_ingles`, `aprecia_matematica`, `aprecia_fisica`, `aprecia_artistica`, `aprecia_lengua`, `aprecia_quimica`, `aprecia_seminario3`, `asistencia_cientifica`, `asistencia_sociales`, `asistencia_ingles`, `asistencia_matematica`, `asistencia_fisica`, `asistencia_artistica`, `asistencia_lengua`, `asistencia_quimica`, `asistencia_seminario3`, `observa_cientifica`, `observa_sociales`, `observa_ingles`, `observa_matematica`, `observa_fisica`, `observa_artistica`, `observa_lengua`, `observa_quimica`, `observa_seminario3`, `estado`, `periodo`, `id_usuario`, `fecha`) VALUES
(137, '49279203', 'DIAZ VERA Sabrina Gianella', 24, 'Educación', '', '', '', '', '', '', '', 'Química Ambiental - Tercero ciclo Orientado                  ', 'Seminario Tercero - Turno tarde                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-26 22:46:02'),
(138, '49029729', 'FILET SUNETTI Valentina Gimena', 24, 'Educación', '', '', '', '', '', '', '', 'Química Ambiental - Tercero ciclo Orientado                  ', 'Seminario Tercero - Turno tarde                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-26 22:46:02'),
(139, '48531350', 'FLORES ALDERETE Evelyn Gimena', 24, 'Educación', '', '', '', '', '', '', '', 'Química Ambiental - Tercero ciclo Orientado                  ', 'Seminario Tercero - Turno tarde                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-26 22:46:02'),
(140, '49030786', 'GOMEZ MOSQUEZ Yuliana Deysi', 24, 'Educación', '', '', '', '', '', '', '', 'Química Ambiental - Tercero ciclo Orientado                  ', 'Seminario Tercero - Turno tarde                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-26 22:46:02'),
(141, '48978788', 'HOYOS José Luis', 24, 'Educación', '', '', '', '', '', '', '', 'Química Ambiental - Tercero ciclo Orientado                  ', 'Seminario Tercero - Turno tarde                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-26 22:46:02'),
(142, '49029742', 'INFANTE Cristian Agustín', 24, 'Educación', '', '', '', '', '', '', '', 'Química Ambiental - Tercero ciclo Orientado                  ', 'Seminario Tercero - Turno tarde                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-26 22:46:02'),
(143, '49029707', 'LALLANA Oriana Nicole', 24, 'Educación', '', '', '', '', '', '', '', 'Química Ambiental - Tercero ciclo Orientado                  ', 'Seminario Tercero - Turno tarde                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-26 22:46:02'),
(144, '49340410', 'MARIGUAN Marcela Nahiara', 24, 'Educación', '', '', '', '', '', '', '', 'Química Ambiental - Tercero ciclo Orientado                  ', 'Seminario Tercero - Turno tarde                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-26 22:46:02'),
(145, '49399321', 'MARIN FUNARI Fabrizio Nestor', 24, 'Educación', '', '', '', '', '', '', '', 'Química Ambiental - Tercero ciclo Orientado                  ', 'Seminario Tercero - Turno tarde                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-26 22:46:02'),
(146, '49340428', 'MERCADO Sofia Ayelén', 24, 'Educación', '', '', '', '', '', '', '', 'Química Ambiental - Tercero ciclo Orientado                  ', 'Seminario Tercero - Turno tarde                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-26 22:46:02'),
(147, '48947357', 'MERCEDES Tiago Emanuel', 24, 'Educación', '', '', '', '', '', '', '', 'Química Ambiental - Tercero ciclo Orientado                  ', 'Seminario Tercero - Turno tarde                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-26 22:46:02'),
(148, '49339524', 'MIRANDA Joaquin Jesus', 24, 'Educación', '', '', '', '', '', '', '', 'Química Ambiental - Tercero ciclo Orientado                  ', 'Seminario Tercero - Turno tarde                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-26 22:46:02'),
(149, '49466425', 'RIVERA DOMINGUEZ Luz Thiara', 24, 'Educación', '', '', '', '', '', '', '', 'Química Ambiental - Tercero ciclo Orientado                  ', 'Seminario Tercero - Turno tarde                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-26 22:46:02'),
(150, '49340415', 'RUBIO NOVA Belén Antonela', 24, 'Educación', '', '', '', '', '', '', '', 'Química Ambiental - Tercero ciclo Orientado                  ', 'Seminario Tercero - Turno tarde                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-26 22:46:02'),
(151, '49279683', 'SANCHEZ PIERAGOSTINI Delfina', 24, 'Educación', '', '', '', '', '', '', '', 'Química Ambiental - Tercero ciclo Orientado                  ', 'Seminario Tercero - Turno tarde                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-26 22:46:02'),
(152, '49138432', 'SANDOVAL Paula Guillermina', 24, 'Educación', '', '', '', '', '', '', '', 'Química Ambiental - Tercero ciclo Orientado                  ', 'Seminario Tercero - Turno tarde                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-26 22:46:02'),
(153, '49138431', 'VERA Milenka Sofia', 24, 'Educación', '', '', '', '', '', '', '', 'Química Ambiental - Tercero ciclo Orientado                  ', 'Seminario Tercero - Turno tarde                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-26 22:46:02'),
(154, '49138430', 'VERA Nahara Martina', 24, 'Educación', '', '', '', '', '', '', '', 'Química Ambiental - Tercero ciclo Orientado                  ', 'Seminario Tercero - Turno tarde                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-26 22:46:02'),
(155, '49217514', 'ZUÑIGA CHAMBI Samuel Reinaldo', 24, 'Educación', '', '', '', '', '', '', '', 'Química Ambiental - Tercero ciclo Orientado                  ', 'Seminario Tercero - Turno tarde                  ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '01/2024', 0, '2024-03-26 22:46:02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` text COLLATE utf8_spanish_ci NOT NULL,
  `telefono` text COLLATE utf8_spanish_ci NOT NULL,
  `usuario` text COLLATE utf8_spanish_ci NOT NULL,
  `password` text COLLATE utf8_spanish_ci NOT NULL,
  `perfil` text COLLATE utf8_spanish_ci NOT NULL,
  `foto` text COLLATE utf8_spanish_ci NOT NULL,
  `estado` int(11) NOT NULL DEFAULT 1,
  `ultimo_login` datetime NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `telefono`, `usuario`, `password`, `perfil`, `foto`, `estado`, `ultimo_login`, `fecha`) VALUES
(8, 'Lapettina Guillermo', '2984417763', 'lape', '$2a$07$usesomesillystringforeKFErhzzmd6AoycQvV4lokWBof7hIUcW', 'Administrador', '', 1, '2024-04-03 08:58:35', '2024-04-03 11:58:35');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ciudades`
--
ALTER TABLE `ciudades`
  ADD PRIMARY KEY (`id_ciudad`);

--
-- Indices de la tabla `cuarto`
--
ALTER TABLE `cuarto`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `movilidad`
--
ALTER TABLE `movilidad`
  ADD PRIMARY KEY (`id_movilidad`);

--
-- Indices de la tabla `netbooks`
--
ALTER TABLE `netbooks`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `primero`
--
ALTER TABLE `primero`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `quinto`
--
ALTER TABLE `quinto`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `segundo`
--
ALTER TABLE `segundo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tercero`
--
ALTER TABLE `tercero`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `ciudades`
--
ALTER TABLE `ciudades`
  MODIFY `id_ciudad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `cuarto`
--
ALTER TABLE `cuarto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT de la tabla `cursos`
--
ALTER TABLE `cursos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `movilidad`
--
ALTER TABLE `movilidad`
  MODIFY `id_movilidad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT de la tabla `netbooks`
--
ALTER TABLE `netbooks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT de la tabla `primero`
--
ALTER TABLE `primero`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT de la tabla `quinto`
--
ALTER TABLE `quinto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT de la tabla `segundo`
--
ALTER TABLE `segundo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=153;

--
-- AUTO_INCREMENT de la tabla `tercero`
--
ALTER TABLE `tercero`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=156;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=148;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
