-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 13-06-2024 a las 17:10:18
-- Versión del servidor: 8.2.0
-- Versión de PHP: 8.2.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `argentum`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `agenda`
--

DROP TABLE IF EXISTS `agenda`;
CREATE TABLE IF NOT EXISTS `agenda` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cuil` varchar(11) COLLATE utf8mb4_general_ci NOT NULL,
  `nombre` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(254) COLLATE utf8mb4_general_ci NOT NULL,
  `banco` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `cbu` varchar(22) COLLATE utf8mb4_general_ci NOT NULL,
  `alias` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `moneda` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bancos`
--

DROP TABLE IF EXISTS `bancos`;
CREATE TABLE IF NOT EXISTS `bancos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cuit` varchar(11) COLLATE utf8mb4_general_ci NOT NULL,
  `nombre` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `bancos`
--

INSERT INTO `bancos` (`id`, `cuit`, `nombre`) VALUES
(1, '30-70722741', 'BACS BANCO DE CREDITO Y SECURITIZACION S.A.'),
(2, '30-71233123', 'BANCO BICA S.A.'),
(3, '30-70125555', 'BANCO BRADESCO ARGENTINA S.A.'),
(4, '30-69730636', 'BANCO CETELEM ARGENTINA S.A.'),
(5, '30-57661429', 'BANCO CMF S.A.'),
(6, '30-71419596', 'BANCO COINAG S.A. '),
(7, '30-51763749', 'BANCO COLUMBIA S.A.'),
(8, '30-60473101', 'BANCO COMAFI S.A.'),
(9, '30-57142135', 'BANCO CREDICOOP COOP. LTDO.'),
(10, '30-54203363', 'BANCO DE COMERCIO S.A.'),
(11, '30-50001060', 'BANCO DE CORRIENTES S.A.'),
(12, '30-67137590', 'BANCO DE FORMOSA S.A.'),
(13, '30-50000173', 'BANCO DE GALICIA Y BUENOS AIRES S.A.'),
(14, '30-65112908', 'BANCO DE INVERSION Y COMERCIO EXTERIOR S.A.'),
(15, '30-99903208', 'BANCO DE LA CIUDAD DE BUENOS AIRES'),
(16, '30-50001091', 'BANCO DE LA NACION ARGENTINA'),
(17, '30-50001251', 'BANCO DE LA PAMPA S.E.M.'),
(18, '33-99924210', 'BANCO DE LA PROVINCIA DE BUENOS AIRES'),
(19, '30-99922856', 'BANCO DE LA PROVINCIA DE CORDOBA S.A.'),
(20, '30-58833784', 'BANCO DE LA REPUBLICA ORIENTAL DEL URUGUAY'),
(21, '30-50000944', 'BANCO DE SAN JUAN S.A.'),
(22, '30-50009880', 'BANCO DE SANTA CRUZ S.A.'),
(23, '33-68666464', 'BANCO DE SANTIAGO DEL ESTERO S.A.'),
(24, '30-69726589', 'BANCO DE SERVICIOS FINANCIEROS S.A.'),
(25, '30-70496099', 'BANCO DE SERVICIOS Y TRANSACCIONES S.A.'),
(26, '30-57612427', 'BANCO DE VALORES S.A.'),
(27, '30-50001299', 'BANCO DEL CHUBUT S.A.'),
(28, '30-67793756', 'BANCO DEL SOL S.A.'),
(29, '30-51794820', 'BANCO DEL TUCUMAN S.A.'),
(30, '30-51895424', 'BANCO FINANSUR S.A.'),
(31, '30-50001107', 'BANCO HIPOTECARIO S.A.'),
(32, '30-68502995', 'BANCO INDUSTRIAL S.A.'),
(33, '30-52271441', 'BANCO INTERFINANZAS S.A.'),
(34, '30-58018941', 'BANCO ITAU ARGENTINA S.A.'),
(35, '30-65744121', 'BANCO JULIO S.A.'),
(36, '30-50001008', 'BANCO MACRO S.A.'),
(37, '30-51642044', 'BANCO MARIVA S.A.'),
(38, '30-54061826', 'BANCO MASVENTAS S.A.'),
(39, '30-53448749', 'BANCO MERIDIAN S.A.'),
(40, '33-99918181', 'BANCO MUNICIPAL DE ROSARIO'),
(41, '30-50000661', 'BANCO PATAGONIA S.A.'),
(42, '30-56915176', 'BANCO PIANO S.A.'),
(43, '30-57565578', 'BANCO PROVINCIA DE TIERRA DEL FUEGO'),
(44, '30-50001404', 'BANCO PROVINCIA DEL NEUQUEN S.A.'),
(45, '30-67185933', 'BANCO RIOJA SOCIEDAD ANONIMA UNIPERSONAL'),
(46, '30-53561044', 'BANCO ROELA S.A.'),
(47, '30-53467243', 'BANCO SAENZ S.A.'),
(48, '30-50000845', 'BANCO SANTANDER RIO  S.A.'),
(49, '33-50000517', 'BANCO SUPERVIELLE S.A.'),
(50, '30-54674163', 'BANCO VOII S.A.'),
(51, '30-50005055', 'BANK OF AMERICA NATIONAL ASSOCIATION'),
(52, '30-50000319', 'BBVA BANCO FRANCES S.A.'),
(53, '30-58472756', 'BNP PARIBAS'),
(54, '30-50000562', 'CITIBANK N.A.'),
(55, '30-69379233', 'DEUTSCHE BANK S.A.'),
(56, '33-53718600', 'HSBC BANK ARGENTINA S.A.'),
(57, '30-58313794', 'JP MORGAN CHASE BANK NATIONAL ASSOCIATION'),
(58, '33-70799551', 'NUEVO BANCO DE ENTRE RIOS S.A.'),
(59, '30-69243266', 'NUEVO BANCO DE SANTA FE S.A.'),
(60, '30-67015779', 'NUEVO BANCO DEL CHACO S.A.'),
(61, '30-70710834', 'RCI BANQUE S.A.'),
(62, '30-70944784', 'INDUSTRIAL AND COMMERCIAL BANK OF CHINA (ARG.) SA'),
(63, '30-50001183', 'THE BANK OF TOKYO - MITSUBISHI UFJ. LTD.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

DROP TABLE IF EXISTS `cliente`;
CREATE TABLE IF NOT EXISTS `cliente` (
  `id` int NOT NULL AUTO_INCREMENT,
  `dni` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `cuil` varchar(11) COLLATE utf8mb4_general_ci NOT NULL,
  `apellido` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `nombres` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `usuario` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `clave` varchar(4) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(254) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`id`, `dni`, `cuil`, `apellido`, `nombres`, `usuario`, `clave`, `email`) VALUES
(1, '99999999', '20999999990', 'Sanchez', 'María Victoria', 'codoacodo', '1234', 'maria.victoria@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuentas`
--

DROP TABLE IF EXISTS `cuentas`;
CREATE TABLE IF NOT EXISTS `cuentas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cliente` varchar(11) COLLATE utf8mb4_general_ci NOT NULL,
  `nrocuenta` varchar(12) COLLATE utf8mb4_general_ci NOT NULL,
  `cbu` varchar(22) COLLATE utf8mb4_general_ci NOT NULL,
  `alias` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `saldo` decimal(10,2) NOT NULL,
  `moneda` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cuentas`
--

INSERT INTO `cuentas` (`id`, `cliente`, `nrocuenta`, `cbu`, `alias`, `saldo`, `moneda`) VALUES
(1, '20999999990', '084-123456/5', '0720084788000012345650', 'codo.a.codo', 392132.15, 1),
(2, '20999999990', '084-999999/9', '0720084788000099999990', 'full.stack.python', 0.00, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `movimientos`
--

DROP TABLE IF EXISTS `movimientos`;
CREATE TABLE IF NOT EXISTS `movimientos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cliente` varchar(11) COLLATE utf8mb4_general_ci NOT NULL,
  `nrocuenta` varchar(12) COLLATE utf8mb4_general_ci NOT NULL,
  `fecha` date NOT NULL,
  `nrotransaccion` int NOT NULL,
  `descripcion` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `importe` decimal(10,2) NOT NULL,
  `saldo` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `movimientos`
--

INSERT INTO `movimientos` (`id`, `cliente`, `nrocuenta`, `fecha`, `nrotransaccion`, `descripcion`, `importe`, `saldo`) VALUES
(1, '20999999990', '1', '2024-05-12', 16733114, 'Compra con tarjeta de debito 	 Farmacia curie - tarj nro. 1669', -9880.00, -1944.17),
(2, '20999999990', '1', '2024-05-13', 42970469, 'Transferencia recibida 	 De severo/carlos          /              - var / 20146301062', 15000.00, 13055.83),
(3, '20999999990', '1', '2024-05-17', 14301551, 'Transferencia recibida 	 De linares  carlos o      /              - fac / 20102285108', 30000.00, 43055.83),
(4, '20999999990', '1', '2024-05-18', 14255271, 'Compra con tarjeta de debito 	 Merpago*beysan - tarj nro. 1669', -11100.00, 25355.83),
(5, '20999999990', '1', '2024-05-18', 12869969, 'Compra con tarjeta de debito 	 Los mussini - tarj nro. 1669', -6600.00, 36455.83),
(6, '20999999990', '1', '2024-05-20', 60647033, 'Pago de servicios 	 C rosales abl: 010000000047393', -5696.01, 8159.82),
(7, '20999999990', '1', '2024-05-20', 10669533, 'Compra con tarjeta de debito 	 Merpago*lanueva - tarj nro. 1669', -6500.00, 13855.83),
(8, '20999999990', '1', '2024-05-20', 31304595, 'Pago de servicios 	 Recarga sube: 6061268259397871', -5000.00, 20355.83),
(9, '20999999990', '1', '2024-05-21', 56497412, 'Compra con tarjeta de debito 	 Cooperativa obrera - tarj nro. 1669', -12750.55, 15409.27),
(10, '20999999990', '1', '2024-05-21', 95832232, 'Transferencia recibida 	 De patricia del pilar mol /              - var / 27208152985', 20000.00, 28159.82),
(11, '20999999990', '1', '2024-05-23', 1104340, 'Seguro de accidentes personales 	 Por deb:23/05/2024 part 000000000001104340', -11849.64, 3559.63),
(12, '20999999990', '1', '2024-05-24', 5511, 'Traspaso de saldo exento de c cte 	 De cuenta corriente a caja de ahorro', 0.00, -2406.57),
(13, '20999999990', '1', '2024-05-24', 5510, 'Traspaso de saldo entre cuentas 	 De cuenta corriente a caja de ahorro', 2406.57, 0.00),
(14, '20999999990', '1', '2024-05-24', 56850750, 'Compra con tarjeta de debito 	 Cooperativa obrera - tarj nro. 1669', -58966.20, -2406.57),
(15, '20999999990', '1', '2024-05-24', 50684054, 'Transferencia recibida 	 De patricia del pilar mol /              - var / 27208152985', 10000.00, 56559.63),
(16, '20999999990', '1', '2024-05-24', 56678281, 'Transferencia recibida 	 De patricia del pilar mol /              - var / 27208152985', 10000.00, 46559.63),
(17, '20999999990', '1', '2024-05-24', 99104910, 'Transferencia inmediata 	 A diego german sanchez    / varios       - var / 20278277489', -7000.00, 36559.63),
(18, '20999999990', '1', '2024-05-24', 98911533, 'Transferencia inmediata 	 A carmen del yessica carr / varios       - var / 27188236540', -10000.00, 43559.63),
(19, '20999999990', '1', '2024-05-24', 95270195, 'Transf recibida cvu mismo titular 	 De nestor david rivarola    / mercado pago   /20183061888', 50000.00, 53559.63),
(20, '20999999990', '1', '2024-05-28', 5514, 'Traspaso de saldo exento de c cte 	 De cuenta corriente a caja de ahorro', 0.00, -9406.57),
(21, '20999999990', '1', '2024-05-28', 5513, 'Traspaso de saldo entre cuentas 	 De cuenta corriente a caja de ahorro', 7000.00, -2406.57),
(22, '20999999990', '1', '2024-05-28', 56034660, 'Transferencia inmediata 	 A diego german sanchez    / varios       - var / 20278277489', -7000.00, -9406.57),
(23, '20999999990', '1', '2024-05-29', 5517, 'Traspaso de saldo entre cuentas 	 De caja de ahorro a cuenta corriente', -9406.57, 70593.43),
(24, '20999999990', '1', '2024-05-29', 5516, 'Traspaso de saldo exento a c cte 	 De caja de ahorro a cuenta corriente', 0.00, 80000.00),
(25, '20999999990', '1', '2024-05-29', 60105924, 'Transferencia recibida 	 De rivarola/nestor dav    /              - var / 20183061888', 80000.00, 70593.43),
(26, '20999999990', '1', '2024-05-30', 5522, 'Traspaso de saldo exento de c cte 	 De cuenta corriente a caja de ahorro', 0.00, -85244.07),
(27, '20999999990', '1', '2024-05-30', 5521, 'Traspaso de saldo entre cuentas 	 De cuenta corriente a caja de ahorro', 85244.07, 0.00),
(28, '20999999990', '1', '2024-05-30', 56790838, 'Compra con tarjeta de debito 	 Cooperativa obrera - tarj nro. 1669', -126803.50, -85244.07),
(29, '20999999990', '1', '2024-05-30', 11107692, 'Compra con tarjeta de debito 	 Panaderia lujan - tarj nro. 1669', -20034.00, 41559.43),
(30, '20999999990', '1', '2024-05-30', 8555147, 'Pago de servicios 	 Recarga sube: 6061268259397871', -9000.00, 61593.43),
(31, '20999999990', '1', '2024-05-31', 5531, 'Traspaso de saldo entre cuentas 	 De caja de ahorro a cuenta corriente', -85244.07, 22287.43),
(32, '20999999990', '1', '2024-05-31', 5530, 'Traspaso de saldo exento a c cte 	 De caja de ahorro a cuenta corriente', 0.00, 107531.50),
(33, '20999999990', '1', '2024-05-31', 1346030, 'Compra con tarjeta de debito 	 Bar central - tarj nro. 1669', -33800.00, 22287.43),
(34, '20999999990', '1', '2024-05-31', 4454, 'Retiro de efectivo en otros bancos 	 Tarj nro. 1669', -5000.00, 56087.43),
(35, '20999999990', '1', '2024-05-31', 16105372, 'Compra con tarjeta de debito 	 Vantage fcia del puert - tarj nro. 1669', -18218.50, 61087.43),
(36, '20999999990', '1', '2024-05-31', 296946, 'Transferencia recibida 	 De sociedad militar segur / 5033425      - hab / 30527516737', 100000.00, 79305.93),
(37, '20999999990', '1', '2024-05-31', 1982143, 'Compra con tarjeta de debito 	 Forraje don sebastian - tarj nro. 1669', -115450.00, -20694.07),
(38, '20999999990', '1', '2024-05-31', 27253, 'Transferencia recibida 	 De sociedad militar segur / 5031023      - hab / 30527516737', 100000.00, 94755.93),
(39, '20999999990', '1', '2024-05-31', 52330438, 'Transferencia recibida 	 De rivarola/nestor dav    /              - var / 20183061888', 80000.00, -5244.07),
(40, '20999999990', '1', '2024-06-02', 6480700, 'Transferencia recibida 	 De rivarola/nestor dav    /              - var / 20183061888', 150000.00, 172287.43),
(41, '20999999990', '1', '2024-06-03', 1117296, 'Pago a proveedores recibido 	 Jaque jonathan                20393542080 03 1117296', 100000.00, 177497.44),
(42, '20999999990', '1', '2024-06-03', 18880824, 'Compra con tarjeta de debito 	 Chop chop - tarj nro. 1669', -12000.00, 77497.44),
(43, '20999999990', '1', '2024-06-03', 15425725, 'Compra con tarjeta de debito 	 Level games - tarj nro. 1669', -6000.00, 89497.44),
(44, '20999999990', '1', '2024-06-03', 84153, 'Debito automatico 	 Personal flow da-1001931994010002', -76789.99, 95497.44),
(45, '20999999990', '1', '2024-06-04', 16140270, 'Compra con tarjeta de debito 	 Merpago*wirooscloudho - tarj nro. 1669', -16222.80, 118922.24),
(46, '20999999990', '1', '2024-06-04', 67025767, 'Transferencia realizada 	 A asoc coop esc tecnica n / varios       - var / 33688086049', -15000.00, 135145.04),
(47, '20999999990', '1', '2024-06-04', 56628017, 'Compra con tarjeta de debito 	 Cooperativa obrera - tarj nro. 1669', -16817.50, 150145.04),
(48, '20999999990', '1', '2024-06-04', 56627490, 'Compra con tarjeta de debito 	 Cooperativa obrera - tarj nro. 1669', -83534.90, 166962.54),
(49, '20999999990', '1', '2024-06-04', 60748865, 'Transferencia inmediata 	 A diego german sanchez    / varios       - var / 20278277489', -7000.00, 250497.44),
(50, '20999999990', '1', '2024-06-04', 8257937, 'Transferencia recibida 	 De rivarola/nestor dav    /              - var / 20183061888', 80000.00, 257497.44),
(51, '20999999990', '1', '2024-06-05', 9304, 'Pago de haberes 	 Transferencia s.n.p.', 691476.00, 796398.24),
(52, '20999999990', '1', '2024-06-05', 21338803, 'Compra con tarjeta de debito 	 Matias jr - tarj nro. 1669', -23700.00, 104922.24),
(53, '20999999990', '1', '2024-06-05', 807662, 'Transferencia recibida 	 De c a s tecnologia y seg /              - fac / 30709810770', 65000.00, 128622.24),
(54, '20999999990', '1', '2024-06-05', 61423713, 'Transferencia inmediata 	 A patricia del pilar moli / varios       - var / 27208152985', -20000.00, 63622.24),
(55, '20999999990', '1', '2024-06-05', 34289072, 'Transferencia realizada 	 A patricia del pilar moli / varios       - var / 27208152985', -30000.00, 83622.24),
(56, '20999999990', '1', '2024-06-05', 10747264, 'Compra con tarjeta de debito 	 Panaderia lujan - tarj nro. 1669', -5300.00, 113622.24),
(57, '20999999990', '1', '2024-06-06', 15108532, 'Compra con tarjeta de debito 	 Pibro sud srl - tarj nro. 1669', -48627.00, 469563.01),
(58, '20999999990', '1', '2024-06-06', 2783900, 'Transferencia realizada 	 A rivarola emiliano javie / varios       - var / 20410728940', -30000.00, 518190.01),
(59, '20999999990', '1', '2024-06-06', 9658135, 'Pago de servicios 	 Gas pampeana: 81090220100613841', -8760.69, 548190.01),
(60, '20999999990', '1', '2024-06-06', 2074856, 'Compra con tarjeta de debito 	 Www.camuzzi gas pampeana - tarj nro. 1669', -8760.69, 556950.70),
(61, '20999999990', '1', '2024-06-06', 87943446, 'Pago de servicios 	 Absa: 0001607487', -858.89, 565711.39),
(62, '20999999990', '1', '2024-06-06', 39237113, 'Pago de servicios 	 Absa: 0001607487', -858.89, 566570.28),
(63, '20999999990', '1', '2024-06-06', 76766748, 'Pago de servicios 	 Tarj naranja: 5895629993490781', -228969.07, 567429.17),
(64, '20999999990', '1', '2024-06-07', 5566, 'Impuesto ley 25.413 debito 0,6% 	 ', 0.00, 477595.41),
(65, '20999999990', '1', '2024-06-07', 5565, 'Traspaso de saldo entre cuentas 	 De caja de ahorro a cuenta corriente', -368.59, 477597.61),
(66, '20999999990', '1', '2024-06-07', 5564, 'Traspaso de saldo exento a c cte 	 De caja de ahorro a cuenta corriente', 0.00, 477966.20),
(67, '20999999990', '1', '2024-06-07', 62214534, 'Transferencia realizada 	 A lamique sebastian mario / varios       - var / 20402247615', -3600.00, 477597.61),
(68, '20999999990', '1', '2024-06-07', 17307896, 'Compra con tarjeta de debito 	 Merpago*micolmartin - tarj nro. 1669', -18000.00, 481197.61),
(69, '20999999990', '1', '2024-06-07', 52772327, 'Transferencia recibida 	 De rivarola/nestor dav    / varios       - var / 20183061888', 80000.00, 499197.61),
(70, '20999999990', '1', '2024-06-07', 63564656, 'Transferencia inmediata 	 A patricia del pilar moli / varios       - var / 27208152985', -50000.00, 419197.61),
(71, '20999999990', '1', '2024-06-07', 5559, 'Impuesto de sellos 	 ', 0.00, 469197.61),
(72, '20999999990', '1', '2024-06-07', 5558, 'Iva 21% 	 ', 0.00, 469201.04),
(73, '20999999990', '1', '2024-06-07', 5557, 'Cobro de interes por descubierto 	 Del 01/05/24 al 31/05/24', 0.00, 469264.03),
(74, '20999999990', '1', '2024-06-07', 5556, 'Pago interes por saldo en cuenta 	 Del 01/05/24 al 31/05/24', 0.99, 469564.00),
(75, '20999999990', '1', '2024-06-08', 17351719, 'Compra con tarjeta de debito 	 Cocina casera - tarj nro. 1669', -18600.00, 458995.41),
(76, '20999999990', '1', '2024-06-09', 89945065, 'Compra con tarjeta de debito 	 Personal flow - tarj nro. 1669', -26570.04, 411729.36),
(77, '20999999990', '1', '2024-06-09', 65336543, 'Transferencia inmediata 	 A leonardo alberto quirog / varios       - var / 20378963649', -15000.00, 438299.40),
(78, '20999999990', '1', '2024-06-09', 7941407, 'Pago de servicios 	 C rosales abl: 010000000047393', -5696.01, 453299.40),
(79, '20999999990', '1', '2024-06-10', 11729499, 'Compra con tarjeta de debito 	 Merpago*mercadopagopag - tarj nro. 1669', -19597.21, 392132.15);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tarjetas`
--

DROP TABLE IF EXISTS `tarjetas`;
CREATE TABLE IF NOT EXISTS `tarjetas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cliente` varchar(11) COLLATE utf8mb4_general_ci NOT NULL,
  `numero` varchar(16) COLLATE utf8mb4_general_ci NOT NULL,
  `vencimiento` date NOT NULL,
  `codigo` varchar(3) COLLATE utf8mb4_general_ci NOT NULL,
  `tipo` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `inicio` date NOT NULL,
  `consumo` decimal(10,2) NOT NULL,
  `limite` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tarjetas`
--

INSERT INTO `tarjetas` (`id`, `cliente`, `numero`, `vencimiento`, `codigo`, `tipo`, `inicio`, `consumo`, `limite`) VALUES
(1, '20999999990', '4000123456789101', '2026-08-01', '123', 'VISA Debito', '2020-07-01', 0.00, 15000.00),
(2, '20999999990', '4000987654321011', '2026-08-01', '987', 'VISA Credito', '2020-07-01', 0.00, 1800000.00),
(3, '20999999990', '377798765444332', '2026-08-01', '997', 'AMERICAN EXPRESS', '2020-07-01', 0.00, 1800000.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `transferencias`
--

DROP TABLE IF EXISTS `transferencias`;
CREATE TABLE IF NOT EXISTS `transferencias` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cliente` varchar(11) COLLATE utf8mb4_general_ci NOT NULL,
  `destinatario` varchar(11) COLLATE utf8mb4_general_ci NOT NULL,
  `importe` decimal(10,2) NOT NULL,
  `origen` varchar(12) COLLATE utf8mb4_general_ci NOT NULL,
  `concepto` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `referencia` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `fecha` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
