-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-06-2018 a las 18:32:27
-- Versión del servidor: 5.7.14
-- Versión de PHP: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sistgestion`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulo`
--

CREATE TABLE `articulo` (
  `id` int(5) NOT NULL,
  `articulo` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `stock_inicial` decimal(10,0) NOT NULL,
  `stock_actual` decimal(10,0) NOT NULL,
  `stock_minimo` decimal(10,0) NOT NULL,
  `unidad_medida` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `articulo`
--

INSERT INTO `articulo` (`id`, `articulo`, `stock_inicial`, `stock_actual`, `stock_minimo`, `unidad_medida`) VALUES
(1, 'Cebolla', '33', '10', '2', 1),
(2, 'Harina', '23', '10', '2', 1),
(3, 'Queso', '10', '10', '2', 1),
(4, 'Carne Molida', '10', '10', '2', 5),
(6, 'Fanta x 750', '10', '5', '15', 4),
(12, 'adfadf', '100', '25', '5', 2),
(7, 'Coca Cola', '10', '10', '2', 3),
(8, 'pan', '12', '12', '12', 2),
(9, 'Pan Dulce', '13', '13', '5', 13),
(10, 'Mirinda', '10', '10', '2', 3),
(11, ' Tutuca', '10', '10', '5', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuentas`
--

CREATE TABLE `cuentas` (
  `id` int(11) NOT NULL,
  `nick` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `passwd` varchar(255) NOT NULL,
  `tipous` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cuentas`
--

INSERT INTO `cuentas` (`id`, `nick`, `email`, `passwd`, `tipous`) VALUES
(7, 'Admin', 'admin@mail', '$2y$08$pVcfy2mcXukVuBHclsR.KeDWHB17D1evAb7DG93xbzyLGufWXqpam', 1),
(8, 'NoAdmin', 'Noadmin@mail', '$2y$08$csvy3nCBNAlh/HVzMI/yue/MnNAyZDBijPh38LB6PWnKPSByhdFsy', 2),
(23, 'asdasd', 'user01@rlman.com', '$2y$08$CrK5p4K1dYNbuhSFewLSA.gOu3XF/IKx9iJORkDvna8WbCLYhFZUy', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `localidades`
--

CREATE TABLE `localidades` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `codigo` int(5) NOT NULL,
  `id_provincia` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `localidades`
--

INSERT INTO `localidades` (`id`, `descripcion`, `codigo`, `id_provincia`) VALUES
(1, '	22 DE DICIEMBRE	', 13, 19),
(2, '	25 DE MAYO	', 15152, 19),
(3, '	2 DE MAYO	', 15148, 19),
(4, '	3 DE MAYO	', 15155, 19),
(5, '	9 DE JULIO	', 15162, 19),
(6, '	ACARAGUA	', 69, 19),
(7, '	ALBA POSSE	', 244, 19),
(8, '	ALMIRANTE BROWN	', 15235, 19),
(9, '	ALTA UNION	', 379, 19),
(10, '	APARICIO CUE	', 625, 19),
(11, '	APOSTOLES	', 634, 19),
(12, '	ARISTOBULO DEL VALLE	', 687, 19),
(13, '	ARRECHEA	', 703, 19),
(14, '	ARROYO	', 15293, 19),
(15, '	ARROYO DEL MEDIO	', 15299, 19),
(16, '	ARROYO FEDOR	', 775, 19),
(17, '	ARROYO ISABEL	', 786, 19),
(18, '	ARROYO MAGDALENA	', 809, 19),
(19, '	ARROYO PASTORA	', 829, 19),
(20, '	ARROYO PERSIGUERO	', 836, 19),
(21, '	ARROYO SANTA MARIA	', 856, 19),
(22, '	ARROYO TOMAS	', 871, 19),
(23, '	ARROYO TUNITAS	', 873, 19),
(24, '	ARROYO YABEBIRI	', 879, 19),
(25, '	ASERRADERO ECHEVERRIA	', 900, 19),
(26, '	ASERRADERO PINALITO	', 902, 19),
(27, '	AZARA	', 952, 19),
(28, '	BANADO GRANDE	', 1395, 19),
(29, '	BARRA BONITA	', 1186, 19),
(30, '	BARRA BONITA	', 20776, 19),
(31, '	BARRACON	', 1188, 19),
(32, '	BARRACON	', 20751, 19),
(33, '	BARRA CONCEPCION	', 1187, 19),
(34, '	BARRANCON	', 1196, 19),
(35, '	BARRANCON	', 20749, 19),
(36, '	BARRIO DON SANTIAGO	', 1244, 19),
(37, '	BARTOLITO	', 1339, 19),
(38, '	BAYO TRONCHO	', 1380, 19),
(39, '	BELLA VISTA	', 15385, 19),
(40, '	BERNARDINO RIVADAVIA	', 1465, 19),
(41, '	BERNARDO DE IRIGOYEN	', 1466, 19),
(42, '	BONPLAND	', 15406, 19),
(43, '	BONPLAND NORTE	', 1536, 19),
(44, '	BRAZO DEL TACUARUZU	', 1566, 19),
(45, '	BRETES MARTIRES	', 1576, 19),
(46, '	BUENA VISTA	', 15424, 19),
(47, '	CAAPORA	', 1628, 19),
(48, '	CABURE	', 1668, 19),
(49, '	CAINGUAS	', 1708, 19),
(50, '	CAMPANA	', 15444, 19),
(51, '	CAMPINA DE BONPLAND	', 1830, 19),
(52, '	CAMPINA GRANDE	', 1831, 19),
(53, '	CAMPINAS DE AMERICA	', 1832, 19),
(54, '	CAMPO ALEGRE	', 15447, 19),
(55, '	CAMPO GRANDE	', 15459, 19),
(56, '	CAMPO RAMON	', 1991, 19),
(57, '	CAMPO RICHARDSON	', 1995, 19),
(58, '	CAMPOS SALLES	', 2033, 19),
(59, '	CAMPO TORNQUINST	', 2016, 19),
(60, '	CAMPO VIERA	', 2023, 19),
(61, '	CANDELARIA	', 15475, 19),
(62, '	CAPIOVI	', 2127, 19),
(63, '	CAPIOVISINO	', 2128, 19),
(64, '	CAPITAN ANTONIO MORALES	', 2131, 19),
(65, '	CAPIVU	', 2143, 19),
(66, '	CAPUERON	', 2146, 19),
(67, '	CARAGUATAY	', 2155, 19),
(68, '	CARRILLO VIEJO	', 2226, 19),
(69, '	CATARATAS DEL IGUAZU	', 2328, 19),
(70, '	CENTINELA	', 15554, 19),
(71, '	CERRO AZUL	', 15569, 19),
(72, '	CERRO CORA	', 2574, 19),
(73, '	CHEROGUITA	', 2922, 19),
(74, '	CHIRIMAY	', 2976, 19),
(75, '	CITRUS	', 3055, 19),
(76, '	COLONIA ALBERDI	', 15657, 19),
(77, '	COLONIA ALBERDI	', 20747, 19),
(78, '	COLONIA ALEMANA	', 15660, 19),
(79, '	COLONIA ALICIA	', 3190, 19),
(80, '	COLONIA ALMAFUERTE	', 3192, 19),
(81, '	COLONIA APOSTOLES	', 3210, 19),
(82, '	COLONIA ARISTOBULO DEL VALLE	', 3213, 19),
(83, '	COLONIA AURORA	', 3221, 19),
(84, '	COLONIA AZARA	', 3224, 19),
(85, '	COLONIA CAA GUAZU	', 3272, 19),
(86, '	COLONIA CAPON BONITO	', 3285, 19),
(87, '	COLONIA CHAFARIZ	', 3304, 19),
(88, '	COLONIA CHAPA	', 3306, 19),
(89, '	COLONIA CUMANDAY	', 3325, 19),
(90, '	COLONIA CUNCI	', 3326, 19),
(91, '	COLONIA DELICIA	', 3344, 19),
(92, '	COLONIA DOMINGO SAVIO	', 3351, 19),
(93, '	COLONIA DURAN	', 3361, 19),
(94, '	COLONIA EL DORADILLO	', 3380, 19),
(95, '	COLONIA EL PESADO	', 3392, 19),
(96, '	COLONIA EL PROGRESO	', 3397, 19),
(97, '	COLONIA FINLANDESA	', 3439, 19),
(98, '	COLONIA FLORIDA	', 3444, 19),
(99, '	COLONIA FORTALEZA	', 3446, 19),
(100, '	COLONIA GRAMADO	', 3470, 19),
(101, '	COLONIA GUARANI	', 3476, 19),
(102, '	COLONIA JAPONESA	', 3509, 19),
(103, '	COLONIA JUANITA	', 15682, 19),
(104, '	COLONIA LA CHILLITA	', 3548, 19),
(105, '	COLONIA LA GRUTA	', 3564, 19),
(106, '	COLONIA LA OTILIA	', 3590, 19),
(107, '	COLONIA LA POLACA	', 3597, 19),
(108, '	COLONIA LEIVA	', 3634, 19),
(109, '	COLONIA MANUEL BELGRANO	', 3679, 19),
(110, '	COLONIA MARTIRES	', 3688, 19),
(111, '	COLONIA MARTIR SANTA MARIA	', 3687, 19),
(112, '	COLONIA MONDORI	', 3711, 19),
(113, '	COLONIA NACANGAZU	', 3970, 19),
(114, '	COLONIA ORO VERDE	', 3755, 19),
(115, '	COLONIA PADUAN	', 3762, 19),
(116, '	COLONIA PALMERA	', 3767, 19),
(117, '	COLONIA POLACA	', 3789, 19),
(118, '	COLONIA POLANA	', 3790, 19),
(119, '	COLONIA PRIMAVERA	', 3793, 19),
(120, '	COLONIA PROFUNDIDAD	', 3795, 19),
(121, '	COLONIA PUERTO ROSALES	', 3803, 19),
(122, '	COLONIA ROCA	', 15701, 19),
(123, '	COLONIA ROCA CHICA	', 3817, 19),
(124, '	COLONIA SAN IGNACIO	', 15714, 19),
(125, '	COLONIA SAN JAVIER	', 3846, 19),
(126, '	COLONIA SANTA MARIA	', 15745, 19),
(127, '	COLONIA SANTA TERESA	', 15753, 19),
(128, '	COLONIA SEGUI	', 3894, 19),
(129, '	COLONIA SIETE ESTRELLAS	', 3898, 19),
(130, '	COLONIA TARANCO	', 3915, 19),
(131, '	COLONIA TRES MARIAS	', 3932, 19),
(132, '	COLONIA VICTORIA	', 3950, 19),
(133, '	COLONIA YABEBIRI	', 3959, 19),
(134, '	COLONIA YACUTINGA	', 3960, 19),
(135, '	COMANDANTE ANDRESITO	', 3985, 19),
(136, '	CONCEPCION DE LA SIERRA	', 4007, 19),
(137, '	CORPUS	', 4123, 19),
(138, '	COSTA PORTERA	', 4205, 19),
(139, '	CRUCE CABALLERO	', 4246, 19),
(140, '	CRUCE LONDERO	', 4247, 19),
(141, '	CUNA PIRU	', 4371, 19),
(142, '	CUNA PORA	', 4372, 19),
(143, '	DAMUS	', 4380, 19),
(144, '	DESEADO	', 4406, 19),
(145, '	DESPLAYADA	', 4412, 19),
(146, '	DESTACAMENTO BOSQUES	', 4414, 19),
(147, '	DOMINGO BARTHE	', 4505, 19),
(148, '	DONA MARIA	', 4568, 19),
(149, '	DON HORACIO	', 4524, 19),
(150, '	DOS ARROYOS	', 15834, 19),
(151, '	DOS HERMANAS	', 15836, 19),
(152, '	EL 26	', 4610, 19),
(153, '	EL ALCAZAR	', 4633, 19),
(154, '	EL CHATON	', 4827, 19),
(155, '	EL DESTIERRO	', 16023, 19),
(156, '	ELDORADO	', 5525, 19),
(157, '	EL MACACO	', 5057, 19),
(158, '	EL PARAISO	', 16179, 19),
(159, '	EL PERSIGUERO	', 5215, 19),
(160, '	EL PORVENIR	', 16217, 19),
(161, '	EL RANCHO	', 5308, 19),
(162, '	EL REPOSO	', 5322, 19),
(163, '	EL SALTINO	', 5350, 19),
(164, '	EL SALTITO	', 16339, 19),
(165, '	EL SOBERBIO	', 5377, 19),
(166, '	EL SOCORRO	', 16371, 19),
(167, '	EL TIGRE	', 16395, 19),
(168, '	EL TRIUNFO	', 16414, 19),
(169, '	EL TROPEZON	', 16418, 19),
(170, '	ENSANCHE ESTE	', 5586, 19),
(171, '	ENSANCHE NORTE	', 5587, 19),
(172, '	ESPERANZA	', 16464, 19),
(173, '	ESTACION APOSTOLES	', 5682, 19),
(174, '	ESTACION EXPERIMENTAL DE LORE', 5701, 19),
(175, '	ESTANCIA ITAEMBRE	', 5828, 19),
(176, '	ESTANCIA SANTA RITA	', 5969, 19),
(177, '	FACHINAL	', 6048, 19),
(178, '	FILEMON POSE	', 6105, 19),
(179, '	FLORENTINO AMEGHINO	', 16517, 19),
(180, '	FRACRAN	', 6235, 19),
(181, '	FRANCES	', 6239, 19),
(182, '	FRONTERAS	', 16531, 19),
(183, '	GARUHAPE	', 6334, 19),
(184, '	GARUPA	', 6335, 19),
(185, '	GARUPA NORTE	', 6336, 19),
(186, '	GENERAL ALVEAR	', 16539, 19),
(187, '	GOBERNADOR LANUSSE	', 6462, 19),
(188, '	GOBERNADOR ROCA	', 6474, 19),
(189, '	GRAL GUEMES	', 6517, 19),
(190, '	GUAIBICHU	', 6560, 19),
(191, '	GUARANI	', 6588, 19),
(192, '	GUARAYPO	', 6590, 19),
(193, '	GUAYABERA	', 6610, 19),
(194, '	GUERRERO	', 16561, 19),
(195, '	HEKENAN	', 6685, 19),
(196, '	HIPOLITO YRIGOYEN	', 16565, 19),
(197, '	INTEGRACION	', 6974, 19),
(198, '	INVERNADA CHICA	', 6981, 19),
(199, '	INVERNADA DE ITACARUARE	', 6982, 19),
(200, '	INVERNADA GRANDE	', 6983, 19),
(201, '	INVERNADA SAN IGNACIO	', 6984, 19),
(202, '	ISLA ARGENTINA	', 7016, 19),
(203, '	ISLA SAN LUCAS	', 7055, 19),
(204, '	ITACARUARE	', 7084, 19),
(205, '	ITA CURUZU	', 7081, 19),
(206, '	ITAEMBRE MINI	', 7085, 19),
(207, '	JARDIN AMERICA	', 7126, 19),
(208, '	LA CAPILLA	', 16718, 19),
(209, '	LA HORQUETA	', 16985, 19),
(210, '	LA INVERNADA	', 16999, 19),
(211, '	LA MILAGROSA	', 7852, 19),
(212, '	LA MISIONERA	', 7857, 19),
(213, '	LA OTILIA	', 7897, 19),
(214, '	LA PLANTADORA	', 7969, 19),
(215, '	LA POSTA	', 17191, 19),
(216, '	LA ROTONDA	', 8068, 19),
(217, '	LARRAQUE	', 8349, 19),
(218, '	LAS MERCEDES	', 17580, 19),
(219, '	LAS QUEMADAS	', 8632, 19),
(220, '	LAS TUNAS	', 17688, 19),
(221, '	LAS VERTIENTES	', 17695, 19),
(222, '	LEANDRO N ALEM	', 17707, 19),
(223, '	LIBERTAD	', 17712, 19),
(224, '	LINEA CUCHILLA	', 8812, 19),
(225, '	LINEA DE PERAY	', 8813, 19),
(226, '	LORETO	', 17754, 19),
(227, '	LOS GALPONES	', 17850, 19),
(228, '	LOS HELECHOS	', 17857, 19),
(229, '	LOS TEALES	', 9354, 19),
(230, '	LUJAN	', 17978, 19),
(231, '	MACACA	', 9462, 19),
(232, '	MACACO	', 9464, 19),
(233, '	MACHADINO	', 9468, 19),
(234, '	MAI BAO	', 9499, 19),
(235, '	MANANTIALES	', 18000, 19),
(236, '	MANIS	', 9590, 19),
(237, '	MARIA ANTONIA	', 9653, 19),
(238, '	MARIA MAGDALENA	', 9673, 19),
(239, '	MBOPICUA	', 9772, 19),
(240, '	MECKING	', 9779, 19),
(241, '	MESA REDONDA	', 9829, 19),
(242, '	MIGUEL GUEMES	', 9854, 19),
(243, '	MIGUEL LANUS	', 9856, 19),
(244, '	MOCONA	', 9973, 19),
(245, '	MOJON GRANDE	', 9988, 19),
(246, '	MONTEAGUDO	', 18092, 19),
(247, '	MONTECARLO	', 18095, 19),
(248, '	MONTE HERMOSO	', 18081, 19),
(249, '	NACIENTES DEL ISABEL	', 10154, 19),
(250, '	NACIENTES DEL TUNAR	', 10155, 19),
(251, '	NUEVA VALENCIA	', 10303, 19),
(252, '	NUEVE DE JULIO	', 10306, 19),
(253, '	OASIS	', 10320, 19),
(254, '	OBERA	', 10321, 19),
(255, '	OBLIGADO	', 10323, 19),
(256, '	OJO DE AGUA	', 18135, 19),
(257, '	OLEGARIO VICTOR ANDRADE	', 18141, 19),
(258, '	ONCE VUELTAS	', 10386, 19),
(259, '	OTILIA	', 10414, 19),
(260, '	PANAMBI	', 10654, 19),
(261, '	PARADA LEIS	', 10673, 19),
(262, '	PARAISO	', 18203, 19),
(263, '	PARAJE AZOPARDO	', 10682, 19),
(264, '	PARAJE DOS HERMANAS	', 10689, 19),
(265, '	PARAJE ESTELINA	', 10695, 19),
(266, '	PARAJE GRANADO	', 10698, 19),
(267, '	PARAJE INTERCONTINENTAL	', 10701, 19),
(268, '	PARAJE LUCERO	', 10710, 19),
(269, '	PARAJE VILLA UNION	', 10731, 19),
(270, '	PARANAY	', 10742, 19),
(271, '	PASO DEL ARROYO PERSIGUERO	', 10836, 19),
(272, '	PASO PORTENO	', 10889, 19),
(273, '	PASTOREO	', 10920, 19),
(274, '	PATI CUA	', 10929, 19),
(275, '	PEDRO NUNEZ	', 10973, 19),
(276, '	PERSIGUERO	', 11012, 19),
(277, '	PICADA BELGRANO	', 11038, 19),
(278, '	PICADA BONPLAND	', 11039, 19),
(279, '	PICADA ESPANOLA	', 11040, 19),
(280, '	PICADA FINLANDESA	', 11041, 19),
(281, '	PICADA GOBERNADOR LOPEZ	', 11042, 19),
(282, '	PICADA IGLESIA	', 11043, 19),
(283, '	PICADA LIBERTAD	', 11044, 19),
(284, '	PICADA POLACA	', 11045, 19),
(285, '	PICADA PORTUGUESA	', 11046, 19),
(286, '	PICADA POZO FEO	', 11047, 19),
(287, '	PICADA RUSA	', 11048, 19),
(288, '	PICADA SAN JAVIER	', 11049, 19),
(289, '	PICADA SAN JAVIER	', 20746, 19),
(290, '	PICADA SAN JAVIER	', 20750, 19),
(291, '	PICADA SAN MARTIN	', 11050, 19),
(292, '	PICADA SAN MARTIN	', 20748, 19),
(293, '	PICADA SUECA	', 11051, 19),
(294, '	PICADA SUR MECKING	', 11052, 19),
(295, '	PICADA YAPEYU	', 11053, 19),
(296, '	PINALITO NORTE	', 11193, 19),
(297, '	PINALITO SUR	', 11194, 19),
(298, '	PINDAITI	', 11147, 19),
(299, '	PINDAPOY	', 11148, 19),
(300, '	PINDAYTI	', 11149, 19),
(301, '	PIRAY	', 11170, 19),
(302, '	PIRAY MINI	', 11171, 19),
(303, '	PLANCHADA BANDERITA	', 11201, 19),
(304, '	POSADAS	', 11341, 19),
(305, '	PROFUNDIDAD	', 11542, 19),
(306, '	PUEBLO SALTO	', 11654, 19),
(307, '	PUENTE NACIONAL	', 11694, 19),
(308, '	PUERTO AGUIRRE	', 11743, 19),
(309, '	PUERTO ALCAZAR	', 11744, 19),
(310, '	PUERTO ALICIA	', 11747, 19),
(311, '	PUERTO AURORA	', 11753, 19),
(312, '	PUERTO AVELLANEDA	', 11754, 19),
(313, '	PUERTO AZARA	', 11755, 19),
(314, '	PUERTO BEMBERG	', 11761, 19),
(315, '	PUERTO BOSSETTI	', 11765, 19),
(316, '	PUERTO CANOAS	', 11768, 19),
(317, '	PUERTO CARAGUATAY	', 11769, 19),
(318, '	PUERTO CAROLINA	', 11770, 19),
(319, '	PUERTO CAZADOR	', 11771, 19),
(320, '	PUERTO CHUNO	', 11773, 19),
(321, '	PUERTO CONCEPCION	', 11742, 19),
(322, '	PUERTO DELICIA	', 11784, 19),
(323, '	PUERTO DOCE	', 11787, 19),
(324, '	PUERTO EL DORADO	', 11788, 19),
(325, '	PUERTO ERRECABORDE	', 11789, 19),
(326, '	PUERTO ESPANA	', 11790, 19),
(327, '	PUERTO GISELA	', 11794, 19),
(328, '	PUERTO HARDELASTE	', 11798, 19),
(329, '	PUERTO IGUAZU	', 11802, 19),
(330, '	PUERTO INGENIERO MORANDI	', 11803, 19),
(331, '	PUERTO INSUA	', 11804, 19),
(332, '	PUERTO LAHARRAGUE	', 11811, 19),
(333, '	PUERTO LA MINA	', 11808, 19),
(334, '	PUERTO LEONI	', 11817, 19),
(335, '	PUERTO LIBERTAD	', 11818, 19),
(336, '	PUERTO LONDERO	', 11820, 19),
(337, '	PUERTO LUJAN	', 11822, 19),
(338, '	PUERTO MADO	', 11823, 19),
(339, '	PUERTO MBOPICUA	', 11827, 19),
(340, '	PUERTO MENOCHIO	', 11828, 19),
(341, '	PUERTO MINERAL	', 11829, 19),
(342, '	PUERTO NARANJITO	', 18377, 19),
(343, '	PUERTO NUEVO	', 11832, 19),
(344, '	PUERTO ORO VERDE	', 11835, 19),
(345, '	PUERTO PARAISO	', 11836, 19),
(346, '	PUERTO PARANAY	', 11837, 19),
(347, '	PUERTO PATICAA	', 11838, 19),
(348, '	PUERTO PAULITO	', 11839, 19),
(349, '	PUERTO PENINSULA	', 11840, 19),
(350, '	PUERTO PINARES	', 11844, 19),
(351, '	PUERTO PIRAY	', 11848, 19),
(352, '	PUERTO RICO	', 11852, 19),
(353, '	PUERTO ROSARIO	', 11855, 19),
(354, '	PUERTO RUBEN	', 11856, 19),
(355, '	PUERTO SALTINO	', 11858, 19),
(356, '	PUERTO SAN ALBERTO	', 11859, 19),
(357, '	PUERTO SAN IGNACIO	', 11862, 19),
(358, '	PUERTO SAN LUCAS	', 11865, 19),
(359, '	PUERTO SAN MARTIN	', 11866, 19),
(360, '	PUERTO TABAY	', 11869, 19),
(361, '	PUERTO TIGRE	', 11871, 19),
(362, '	PUERTO URUGUAY	', 11879, 19),
(363, '	PUERTO VICTORIA	', 11884, 19),
(364, '	PUERTO VIEJO	', 18379, 19),
(365, '	PUERTO WANDA	', 11888, 19),
(366, '	PUERTO YABEBIRI	', 11890, 19),
(367, '	PUERTO YACUY	', 11891, 19),
(368, '	RINCON DE BONPLAND	', 12478, 19),
(369, '	RINCON DE BUGRES	', 12479, 19),
(370, '	RINCON DE CHIMTRAY	', 12480, 19),
(371, '	RINCON DEL GUERRERO	', 12520, 19),
(372, '	RINCON DE LOPEZ	', 12494, 19),
(373, '	RIO YABOTAY	', 12634, 19),
(374, '	ROCA CHICA	', 12647, 19),
(375, '	RUINAS DE LORETO	', 12725, 19),
(376, '	RUIZ DE MONTOYA	', 12730, 19),
(377, '	SALTO ENCANTADO	', 12862, 19),
(378, '	SAMAMBAYA	', 12868, 19),
(379, '	SAN ALBERTO	', 18571, 19),
(380, '	SAN ANDRES	', 18580, 19),
(381, '	SAN ANTONIO	', 18594, 19),
(382, '	SAN CARLOS	', 18621, 19),
(383, '	SAN FRANCISCO DE ASIS	', 12964, 19),
(384, '	SAN GOTARDO	', 12981, 19),
(385, '	SAN IGNACIO	', 18700, 19),
(386, '	SAN ISIDRO	', 18711, 19),
(387, '	SAN ISIDRO	', 20777, 19),
(388, '	SAN JAVIER	', 18722, 19),
(389, '	SAN JOSE	', 18752, 19),
(390, '	SAN JUAN	', 18765, 19),
(391, '	SAN JUAN DE LA SIERRA	', 13047, 19),
(392, '	SAN LUCAS	', 18797, 19),
(393, '	SAN MARTIN	', 18818, 19),
(394, '	SAN MIGUEL	', 18833, 19),
(395, '	SAN PEDRO	', 18861, 19),
(396, '	SAN SEBASTIAN	', 18907, 19),
(397, '	SANTA ANA	', 18936, 19),
(398, '	SANTA INES	', 18990, 19),
(399, '	SANTA MARIA LA MAYOR	', 13238, 19),
(400, '	SANTA MARIA MARTIR	', 13239, 19),
(401, '	SANTA RITA	', 19040, 19),
(402, '	SANTA ROSA	', 19054, 19),
(403, '	SANTIAGO DE LINIERS	', 13287, 19),
(404, '	SANTO PIPO	', 13303, 19),
(405, '	SAN VICENTE	', 18923, 19),
(406, '	SEGUNDA ZONA	', 13395, 19),
(407, '	SIERRA DE ORO	', 13453, 19),
(408, '	SIERRA DE SAN JOSE	', 13455, 19),
(409, '	SIERRAS SAN JUAN	', 13469, 19),
(410, '	SOL DE MAYO	', 19142, 19),
(411, '	TACUARA	', 13662, 19),
(412, '	TACUARUZU	', 13670, 19),
(413, '	TARUMA	', 13775, 19),
(414, '	TEYUGUARE	', 13839, 19),
(415, '	TIGRE	', 19189, 19),
(416, '	TIMBAUBA	', 13863, 19),
(417, '	TIRICA	', 13906, 19),
(418, '	TOBUNAS	', 13914, 19),
(419, '	TORORO	', 13972, 19),
(420, '	TORTA QUEMADA	', 13979, 19),
(421, '	TRATADO DE PAZ	', 14017, 19),
(422, '	TRES BOCAS	', 19219, 19),
(423, '	TRES CAPONES	', 19221, 19),
(424, '	TRES ESQUINAS	', 19232, 19),
(425, '	VILLA ARMONIA	', 14406, 19),
(426, '	VILLA BLANQUITA	', 14425, 19),
(427, '	VILLA BONITA	', 14426, 19),
(428, '	VILLA DON BOSCO	', 14522, 19),
(429, '	VILLA EMILIA	', 19301, 19),
(430, '	VILLA ERRECABORDE	', 14541, 19),
(431, '	VILLAFANE	', 19341, 19),
(432, '	VILLA FLOR	', 14555, 19),
(433, '	VILLA LANUS	', 14634, 19),
(434, '	VILLA LIBERTAD	', 19308, 19),
(435, '	VILLALONGA	', 19342, 19),
(436, '	VILLA OJO DE AGUA	', 14720, 19),
(437, '	VILLA ORTIZ PEREIRA	', 14725, 19),
(438, '	VILLA ROULET	', 14781, 19),
(439, '	VILLA SARUBBI	', 14822, 19),
(440, '	VILLA SVEA	', 14839, 19),
(441, '	VILLA UNION	', 19337, 19),
(442, '	VILLA VENECIA	', 14861, 19),
(443, '	VILLA VILMA	', 14866, 19),
(444, '	WANDA	', 14956, 19),
(445, '	YABEBIRI	', 14970, 19),
(446, '	YACUTINGA	', 14994, 19),
(447, '	YAPEYU CENTRO	', 15017, 19),
(448, '	YERBAL MAMBORETA	', 15043, 19);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `operacion_iva`
--

CREATE TABLE `operacion_iva` (
  `id` int(5) NOT NULL,
  `codigo` int(2) NOT NULL,
  `descripcion` varchar(20) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `iva` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `operacion_iva`
--

INSERT INTO `operacion_iva` (`id`, `codigo`, `descripcion`, `iva`) VALUES
(1, 1, '	No Gravado	', 0),
(2, 2, '	Exento	', 0),
(3, 3, '	0%	', 0),
(4, 4, '	10,50%	', 10.5),
(5, 5, '	21%	', 21),
(6, 6, '	27%	', 27);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfil_emp`
--

CREATE TABLE `perfil_emp` (
  `id` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `cuit` varchar(30) NOT NULL,
  `inicio_act` date NOT NULL,
  `domicilio` varchar(30) NOT NULL,
  `telefono` varchar(30) NOT NULL,
  `responsable` varchar(30) NOT NULL,
  `logo` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `perfil_emp`
--

INSERT INTO `perfil_emp` (`id`, `nombre`, `cuit`, `inicio_act`, `domicilio`, `telefono`, `responsable`, `logo`) VALUES
(1, 'Yosuko Delivery', '30-12345678-1', '2018-06-01', 'Lavalle 4444', '3764-123456', 'Responsable Inscripto', 'imgs/images.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personas`
--

CREATE TABLE `personas` (
  `idpersona` int(5) NOT NULL,
  `nombre` varchar(30) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `apellido` varchar(30) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `dni` varchar(15) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `f_nac` date NOT NULL,
  `domicilio` varchar(40) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `telefono` varchar(20) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `email` varchar(20) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `codpostal` int(5) NOT NULL,
  `tipo` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `personas`
--

INSERT INTO `personas` (`idpersona`, `nombre`, `apellido`, `dni`, `f_nac`, `domicilio`, `telefono`, `email`, `codpostal`, `tipo`) VALUES
(2, 'MAICOL', 'YORDAN', '12121212', '2018-06-08', 'hidraulica', '37644455', 'correo@no.tiene', 5000, 3),
(3, 'ramon ', 'ayala', '5555555', '2017-08-15', 'barrio grande', '3764-332522', 'ramon@mail.com', 3300, 2),
(4, 'ramona ', 'peralta', '555555', '2017-08-23', 'allaestan 123', '3755-numero', 'ramona@correo.com', 3300, 3),
(31, 'pedro', 'jojojoj', '9999999', '2018-03-18', 'suhome', '3764223355', 'mail@correo', 4300, 1),
(29, 'Marcelo', 'Genius', '', '1890-07-21', 'Su casa', '3755-664455', 'notiene@Email', 4500, 1),
(22, 'Ramon', 'Ita', '', '1999-12-05', 'casa 133', '3764-255555', 'notiene@Email', 5500, 3),
(23, 'Juan Carlos', 'Pelotudo', '', '1998-07-12', 'El Yerbal', '3764-55555', 'notiene@Email', 2200, 3),
(19, 'Ramon', 'gigena', '', '1988-05-21', 'asddd', '3764-558899', 'correo@micorreo.com', 5500, 3),
(24, 'Vieja', 'Esquina', '', '1996-05-04', 'barrio grande', '3764-55555', 'notiene@Email', 4000, 2),
(25, 'Juan', 'ROman', '', '1999-05-12', 'asdd', '376', 'notiene@Email', 5000, 3),
(49, 'aaaaaa', 'bbbbbbb', '', '2018-06-21', 'dddddd', 'ttttt', 'qqqqqq', 4000, 2),
(32, 'pedro', 'jojojoj', '', '2018-03-18', 'suhome', '3764223355', 'mail@correo', 4300, 1),
(27, 'Consumidor', 'Final', '', '1700-02-01', 'notiene', 'tampoco', 'notiene@Email', 3300, 3),
(30, 'Juanca', 'Rlos', '', '1999-08-21', 'Lavalle 2233', 'telefono', 'notiene@Email', 3600, 1),
(48, 'PEPE', ' MUJICA', '', '1912-12-12', '1234 PRINCIPAL', ' 3764-5555', 'CORREO@NOTIENE', 5000, 2),
(34, 'pedro', 'jojojoj', '', '2018-03-18', 'suhome', '3764223355', 'mail@correo', 4300, 1),
(35, 'juan', 'Carlos', '', '2018-03-18', '', '344-335566', 'correo@no.tiene', 4500, 3),
(36, 'juan', 'PEDRO', '', '2018-03-19', '', '376-666666', 'correo@no.tiene', 4500, 2),
(45, 'juanjuan', ' Perez', '', '2018-06-04', 'hidraulica', ' 37644455', 'correo@electro', 4000, 1),
(46, 'MAAAAN', ' MAAAAD', '', '1990-12-21', '1234 SIEMPREVIVA', ' 37666666', 'CORREO@NUEVO', 5000, 2),
(47, 'RAMOS', ' MEJIA', '', '1980-09-21', '1234 SIEMPREVIVA', ' 3764-555666', 'CORREO@ELECTRONICO', 3200, 2),
(50, 'JUAN', ' CARLO', '111111222', '1800-12-12', '1234 SIEMPREVIVA', ' 3764-555555', 'corre@electronico', 5000, 1),
(51, 'JUAC', ' ARLOS', '77777', '1999-12-12', '1234', ' 12121212', 'corre@electronico', 4444, 1),
(52, 'Raul', ' coso', '7777', '2009-05-12', '1234 SIEMPREVIVA', ' 3764-555555', 'CORREO@NUEVO', 5000, 2),
(53, 'AAAAAAAAA', ' BBBBB', '2222222222', '2000-12-12', '1234 SIEMPREVIVA', ' 376-666666', 'CORREO@NUEVO', 5000, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `provincias`
--

CREATE TABLE `provincias` (
  `id` int(5) NOT NULL,
  `codigo` int(3) NOT NULL,
  `descripcion` varchar(30) NOT NULL,
  `abr` varchar(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `provincias`
--

INSERT INTO `provincias` (`id`, `codigo`, `descripcion`, `abr`) VALUES
(1, 0, '	Ciudad Autónoma de Bs As	', '	CABA'),
(2, 1, '	Buenos Aires	', '	BA	'),
(3, 2, '	Catamara	', '	CA	'),
(4, 3, '	Córdoba	', '	CB	'),
(5, 4, '	Corrientes	', '	CR	'),
(6, 5, '	Entre Ríos	', '	ER	'),
(7, 6, '	Jujuy	', '	JY	'),
(8, 7, '	Mendoza	', '	MZ	'),
(9, 8, '	La Rioja	', '	LR	'),
(10, 9, '	Salta	', '	SA	'),
(11, 10, '	San Juan	', '	SJ	'),
(12, 11, '	San Luis	', '	SL	'),
(13, 12, '	Santa Fe	', '	SF	'),
(14, 13, '	Santiago del Estero	', '	SE	'),
(15, 14, '	Tucumán	', '	TUC	'),
(16, 16, '	Chaco	', '	CH	'),
(17, 17, '	Chubut	', '	CT	'),
(18, 18, '	Formosa	', '	FO	'),
(19, 19, '	Misiones	', '	MI	'),
(20, 20, '	Neuquén	', '	NQ	'),
(21, 21, '	La Pampa	', '	LP	'),
(22, 22, '	Río Negro	', '	RN	'),
(23, 23, '	Santa Cruz	', '	SC	'),
(24, 24, '	Tierra del Fuego	', '	TF	');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_comprobantes`
--

CREATE TABLE `tipo_comprobantes` (
  `id` int(5) NOT NULL,
  `codigo` int(3) NOT NULL,
  `denominacion` varchar(140) NOT NULL,
  `abr` varchar(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tipo_comprobantes`
--

INSERT INTO `tipo_comprobantes` (`id`, `codigo`, `denominacion`, `abr`) VALUES
(1, 1, '	FACTURAS A	', '		'),
(2, 2, '	NOTAS DE DEBITO A	', '		'),
(3, 3, '	NOTAS DE CREDITO A	', '		'),
(4, 4, '	RECIBOS A	', '		'),
(5, 5, '	NOTAS DE VENTA AL CONTADO A	', '		'),
(6, 6, '	FACTURAS B	', '		'),
(7, 7, '	NOTAS DE DEBITO B	', '		'),
(8, 8, '	NOTAS DE CREDITO B	', '		'),
(9, 9, '	RECIBOS B	', '		'),
(10, 10, '	NOTAS DE VENTA AL CONTADO B	', '		'),
(11, 11, '	FACTURAS C	', '		'),
(12, 12, '	NOTAS DE DEBITO C	', '		'),
(13, 13, '	NOTAS DE CREDITO C	', '		'),
(14, 14, '	DOCUMENTO ADUANERO	', '		'),
(15, 15, '	RECIBOS C	', '		'),
(16, 16, '	NOTAS DE VENTA AL CONTADO C	', '		'),
(17, 19, '	FACTURAS DE EXPORTACION	', '		'),
(18, 20, '	NOTAS DE DEBITO POR OPERACIONES CON EL EXTERIOR	', '		'),
(19, 21, '	NOTAS DE CREDITO POR OPERACIONES CON EL EXTERIOR	', '		'),
(20, 22, '	FACTURAS - PERMISO EXPORTACION SIMPLIFICADO - DTO. 855/97	', '		'),
(21, 30, '	COMPROBANTES DE COMPRA DE BIENES USADOS	', '		'),
(22, 31, '	MANDATO - CONSIGNACION	', '		'),
(23, 32, '	COMPROBANTES PARA RECICLAR MATERIALES	', '		'),
(24, 34, '	COMPROBANTES A DEL APARTADO A  INCISO F  R G  N  1415	', '		'),
(25, 35, '	COMPROBANTES B DEL ANEXO I, APARTADO A, INC. F), RG N° 1415	', '		'),
(26, 36, '	COMPROBANTES C DEL Anexo I, Apartado A, INC.F), R.G. N° 1415	', '		'),
(27, 37, '	NOTAS DE DEBITO O DOCUMENTO EQUIVALENTE QUE CUMPLAN CON LA R.G. N° 1415	', '		'),
(28, 38, '	NOTAS DE CREDITO O DOCMENTO EQUIVALENTE QUE CUMPLAN CON LA R.G. N° 1415	', '		'),
(29, 39, '	OTROS COMPROBANTES A QUE CUMPLEN CON LA R G  1415	', '		'),
(30, 40, '	OTROS COMPROBANTES B QUE CUMPLAN CON LA R.G. N° 1415	', '		'),
(31, 41, '	OTROS COMPROBANTES C QUE CUMPLAN CON LA R.G. N° 1415	', '		'),
(32, 50, '	RECIBO FACTURA A  REGIMEN DE FACTURA DE CREDITO 	', '		'),
(33, 51, '	FACTURAS M	', '		'),
(34, 52, '	NOTAS DE DEBITO M	', '		'),
(35, 53, '	NOTAS DE CREDITO M	', '		'),
(36, 54, '	RECIBOS M	', '		'),
(37, 55, '	NOTAS DE VENTA AL CONTADO M	', '		'),
(38, 56, '	COMPROBANTES M DEL ANEXO I  APARTADO A  INC F   R G  N  1415	', '		'),
(39, 57, '	OTROS COMPROBANTES M QUE CUMPLAN CON LA R G  N  1415	', '		'),
(40, 58, '	CUENTAS DE VENTA Y LIQUIDO PRODUCTO M	', '		'),
(41, 59, '	LIQUIDACIONES M	', '		'),
(42, 60, '	CUENTAS DE VENTA Y LIQUIDO PRODUCTO A	', '		'),
(43, 61, '	CUENTAS DE VENTA Y LIQUIDO PRODUCTO B	', '		'),
(44, 63, '	LIQUIDACIONES A	', '		'),
(45, 64, '	LIQUIDACIONES B	', '		'),
(46, 65, '	NOTAS DE CREDITO DE COMPROBANTES CON COD. 34, 39, 58, 59, 60, 63, 96, 97 	', '		'),
(47, 66, '	DESPACHO DE IMPORTACION	', '		'),
(48, 67, '	IMPORTACION DE SERVICIOS	', '		'),
(49, 68, '	LIQUIDACION C	', '		'),
(50, 70, '	RECIBOS FACTURA DE CREDITO	', '		'),
(51, 71, '	CREDITO FISCAL POR CONTRIBUCIONES PATRONALES	', '		'),
(52, 73, '	FORMULARIO 1116 RT	', '		'),
(53, 74, '	CARTA DE PORTE PARA EL TRANSPORTE AUTOMOTOR PARA GRANOS	', '		'),
(54, 75, '	CARTA DE PORTE PARA EL TRANSPORTE FERROVIARIO PARA GRANOS	', '		'),
(55, 77, '		', '		'),
(56, 78, '		', '		'),
(57, 79, '		', '		'),
(58, 80, '	COMPROBANTE DIARIO DE CIERRE (ZETA)	', '		'),
(59, 81, '	TIQUE FACTURA A   CONTROLADORES FISCALES	', '		'),
(60, 82, '	TIQUE - FACTURA B	', '		'),
(61, 83, '	TIQUE	', '		'),
(62, 84, '	COMPROBANTE   FACTURA DE SERVICIOS PUBLICOS   INTERESES FINANCIEROS	', '		'),
(63, 85, '	NOTA DE CREDITO   SERVICIOS PUBLICOS   NOTA DE CREDITO CONTROLADORES FISCALES	', '		'),
(64, 86, '	NOTA DE DEBITO   SERVICIOS PUBLICOS	', '		'),
(65, 87, '	OTROS COMPROBANTES - SERVICIOS DEL EXTERIOR	', '		'),
(66, 88, '	OTROS COMPROBANTES - DOCUMENTOS EXCEPTUADOS / REMITO ELECTRONICO 	', '		'),
(67, 89, '	OTROS COMPROBANTES - DOCUMENTOS EXCEPTUADOS - NOTAS DE DEBITO / RESUMEN DE DATOS	', '		'),
(68, 90, '	OTROS COMPROBANTES - DOCUMENTOS EXCEPTUADOS - NOTAS DE CREDITO	', '		'),
(69, 91, '	REMITOS R	', '		'),
(70, 92, '	AJUSTES CONTABLES QUE INCREMENTAN EL DEBITO FISCAL	', '		'),
(71, 93, '	AJUSTES CONTABLES QUE DISMINUYEN EL DEBITO FISCAL	', '		'),
(72, 94, '	AJUSTES CONTABLES QUE INCREMENTAN EL CREDITO FISCAL	', '		'),
(73, 95, '	AJUSTES CONTABLES QUE DISMINUYEN EL CREDITO FISCAL	', '		'),
(74, 96, '	FORMULARIO 1116 B	', '		'),
(75, 97, '	FORMULARIO 1116 C	', '		'),
(76, 99, '	OTROS COMP  QUE NO CUMPLEN CON LA R G  3419 Y SUS MODIF 	', '		'),
(77, 101, '	AJUSTE ANUAL PROVENIENTE DE LA  D J  DEL IVA  POSITIVO 	', '		'),
(78, 102, '	AJUSTE ANUAL PROVENIENTE DE LA  D J  DEL IVA  NEGATIVO 	', '		'),
(79, 103, '	NOTA DE ASIGNACION	', '		'),
(80, 104, '	NOTA DE CREDITO DE ASIGNACION	', '		');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_documento`
--

CREATE TABLE `tipo_documento` (
  `id` int(32) NOT NULL,
  `codigo` int(2) NOT NULL,
  `descipcion` varchar(30) NOT NULL,
  `comodin` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tipo_documento`
--

INSERT INTO `tipo_documento` (`id`, `codigo`, `descipcion`, `comodin`) VALUES
(1, 0, '	CI Policía Federal	', '		'),
(2, 1, '	CI Buenos Aires	', '		'),
(3, 2, '	CI Catamarca	', '		'),
(4, 3, '	CI Córdoba	', '		'),
(5, 4, '	CI Corrientes	', '		'),
(6, 5, '	CI Entre Ríos	', '		'),
(7, 6, '	CI Jujuy	', '		'),
(8, 7, '	CI Mendoza	', '		'),
(9, 8, '	CI La Rioja	', '		'),
(10, 9, '	CI Salta	', '		'),
(11, 10, '	CI San Juan	', '		'),
(12, 11, '	CI San Luis	', '		'),
(13, 12, '	CI Santa Fe	', '		'),
(14, 13, '	CI Santiago del Estero	', '		'),
(15, 14, '	CI Tucumán	', '		'),
(16, 16, '	CI Chaco	', '		'),
(17, 17, '	CI Chubut	', '		'),
(18, 18, '	CI Formosa	', '		'),
(19, 19, '	CI Misiones	', '		'),
(20, 20, '	CI Neuquén	', '		'),
(21, 21, '	CI La Pampa	', '		'),
(22, 22, '	CI Río Negro	', '		'),
(23, 23, '	CI Santa Cruz	', '		'),
(24, 24, '	CI Tierra del Fuego	', '		'),
(25, 80, '	CUIT	', '		'),
(26, 86, '	CUIL	', '		'),
(27, 87, '	CDI	', '		'),
(28, 89, '	LE	', '		'),
(29, 90, '	LC	', '		'),
(30, 91, '	CI extranjera	', '		'),
(31, 92, '	en trámite	', '		'),
(32, 93, '	Acta nacimiento	', '		'),
(33, 94, '	Pasaporte	', '		'),
(34, 95, '	CI Bs. As. RNP	', '		'),
(35, 96, '	DNI	', '		'),
(36, 99, '	Sin identificar/venta global ', '		'),
(37, 30, '	Certificado de Migración	', '		'),
(38, 88, '	Usado por Anses para Padrón	', '		');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_persona`
--

CREATE TABLE `tipo_persona` (
  `id_tipo` int(5) NOT NULL,
  `descripcion` varchar(15) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tipo_persona`
--

INSERT INTO `tipo_persona` (`id_tipo`, `descripcion`) VALUES
(1, 'Empleado'),
(2, 'Proveedor'),
(3, 'Cliente'),
(4, 'Otros');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_responsables`
--

CREATE TABLE `tipo_responsables` (
  `id` int(2) NOT NULL,
  `codigo` int(2) NOT NULL,
  `descripcion` varchar(50) NOT NULL,
  `iva` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tipo_responsables`
--

INSERT INTO `tipo_responsables` (`id`, `codigo`, `descripcion`, `iva`) VALUES
(1, 1, '	IVA Responsable Inscripto	', 21),
(2, 2, '	IVA Responsable no Inscripto	', 21),
(3, 3, '	IVA no Responsable	', 21),
(4, 4, '	IVA Sujeto Exento	', 21),
(5, 5, '	Consumidor Final	', 21),
(6, 6, '	Responsable Monotributo	', 21),
(7, 7, '	Sujeto no Categorizado	', 21),
(8, 8, '	Proveedor del Exterior	', 21),
(9, 9, '	Cliente del Exterior	', 21),
(10, 10, '	IVA Liberado – Ley Nº 19.640	', 21),
(11, 11, '	IVA Responsable Inscripto – Agente de Percepción	', 21),
(12, 12, '	Pequeño Contribuyente Eventual	', 21),
(13, 13, '	Monotributista Social	', 21),
(14, 14, '	Pequeño Contribuyente Eventual Social	', 21);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `unidades_medida`
--

CREATE TABLE `unidades_medida` (
  `id` int(5) NOT NULL,
  `codigo` int(3) NOT NULL,
  `descripcion` varchar(30) CHARACTER SET latin1 NOT NULL,
  `simbolo` varchar(5) CHARACTER SET latin1 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `unidades_medida`
--

INSERT INTO `unidades_medida` (`id`, `codigo`, `descripcion`, `simbolo`) VALUES
(1, 0, '	SIN DESCRIPCION	', '		'),
(2, 1, '	KILOGRAMO	', 'kg'),
(3, 2, '	METROS	', 'm	'),
(4, 3, '	METRO CUADRADO	', 'm2	'),
(5, 4, '	METRO CUBICO	', '		'),
(6, 5, '	LITROS	', '		'),
(7, 6, '	1000 KILOWATT HORA	', '		'),
(8, 7, '	UNIDAD	', '		'),
(9, 8, '	PAR	', '		'),
(10, 9, '	DOCENA	', '		'),
(11, 10, '	QUILATE	', '		'),
(12, 11, '	MILLAR	', '		'),
(13, 12, '	MEGA U. INTER. ACT. ANTIB	', '		'),
(14, 13, '	UNIDAD INT. ACT. INMUNG	', '		'),
(15, 14, '	GRAMO	', '		'),
(16, 15, '	MILIMETRO	', '		'),
(17, 16, '	MILIMETRO CUBICO	', '		'),
(18, 17, '	KILOMETRO	', '		'),
(19, 18, '	HECTOLITRO	', '		'),
(20, 19, '	MEGA UNIDAD INT. ACT. INMUNG	', '		'),
(21, 20, '	CENTIMETRO	', '		'),
(22, 21, '	KILOGRAMO ACTIVO	', '		'),
(23, 22, '	GRAMO ACTIVO	', '		'),
(24, 23, '	GRAMO BASE	', '		'),
(25, 24, '	UIACTHOR	', '		'),
(26, 25, '	JGO.PQT. MAZO NAIPES	', '		'),
(27, 26, '	MUIACTHOR	', '		'),
(28, 27, '	CENTIMETRO CUBICO	', '		'),
(29, 28, '	UIACTANT	', '		'),
(30, 29, '	TONELADA	', '		'),
(31, 30, '	DECAMETRO CUBICO	', '		'),
(32, 31, '	HECTOMETRO CUBICO	', '		'),
(33, 32, '	KILOMETRO CUBICO	', '		'),
(34, 33, '	MICROGRAMO	', '		'),
(35, 34, '	NANOGRAMO	', '		'),
(36, 35, '	PICOGRAMO	', '		'),
(37, 36, '	MUIACTANT	', '		'),
(38, 37, '	UIACTIG	', '		'),
(39, 41, '	MILIGRAMO	', '		'),
(40, 47, '	MILILITRO	', '		'),
(41, 48, '	CURIE	', '		'),
(42, 49, '	MILICURIE	', '		'),
(43, 50, '	MICROCURIE	', '		'),
(44, 51, '	U.INTER. ACT. HORMONAL	', '		'),
(45, 52, 'MEGA U. INTER. ACT. HOR.', '		'),
(46, 53, '	KILOGRAMO BASE	', '		'),
(47, 54, '	GRUESA	', '		'),
(48, 55, '	MUIACTIG	', '		'),
(49, 61, '	KILOGRAMO BRUTO	', '		'),
(50, 62, '	PACK	', '		'),
(51, 63, '	HORMA	', '		'),
(52, 97, '	SEÑAS/ANTICIPOS	', '		'),
(53, 98, '	OTRAS UNIDADES	', '		'),
(54, 99, '	BONIFICACION	', '		');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `zonas_adm`
--

CREATE TABLE `zonas_adm` (
  `id` int(11) NOT NULL,
  `abr` varchar(3) CHARACTER SET latin1 NOT NULL,
  `descr` varchar(20) CHARACTER SET latin1 NOT NULL,
  `zona` varchar(255) CHARACTER SET latin1 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `zonas_adm`
--

INSERT INTO `zonas_adm` (`id`, `abr`, `descr`, `zona`) VALUES
(1, '	BA', '	Buenos Aires	', '	America/Argentina/Buenos_Aires	'),
(2, '	CA', '	Catamarca	', '	America/Argentina/Catamarca	'),
(3, '	CB', '	Córdoba	', '	America/Argentina/Cordoba	'),
(4, '	JY', '	Jujuy	', '	America/Argentina/Jujuy	'),
(5, '	LR', '	La Rioja	', '	America/Argentina/La_Rioja	'),
(6, '	MZ', '	Mendoza	', '	America/Argentina/Mendoza	'),
(7, '	SC', '	Santa Cruz	', '	America/Argentina/Rio_Gallegos	'),
(8, '	SA', '	Salta	', '	America/Argentina/Salta	'),
(9, '	SJ', '	San Juan	', '	America/Argentina/San_Juan	'),
(10, '	SL', '	San Luis	', '	America/Argentina/San_Luis	'),
(11, '	TU', '	Tucumán	', '	America/Argentina/Tucuman	'),
(12, '	TF', '	Tierra del Fuego, A', '	America/Argentina/Ushuaia	');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `articulo`
--
ALTER TABLE `articulo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cuentas`
--
ALTER TABLE `cuentas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `localidades`
--
ALTER TABLE `localidades`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `operacion_iva`
--
ALTER TABLE `operacion_iva`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `perfil_emp`
--
ALTER TABLE `perfil_emp`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `personas`
--
ALTER TABLE `personas`
  ADD PRIMARY KEY (`idpersona`);

--
-- Indices de la tabla `provincias`
--
ALTER TABLE `provincias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipo_comprobantes`
--
ALTER TABLE `tipo_comprobantes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipo_documento`
--
ALTER TABLE `tipo_documento`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipo_persona`
--
ALTER TABLE `tipo_persona`
  ADD PRIMARY KEY (`id_tipo`);

--
-- Indices de la tabla `tipo_responsables`
--
ALTER TABLE `tipo_responsables`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `unidades_medida`
--
ALTER TABLE `unidades_medida`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `zonas_adm`
--
ALTER TABLE `zonas_adm`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `articulo`
--
ALTER TABLE `articulo`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT de la tabla `cuentas`
--
ALTER TABLE `cuentas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT de la tabla `localidades`
--
ALTER TABLE `localidades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=449;
--
-- AUTO_INCREMENT de la tabla `operacion_iva`
--
ALTER TABLE `operacion_iva`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `perfil_emp`
--
ALTER TABLE `perfil_emp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `personas`
--
ALTER TABLE `personas`
  MODIFY `idpersona` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;
--
-- AUTO_INCREMENT de la tabla `provincias`
--
ALTER TABLE `provincias`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT de la tabla `tipo_comprobantes`
--
ALTER TABLE `tipo_comprobantes`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;
--
-- AUTO_INCREMENT de la tabla `tipo_documento`
--
ALTER TABLE `tipo_documento`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT de la tabla `tipo_persona`
--
ALTER TABLE `tipo_persona`
  MODIFY `id_tipo` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `tipo_responsables`
--
ALTER TABLE `tipo_responsables`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT de la tabla `unidades_medida`
--
ALTER TABLE `unidades_medida`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
--
-- AUTO_INCREMENT de la tabla `zonas_adm`
--
ALTER TABLE `zonas_adm`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
