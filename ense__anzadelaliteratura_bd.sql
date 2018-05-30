-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-05-2018 a las 16:59:12
-- Versión del servidor: 10.1.31-MariaDB
-- Versión de PHP: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `enseñanzadelaliteratura_bd`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actividades`
--

CREATE TABLE `actividades` (
  `id` int(5) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `tipo` varchar(20) NOT NULL,
  `calificacion` int(10) NOT NULL,
  `idusu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `actividades`
--

INSERT INTO `actividades` (`id`, `nombre`, `tipo`, `calificacion`, `idusu`) VALUES
(1, 'lecturaimagen', 'analisis', 1, 26),
(2, 'lecturacritica', 'analisis', 2, 12),
(3, 'completarparrafos', 'analisis', 3, 29),
(4, 'deletrear', 'analisisycoherencia', 4, 36),
(5, 'palabrasconectadas', 'logica', 5, 34),
(6, 'lecturaprofunda', 'analisis', 6, 18),
(7, 'completarparrafos', 'analisis', 7, 21),
(8, 'lectura', 'analisis', 8, 4),
(9, 'dictado', 'compresion', 9, 11),
(10, 'lectoescritura', 'analisisyescritura', 10, 1),
(11, 'expresionoralyescrit', 'analisis', 11, 5),
(12, 'sopadeletra', 'analisis', 12, 31),
(13, 'crucigrama', 'analisiseinvestigaci', 13, 13),
(14, 'lecturaimagen', 'analisis', 14, 16),
(15, 'imagencritica', 'analisis', 15, 19),
(16, 'dramatizacion', 'expresioncorporal', 16, 3),
(17, 'contrucciontiteres', 'expresionoral', 17, 30),
(18, 'recreacionhistoria', 'imaginacion', 18, 1),
(19, 'dibujo', 'recreacion', 19, 1),
(20, 'exposicionliteraria', 'compresion', 20, 1),
(21, 'completarparrafos', 'analisicoyherencia', 21, 1),
(22, 'lectoescritura', 'compresion', 22, 1),
(23, 'sopadeletra', 'analisis', 23, 1),
(24, 'deletrear', 'expresionoral', 24, 1),
(25, 'palabrasconectadas', 'analisis', 25, 1),
(26, 'buscalapalabra', 'analisis', 26, 1),
(27, 'juntalossonidos', 'compresion', 27, 1),
(28, 'trazatunombre', 'escritura', 28, 1),
(29, 'licuadoradepalabras', 'compresion', 29, 1),
(30, 'habladetudibujo', 'analisis', 30, 1),
(31, 'juegodememoria', 'analisis', 31, 1),
(32, 'cuantaspalabras', 'analisis', 32, 1),
(33, 'juntoiniciales', 'analisisycoherencia', 33, 1),
(34, 'usa6palabras', 'analisisycoherencia', 34, 1),
(35, 'veraderofalso', 'analisis', 35, 1),
(36, 'palabrasnuevas', 'investigacion', 36, 1),
(37, 'palabrasvocales', 'investigacion', 37, 1),
(38, 'verdaderofalso', 'analisis', 38, 1),
(39, 'licuadoradepalabras', 'analisiycoherencia', 39, 1),
(40, 'palabrasnuevas', 'investigacion', 40, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evaluacion`
--

CREATE TABLE `evaluacion` (
  `id` int(5) NOT NULL,
  `tiposdeliteratura` varchar(20) NOT NULL,
  `nota1` int(5) NOT NULL,
  `nota2` int(5) NOT NULL,
  `nota3` int(5) NOT NULL,
  `promedio` int(5) NOT NULL,
  `niveldeaprendizaje` varchar(15) NOT NULL,
  `desempeño` varchar(15) NOT NULL,
  `idusu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `evaluacion`
--

INSERT INTO `evaluacion` (`id`, `tiposdeliteratura`, `nota1`, `nota2`, `nota3`, `promedio`, `niveldeaprendizaje`, `desempeño`, `idusu`) VALUES
(1, 'critica', 3, 5, 4, 4, '4', 'bueno', 34),
(2, 'analitica', 3, 3, 3, 3, '3', 'regular', 34),
(3, 'oratoria', 5, 5, 5, 5, '5', 'bueno', 17),
(4, 'escrita', 3, 3, 3, 3, '3', 'regular', 1),
(5, 'oral', 4, 4, 4, 4, '4', 'bueno', 1),
(6, 'escrita', 2, 2, 2, 2, '2', 'malo', 1),
(7, 'critica', 4, 4, 4, 4, '4', 'bueno', 1),
(8, 'oralescrita', 2, 2, 2, 2, '2', 'malo', 1),
(9, 'critica', 3, 3, 3, 3, '3', 'regular', 1),
(10, 'oralescrita', 5, 5, 5, 5, '5', 'bueno', 1),
(11, 'analitica', 5, 5, 5, 5, '5', 'bueno', 1),
(12, 'analitica', 5, 5, 5, 5, '5', 'bueno', 1),
(13, 'oralanalitica', 4, 4, 4, 4, '4', 'bueno', 1),
(14, 'critica', 3, 3, 3, 3, '3', 'regular', 1),
(15, 'analitica', 5, 5, 5, 5, '5', 'bueno', 1),
(16, 'critica', 2, 2, 2, 2, '2', 'malo', 1),
(17, 'critica', 3, 3, 3, 3, '3', 'regular', 1),
(18, 'expositiva', 3, 3, 3, 3, '3', 'regular', 1),
(19, 'critica', 5, 5, 5, 5, '5', 'bueno', 1),
(20, 'analitica', 3, 33, 3, 3, '3', 'regular', 1),
(21, 'escrita', 5, 5, 5, 5, '5', 'bueno', 1),
(22, 'analitica', 3, 3, 3, 3, '3', 'regular', 1),
(23, 'critica', 4, 4, 4, 4, '4', 'bueno', 1),
(24, 'critica', 5, 5, 5, 5, '5', 'bueno', 1),
(25, 'oratoria', 4, 4, 4, 4, '4', 'bueno', 1),
(26, 'oratoria', 5, 5, 5, 5, '5', 'bueno', 1),
(27, 'oratoria', 5, 5, 5, 5, '5', 'bueno', 1),
(28, 'criticaanalitica', 5, 5, 5, 5, '5', 'bueno', 1),
(29, 'analitica', 2, 2, 2, 2, '2', 'malo', 1),
(30, 'oratoria', 4, 4, 4, 4, '4', 'bueno', 1),
(31, 'oralescrita', 4, 4, 4, 4, '4', 'bueno', 1),
(32, 'analitica', 2, 2, 2, 2, '2', 'malo', 1),
(33, 'analitica', 1, 1, 1, 1, '1', 'malo', 1),
(34, 'critica', 5, 5, 5, 5, '5', 'bueno', 1),
(35, 'oratoria', 2, 2, 2, 2, '2', 'malo', 1),
(36, 'critica', 3, 3, 3, 3, '3', 'regular', 1),
(37, 'criticaanalitica', 4, 4, 4, 4, '4', 'bueno', 1),
(38, 'critica', 3, 3, 3, 3, '3', 'regular', 1),
(39, 'oratoria', 5, 5, 5, 5, '5', 'bueno', 1),
(40, 'critica', 5, 5, 5, 5, '5', 'bueno', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `niveles_aptitudinales`
--

CREATE TABLE `niveles_aptitudinales` (
  `id` int(5) NOT NULL,
  `redaccion` varchar(20) NOT NULL,
  `compresion` varchar(20) NOT NULL,
  `aprendizaje` varchar(20) NOT NULL,
  `idusu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `niveles_aptitudinales`
--

INSERT INTO `niveles_aptitudinales` (`id`, `redaccion`, `compresion`, `aprendizaje`, `idusu`) VALUES
(1, 'excelente', 'medio', '1', 1),
(2, 'sobresalie', 'alto', '2', 1),
(3, 'excelente', 'medio', '3', 1),
(4, 'sobresalie', 'medio', '3', 1),
(6, 'sobresaliente', 'alto', '3', 1),
(7, 'sobresaliente', 'alto', '3', 1),
(8, 'excelente', 'alto', '1', 1),
(9, 'excelente', 'alto', '1', 1),
(10, 'insufuciente', 'bajo', '3', 1),
(11, 'sobresaliente', 'medio', '2', 1),
(12, 'sobresaliente', 'medio', '2', 1),
(13, 'excelente', 'alto', '1', 1),
(14, 'insuficiente', 'bajo', '3', 1),
(15, 'excelente', 'alto', '1', 1),
(16, 'sobresaliente', 'medio', '2', 1),
(17, 'excelente', 'alto', '1', 1),
(18, 'insuficiente', 'bajo', '3', 1),
(19, 'sobresaliente', 'medio', '2', 1),
(20, 'excelente', 'alto', '1', 1),
(21, 'excelente', 'alto', '1', 1),
(22, 'sobresaliente', 'medio', '2', 1),
(23, 'excelente', 'medio', '2', 1),
(24, 'insufuciente', 'medio', '3', 1),
(25, 'excelente', 'sobresaliente', '2', 1),
(26, 'insuficiente', 'alto', '3', 1),
(27, 'excelente', 'bajo', '3', 1),
(28, 'excelente', 'medio', '2', 1),
(29, 'sobresaliente', 'medio', '2', 1),
(30, 'excelente', 'medio', '2', 1),
(31, 'excelente', 'medio', '2', 1),
(32, 'excelente', 'medio', '2', 1),
(33, 'sobresaliente', 'medio', '2', 1),
(34, 'insuficiente', 'bajo', '3', 1),
(35, 'sobresaliente', 'alto', '2', 1),
(36, 'excelente', 'medio', '2', 1),
(37, 'excelente', 'sobresaliente', '2', 1),
(38, 'sobresaliente', 'medio', '2', 1),
(39, 'excelente', 'alto', '1', 1),
(40, 'excelente', 'alto', '1', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `idusu` int(5) NOT NULL,
  `numidentidad` int(20) NOT NULL,
  `nombre1` varchar(15) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `nombre2` varchar(15) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `apellido1` varchar(15) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `apellido2` varchar(15) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `fechanacim` varchar(15) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `edad` int(2) NOT NULL,
  `niveleducativo` varchar(20) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `correo` varchar(30) COLLATE utf8mb4_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`idusu`, `numidentidad`, `nombre1`, `nombre2`, `apellido1`, `apellido2`, `fechanacim`, `edad`, `niveleducativo`, `correo`) VALUES
(1, 1003456876, 'Maria ', 'Fernanda', 'Jimenez', 'Hernandez', '20040211', 14, 'bachiller', 'maria@gmail.com'),
(2, 100456848, 'Camila ', 'Andrea', 'Perez', 'Rojas', '20050318', 13, 'bachiller', 'camila@gmail.com'),
(3, 100345678, 'Andres', 'Camilo', 'Lopez', 'Duque', '20040212', 14, 'bachiller', 'andres@gmail.com'),
(4, 100345679, 'Mario', 'Andres', 'Casarrubia', 'Marquez', '20050314', 13, 'bachiller', 'mario@gmail.com'),
(5, 100345679, 'Manuel', 'Andres', 'Contreras', 'Hernandez', '19981209', 19, 'bachiller', 'manuel@gmail.com'),
(6, 103465789, 'Ana', 'Camila', 'Murillo', 'Cardena', '19980613', 19, 'bachiller', 'anita@gmail.com'),
(7, 102394654, 'Carlos', 'Cesar', 'Palmar', 'Cuadrado', '19990512', 18, 'bachiller', 'cesar@gmail.com'),
(8, 1934567886, 'Iris', 'Maria', 'Murillo', 'Rojas', '19980614', 18, 'bachiller', 'iris@gmail.com'),
(9, 1829348437, 'Camila', 'Alejandra', 'Tenorio', 'Casarrubia', '19981209', 19, 'bachiller', 'aleja@gmail.com'),
(10, 1839475344, 'Hernan', 'Camilo', 'Pitalua', 'Cano', '20001605', 15, 'bachiller', 'hernan@gmail.com'),
(11, 103847566, 'Alexandra', 'Maria', 'Jimenez', 'Hernandez', '20040211', 15, 'bachiller', 'alexa@gmail.com'),
(12, 1034756584, 'Marcela', 'Maria', 'Cano', 'Casarrubia', '19981210', 20, 'bachiller', 'marce@gmail.com'),
(13, 1837465758, 'Luna', 'Maria', 'Contreras', 'Jimenez', '20050317', 13, 'bachiller', 'luna@gmail.com'),
(14, 1927354647, 'Edith', 'Andrea', 'Sanchez', 'Lopez', '19981209', 20, 'bachiller', 'edith@gmail.com'),
(15, 193784568, 'Fabian', 'Andres', 'Cardona ', 'Cardenas', '19980613', 20, 'bachiller', 'cardona@gmail.com'),
(16, 1832935342, 'Juana', 'Marcela', 'Hernandez', 'Perez ', '19981210', 19, 'bachiller', 'juana@gmail.com'),
(17, 162738432, 'Oswaldo', 'Andres', 'Contreras', 'contreras', '19991704', 19, 'bachiller', 'oswaldo@gmail.com'),
(18, 1625347847, 'Marlon', 'Andres', 'Lara', 'Polo', '1999704', 19, 'bachiller', ''),
(19, 100456849, 'Jose', 'Javier', 'Caza', 'Cabello', '19980612', 20, 'bachiller', 'jose@gmail.com'),
(20, 126790453, 'Javier', 'Jose ', 'Contreras', 'Perez', '19990508', 19, 'bachiller', 'Javi@gmail@gmail.com'),
(21, 1826453432, 'Mario', 'Jose', 'Perez', 'Martinez', '19980606', 19, 'bachiller', 'mariojo@gmail.com'),
(22, 100365477, 'Javier', 'Alexander', 'Canchira', 'Gomez', '19981212', 19, 'bachiller', 'javal12@gmail.com'),
(23, 1061978236, 'Jhon', 'Stephan', 'Trump', 'Clington', '19981216', 19, 'bachiller', 'jhonstephan@gmail.com'),
(24, 10072837, 'Carlos', 'Javier', 'Medina', 'Gomez', '19981205', 19, 'bachiller', 'carmego@gmail.com'),
(25, 102983733, 'Carlos', 'Mario', 'Julio', 'Ricardo', '19981124', 19, 'bachiller', 'carmajuri@gmail.com'),
(26, 102973728, 'Alexander', 'Stephan', 'Contreras', 'Jimenez', '19980916', 19, 'bachiller', 'alexstepme26@gmail.com'),
(27, 1726263273, 'Jaison', 'Jose', 'Contreras', 'Blanquicett', '19980708', 19, 'bachiller', 'jaijoconbla@hotmail.com'),
(28, 106372637, 'Jairo', 'Luis', 'Argumedo', 'Sierra', '19981224', 19, 'bachiller', 'jairoluarsi@gmail.com'),
(29, 178637328, 'Oliver', 'Tom', 'Aton', 'Schnneider', '19981221', 19, 'bachiller', 'olitoma@gmailcom'),
(30, 102728787, 'Jorge', 'David', 'Betancourt', 'Pineda', '19981209', 19, 'bachiller', 'jordabe@hotmail.com'),
(31, 182617263, 'Manuel', 'Esteban', 'Cassiani', 'Ayala', '19981207', 19, 'bachiller', 'manuelcassi12@hotmail.com'),
(32, 106173672, 'Javier', 'Elias', 'Contreras', 'Contreras', '19980312', 20, 'bachiller', 'javicontre@gmail.com'),
(33, 182479252, 'Johan', 'David ', 'Jimenez', 'Salazar', '19980714', 19, 'bachiller', 'jodajisa@gmail.com'),
(34, 106297435, 'William', 'Andres', 'Diaz', 'Diaz', '19981225', 19, 'bachiller', 'willidiaz12@hotmail.com'),
(35, 106283627, 'Camila', 'Andrea', 'Gomez', 'Sierra', '19980812', 19, 'bachiller', 'caangmomez@hotmail.com'),
(36, 182612735, 'Richard', 'Orlando', 'Narvaez', 'Luna', '19981019', 19, 'bachiller', 'richardonl@gmail.com'),
(37, 283738272, 'Carolay', 'Stephanie', 'Rodriguez', 'Gomez', '19980417', 20, 'bachiller', 'caristephanie04@hotmail.com'),
(38, 172573623, 'Carla', 'Andrea', 'Hoyos', 'Avila', '19981206', 19, 'bachiller', 'carlaandrea@hotmail.com'),
(39, 172352738, 'Cristian ', 'Javier', 'Martinez', 'Villalobos', '19980728', 19, 'bachiller', 'cristianmartinez@hotmail.com'),
(40, 1037352735, 'Jehider', 'Jose', 'Osten', 'Gonzales', '19981205', 19, 'bachiller', 'ostengonzlez@hotmail.com');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `actividades`
--
ALTER TABLE `actividades`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idusu` (`idusu`);

--
-- Indices de la tabla `evaluacion`
--
ALTER TABLE `evaluacion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idusu` (`idusu`);

--
-- Indices de la tabla `niveles_aptitudinales`
--
ALTER TABLE `niveles_aptitudinales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idusu` (`idusu`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idusu`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `actividades`
--
ALTER TABLE `actividades`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de la tabla `evaluacion`
--
ALTER TABLE `evaluacion`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de la tabla `niveles_aptitudinales`
--
ALTER TABLE `niveles_aptitudinales`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idusu` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `actividades`
--
ALTER TABLE `actividades`
  ADD CONSTRAINT `actividades_ibfk_1` FOREIGN KEY (`idusu`) REFERENCES `usuario` (`idusu`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `evaluacion`
--
ALTER TABLE `evaluacion`
  ADD CONSTRAINT `evaluacion_ibfk_1` FOREIGN KEY (`idusu`) REFERENCES `usuario` (`idusu`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `niveles_aptitudinales`
--
ALTER TABLE `niveles_aptitudinales`
  ADD CONSTRAINT `niveles_aptitudinales_ibfk_1` FOREIGN KEY (`idusu`) REFERENCES `usuario` (`idusu`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
