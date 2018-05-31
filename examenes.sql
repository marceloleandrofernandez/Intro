-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 31-05-2018 a las 20:22:12
-- Versión del servidor: 5.7.14
-- Versión de PHP: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `examenes`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `configuracion`
--

CREATE TABLE `configuracion` (
  `id` int(5) NOT NULL,
  `establecimiento` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `configuracion`
--

INSERT INTO `configuracion` (`id`, `establecimiento`) VALUES
(1, 'Normal 10 Anexo Comercial San Antonio');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `etiqueta`
--

CREATE TABLE `etiqueta` (
  `id` int(5) NOT NULL,
  `descripcion` varchar(50) NOT NULL,
  `correspondiente` varchar(50) NOT NULL,
  `correcto` tinyint(1) NOT NULL,
  `pregunta_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `etiq_elegida`
--

CREATE TABLE `etiq_elegida` (
  `id` int(5) NOT NULL,
  `etiqueta_id` int(5) NOT NULL,
  `examen_tomado_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `examen`
--

CREATE TABLE `examen` (
  `id` int(5) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `abrir_examen` datetime DEFAULT NULL,
  `cerrar_examen` datetime DEFAULT NULL,
  `limite_de_tiempo` int(2) DEFAULT NULL,
  `nota_aprobacion` int(2) NOT NULL,
  `nota_decimales` int(1) NOT NULL,
  `cantidad_preguntas` int(2) DEFAULT NULL,
  `correcciones` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `examen`
--

INSERT INTO `examen` (`id`, `nombre`, `abrir_examen`, `cerrar_examen`, `limite_de_tiempo`, `nota_aprobacion`, `nota_decimales`, `cantidad_preguntas`, `correcciones`) VALUES
(1, 'Parcial Numeros', '2018-05-31 00:00:00', '2018-05-31 23:59:59', 60, 8, 8, 10, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `examen_tomado`
--

CREATE TABLE `examen_tomado` (
  `id` int(5) NOT NULL,
  `fecha` datetime NOT NULL,
  `estado` int(1) NOT NULL,
  `nota_minima` int(2) NOT NULL,
  `examen_id` int(5) NOT NULL,
  `persona_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materia`
--

CREATE TABLE `materia` (
  `id` int(5) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `descripcion` text,
  `anio` int(1) NOT NULL,
  `clave` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `materia`
--

INSERT INTO `materia` (`id`, `nombre`, `descripcion`, `anio`, `clave`) VALUES
(1, 'Matematica 1', 'Comprende las operaciones con numeros naturales', 1, 'ferrari'),
(2, 'Matematica 2', 'Comprende las operaciones con numeros enteros', 2, 'volkswagen'),
(3, 'Lengua 1', 'Lengua y Literatura', 1, 'iuris'),
(4, 'Lengua 2', 'Lengua y el analisis literario', 2, 'ventilador');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `id` int(5) NOT NULL,
  `dni` int(8) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `fecha_ing` datetime NOT NULL,
  `clave` varchar(70) NOT NULL,
  `tipo` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`id`, `dni`, `apellido`, `nombre`, `telefono`, `email`, `fecha_ing`, `clave`, `tipo`) VALUES
(1, 11111111, 'Administrador', 'Administrador', NULL, 'admin', '2017-11-07 13:13:21', '$2y$10$Gypsx4RtQhcw3Jr5EBiDX.5ilmxKzRDGbngdB9bJsx3B.i9.T0/Nu', 'A'),
(2, 22222222, 'Rodriguez', 'Guillermo', '3764112233', 'profesor', '2017-11-07 13:13:21', '$2y$10$31nAJwWO7aoLx2Z7xiT6UOA0SdW7.TLPZIPhYGz5TdNm3QjywsSVK', 'P'),
(3, 33333333, 'Bustos', 'Juan', '3764333333', 'alumno@gmail.com', '2017-11-07 13:13:21', '$2y$10$wJX3IG01foLTUFS9b666VuOqxuo3zYqLVIVhKxqp2LvGRzxyNCOFm', 'S'),
(4, 44444444, 'Perez', 'Antonio', '3764112233', 'profesor2', '2018-04-29 20:51:15', '$2y$10$KyJQBsG/EHtutcjDfzSQMe4ZGnpXr0zCL6yctm5ZAFvEgBYg866z6', 'P'),
(5, 55555555, 'Sanchez', 'Carlos', '3764332211', 'profesor3', '2018-05-19 23:53:05', '$2y$10$UDSxpTYez4r0TctwFOxJseIvwJEeFyBqC8TgiZFQNI28JMn8DZcoy', 'P');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona_materia`
--

CREATE TABLE `persona_materia` (
  `id` int(5) NOT NULL,
  `persona_id` int(5) NOT NULL,
  `materia_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `persona_materia`
--

INSERT INTO `persona_materia` (`id`, `persona_id`, `materia_id`) VALUES
(1, 2, 1),
(2, 2, 2),
(3, 4, 3),
(4, 4, 4),
(5, 3, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pregunta`
--

CREATE TABLE `pregunta` (
  `id` int(5) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `enunciado` text NOT NULL,
  `tipo` int(2) NOT NULL,
  `valor` int(3) NOT NULL,
  `porcentaje_error` int(3) NOT NULL,
  `url_imagen` varchar(70) DEFAULT NULL,
  `tema_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `pregunta`
--

INSERT INTO `pregunta` (`id`, `nombre`, `enunciado`, `tipo`, `valor`, `porcentaje_error`, `url_imagen`, `tema_id`) VALUES
(1, 'Colón', 'Indique si las siguiente afirmaciones son verdaderas o falsas:', 1, 10, 20, NULL, 1),
(2, 'Colores Primarios', 'Elija una o más opciones de la lista sugerida colores primarios:', 2, 2, 0, NULL, 1),
(3, 'Colón', 'Indique si las siguiente afirmaciones son verdaderas o falsas:', 1, 2, 0, NULL, 1),
(4, 'Coso', 'Indique si las siguiente afirmaciones son verdaderas o falsas:', 1, 3, 0, NULL, 1),
(5, 'asdfasdf', 'Indique si las siguisssssssente afirmaciones son verdaderas o falsas:', 1, 3, 0, NULL, 1),
(6, 'Nombre Pregunta', 'Indique si las siguiente afirmaciones son verdaderas o falsas:', 1, 5, 0, NULL, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `respuesta`
--

CREATE TABLE `respuesta` (
  `id` int(5) NOT NULL,
  `descripcion` varchar(50) DEFAULT NULL,
  `correspondiente` varchar(50) DEFAULT NULL,
  `correcto` tinyint(1) NOT NULL,
  `pregunta_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `respuesta`
--

INSERT INTO `respuesta` (`id`, `descripcion`, `correspondiente`, `correcto`, `pregunta_id`) VALUES
(1, 'Colón descubrió América', NULL, 1, 1),
(2, 'Colón era abogado', NULL, 0, 1),
(3, 'Colón llegó con una carabela', NULL, 0, 1),
(4, 'Colón descubrió Oceanía', NULL, 0, 1),
(5, 'Azul', NULL, 1, 2),
(6, 'Anaranjado', NULL, 0, 2),
(7, 'Amarillo', NULL, 1, 2),
(8, 'Rojo', NULL, 1, 2),
(9, 'Violeta', NULL, 0, 2),
(10, 'Colón descubrió américa', NULL, 1, 3),
(11, 'Colón era abogado', NULL, 0, 3),
(12, 'Colón era carpintero', NULL, 0, 3),
(13, 'Colón llegó con tres carabelas', NULL, 1, 3),
(14, 'Es un coso', NULL, 1, 4),
(15, 'no es un coso', NULL, 0, 4),
(16, 'podria ser un coso', NULL, 1, 4),
(17, 'ffafafafaf', NULL, 1, 5),
(18, 'Va a la tabla respuesta', NULL, 1, 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `res_elegida`
--

CREATE TABLE `res_elegida` (
  `id` int(5) NOT NULL,
  `respuesta_id` int(5) NOT NULL,
  `examen_tomado_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tema`
--

CREATE TABLE `tema` (
  `id` int(5) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `descripcion` text,
  `numero` int(2) DEFAULT NULL,
  `unidad_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tema`
--

INSERT INTO `tema` (`id`, `nombre`, `descripcion`, `numero`, `unidad_id`) VALUES
(1, 'Tema 1', 'Descripcion Tema 1', 1, 1),
(2, 'Tema 2', 'Descripcion Tema 2', 2, 1),
(3, 'Tema 1', 'Descripcion Tema 1', 1, 2),
(4, 'Tema 2', 'Descripcion Tema 2', 2, 2),
(5, 'Tema 1', 'Descripcion Tema 1', 1, 6),
(6, 'Tema 2', 'Descripcion Tema 2', 2, 6),
(7, 'Tema 1', 'Descripcion Tema 1', 1, 7),
(8, 'Tema 2', 'Descripcion Tema 2', 2, 7),
(9, 'Tema 1', 'Descripcion Tema 1', 1, 11),
(10, 'Tema 2', 'Descripcion Tema 2', 2, 11),
(11, 'Tema 1', 'Descripcion Tema 1', 1, 12),
(12, 'Tema 2', 'Descripcion Tema 2', 2, 12),
(13, 'Tema 1', 'Descripcion Tema 1', 1, 16),
(14, 'Tema 2', 'Descripcion Tema 2', 2, 16),
(15, 'Tema 1', 'Descripcion Tema 1', 1, 17),
(16, 'Tema 2', 'Descripcion Tema 2', 2, 17);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tema_examen`
--

CREATE TABLE `tema_examen` (
  `id` int(5) NOT NULL,
  `tema_id` int(5) NOT NULL,
  `examen_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tema_examen`
--

INSERT INTO `tema_examen` (`id`, `tema_id`, `examen_id`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `temporal`
--

CREATE TABLE `temporal` (
  `id_tmp` int(11) NOT NULL,
  `descripcion` varchar(50) DEFAULT NULL,
  `correspondiente` varchar(50) DEFAULT NULL,
  `correcto` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `temporal`
--

INSERT INTO `temporal` (`id_tmp`, `descripcion`, `correspondiente`, `correcto`) VALUES
(1, 'Va a la tabla respuesta', NULL, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `unidad`
--

CREATE TABLE `unidad` (
  `id` int(5) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `descripcion` text,
  `numero` int(2) DEFAULT NULL,
  `materia_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `unidad`
--

INSERT INTO `unidad` (`id`, `nombre`, `descripcion`, `numero`, `materia_id`) VALUES
(1, 'Unidad 1', 'Descripcion Unidad 1', 1, 1),
(2, 'Unidad 2', 'Descripcion Unidad 2', 2, 1),
(3, 'Unidad 3', 'Descripcion Unidad 3', 3, 1),
(4, 'Unidad 4', 'Descripcion Unidad 4', 4, 1),
(5, 'Unidad 5', 'Descripcion Unidad 5', 5, 1),
(6, 'Unidad 1', 'Descripcion Unidad 1', 1, 2),
(7, 'Unidad 2', 'Descripcion Unidad 2', 2, 2),
(8, 'Unidad 3', 'Descripcion Unidad 3', 3, 2),
(9, 'Unidad 4', 'Descripcion Unidad 4', 4, 2),
(10, 'Unidad 5', 'Descripcion Unidad 5', 5, 2),
(11, 'Unidad 1', 'Descripcion Unidad 1', 1, 3),
(12, 'Unidad 2', 'Descripcion Unidad 2', 2, 3),
(13, 'Unidad 3', 'Descripcion Unidad 3', 3, 3),
(14, 'Unidad 4', 'Descripcion Unidad 4', 4, 3),
(15, 'Unidad 5', 'Descripcion Unidad 5', 5, 3),
(16, 'Unidad 1', 'Descripcion Unidad 1', 1, 4),
(17, 'Unidad 2', 'Descripcion Unidad 2', 2, 4),
(18, 'Unidad 3', 'Descripcion Unidad 3', 3, 4),
(19, 'Unidad 4', 'Descripcion Unidad 4', 4, 4),
(20, 'Unidad 5', 'Descripcion Unidad 5', 5, 4);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `configuracion`
--
ALTER TABLE `configuracion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `etiqueta`
--
ALTER TABLE `etiqueta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pregunta_id` (`pregunta_id`);

--
-- Indices de la tabla `etiq_elegida`
--
ALTER TABLE `etiq_elegida`
  ADD PRIMARY KEY (`id`),
  ADD KEY `etiqueta_id` (`etiqueta_id`),
  ADD KEY `examen_tomado_id` (`examen_tomado_id`);

--
-- Indices de la tabla `examen`
--
ALTER TABLE `examen`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `examen_tomado`
--
ALTER TABLE `examen_tomado`
  ADD PRIMARY KEY (`id`),
  ADD KEY `examen_id` (`examen_id`),
  ADD KEY `persona_id` (`persona_id`);

--
-- Indices de la tabla `materia`
--
ALTER TABLE `materia`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `persona_materia`
--
ALTER TABLE `persona_materia`
  ADD PRIMARY KEY (`id`),
  ADD KEY `persona_id` (`persona_id`),
  ADD KEY `materia_id` (`materia_id`);

--
-- Indices de la tabla `pregunta`
--
ALTER TABLE `pregunta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tema_id` (`tema_id`);

--
-- Indices de la tabla `respuesta`
--
ALTER TABLE `respuesta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pregunta_id` (`pregunta_id`);

--
-- Indices de la tabla `res_elegida`
--
ALTER TABLE `res_elegida`
  ADD PRIMARY KEY (`id`),
  ADD KEY `respuesta_id` (`respuesta_id`),
  ADD KEY `examen_tomado_id` (`examen_tomado_id`);

--
-- Indices de la tabla `tema`
--
ALTER TABLE `tema`
  ADD PRIMARY KEY (`id`),
  ADD KEY `unidad_id` (`unidad_id`);

--
-- Indices de la tabla `tema_examen`
--
ALTER TABLE `tema_examen`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tema_id` (`tema_id`),
  ADD KEY `examen_id` (`examen_id`);

--
-- Indices de la tabla `temporal`
--
ALTER TABLE `temporal`
  ADD PRIMARY KEY (`id_tmp`);

--
-- Indices de la tabla `unidad`
--
ALTER TABLE `unidad`
  ADD PRIMARY KEY (`id`),
  ADD KEY `materia_id` (`materia_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `configuracion`
--
ALTER TABLE `configuracion`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `etiqueta`
--
ALTER TABLE `etiqueta`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `etiq_elegida`
--
ALTER TABLE `etiq_elegida`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `examen`
--
ALTER TABLE `examen`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `examen_tomado`
--
ALTER TABLE `examen_tomado`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `materia`
--
ALTER TABLE `materia`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `persona`
--
ALTER TABLE `persona`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `persona_materia`
--
ALTER TABLE `persona_materia`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `pregunta`
--
ALTER TABLE `pregunta`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `respuesta`
--
ALTER TABLE `respuesta`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT de la tabla `res_elegida`
--
ALTER TABLE `res_elegida`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tema`
--
ALTER TABLE `tema`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT de la tabla `tema_examen`
--
ALTER TABLE `tema_examen`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `temporal`
--
ALTER TABLE `temporal`
  MODIFY `id_tmp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `unidad`
--
ALTER TABLE `unidad`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `etiqueta`
--
ALTER TABLE `etiqueta`
  ADD CONSTRAINT `etiqueta_ibfk_1` FOREIGN KEY (`pregunta_id`) REFERENCES `pregunta` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `etiq_elegida`
--
ALTER TABLE `etiq_elegida`
  ADD CONSTRAINT `etiq_elegida_ibfk_1` FOREIGN KEY (`etiqueta_id`) REFERENCES `etiqueta` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `etiq_elegida_ibfk_2` FOREIGN KEY (`examen_tomado_id`) REFERENCES `examen_tomado` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `examen_tomado`
--
ALTER TABLE `examen_tomado`
  ADD CONSTRAINT `examen_tomado_ibfk_1` FOREIGN KEY (`examen_id`) REFERENCES `examen` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `examen_tomado_ibfk_2` FOREIGN KEY (`persona_id`) REFERENCES `persona` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `persona_materia`
--
ALTER TABLE `persona_materia`
  ADD CONSTRAINT `persona_materia_ibfk_1` FOREIGN KEY (`persona_id`) REFERENCES `persona` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `persona_materia_ibfk_2` FOREIGN KEY (`materia_id`) REFERENCES `materia` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `pregunta`
--
ALTER TABLE `pregunta`
  ADD CONSTRAINT `pregunta_ibfk_1` FOREIGN KEY (`tema_id`) REFERENCES `tema` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `respuesta`
--
ALTER TABLE `respuesta`
  ADD CONSTRAINT `respuesta_ibfk_1` FOREIGN KEY (`pregunta_id`) REFERENCES `pregunta` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `res_elegida`
--
ALTER TABLE `res_elegida`
  ADD CONSTRAINT `res_elegida_ibfk_1` FOREIGN KEY (`respuesta_id`) REFERENCES `respuesta` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `res_elegida_ibfk_2` FOREIGN KEY (`examen_tomado_id`) REFERENCES `examen_tomado` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tema`
--
ALTER TABLE `tema`
  ADD CONSTRAINT `tema_ibfk_1` FOREIGN KEY (`unidad_id`) REFERENCES `unidad` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tema_examen`
--
ALTER TABLE `tema_examen`
  ADD CONSTRAINT `tema_examen_ibfk_1` FOREIGN KEY (`tema_id`) REFERENCES `tema` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tema_examen_ibfk_2` FOREIGN KEY (`examen_id`) REFERENCES `examen` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `unidad`
--
ALTER TABLE `unidad`
  ADD CONSTRAINT `unidad_ibfk_1` FOREIGN KEY (`materia_id`) REFERENCES `materia` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
