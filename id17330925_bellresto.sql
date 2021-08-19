-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 30-07-2021 a las 12:23:15
-- Versión del servidor: 10.3.16-MariaDB
-- Versión de PHP: 7.3.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `id17330925_bellresto`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `moneda`
--

CREATE TABLE `moneda` (
  `moneda_id` tinyint(3) UNSIGNED NOT NULL,
  `moneda` varchar(80) CHARACTER SET utf8 NOT NULL,
  `detalle` varchar(255) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `moneda`
--

INSERT INTO `moneda` (`moneda_id`, `moneda`, `detalle`) VALUES
(1, '$', 'Peso argentino');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `platos`
--

CREATE TABLE `platos` (
  `platos_id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `imagen` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  `descripcion` varchar(400) COLLATE utf8_unicode_ci NOT NULL,
  `precio` float(8,2) NOT NULL,
  `valoracion` tinyint(4) DEFAULT 0,
  `monedas_id_fk` tinyint(3) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `platos`
--

INSERT INTO `platos` (`platos_id`, `nombre`, `imagen`, `descripcion`, `precio`, `valoracion`, `monedas_id_fk`) VALUES
(1, 'Pizza Muzzarella', 'muzzarella.jpg', 'Base de pan de trigo con salsa de tomate, muzzarella, olivas verdes y moradas.', 650.00, 5, 1),
(2, 'Pizza Especial', 'especial.jpg', 'Salsa de tomate, morrones rojos, queso muzzarella, jamón cocido y olivas verdes.', 680.00, 4, 1),
(3, 'Gnocchi de Papa', 'gnocchi.jpg', 'Gnocchi de papa con salsa de tomate, receta original de la casa.', 850.00, 3, 1),
(4, 'Spaghetti al Huevo', 'spaghetti.jpg', 'Spaghetti al huevo con salsa de tomate, receta autentica de Bell Resto.', 780.00, 4, 1),
(5, 'Sorrentinos Genoveses', 'sorrentinos.jpg', 'Sorrentinos de espinaca con el verdadero pesto genovese.', 890.00, 4, 1),
(6, 'Milanesa Napolitana', 'milanesa.jpg', 'Milanesa napolitana con papas cortas finas.', 550.00, 5, 1),
(7, 'Milanesa Con Puré', 'milanesa-pure.jpg', 'Milanesa napolitana con puré de papas o calabaza.', 500.00, 4, 1),
(8, 'Filet de Merluza', 'filet.jpg', 'Filet de merluza a la romana con finas hierbas.', 690.00, 3, 1),
(9, 'Trucha a la Manteca de Hierbas', 'pescado.jpg', 'Trucha a la manteca cubierto de finas hierbas.', 1200.00, 5, 1),
(10, 'Bife de Chorizo', 'bife.jpg', 'Bife de Chorizo, a punto y con sabor argentino.', 980.00, 3, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `moneda`
--
ALTER TABLE `moneda`
  ADD PRIMARY KEY (`moneda_id`);

--
-- Indices de la tabla `platos`
--
ALTER TABLE `platos`
  ADD PRIMARY KEY (`platos_id`),
  ADD KEY `monedas_id_fk` (`monedas_id_fk`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `moneda`
--
ALTER TABLE `moneda`
  MODIFY `moneda_id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `platos`
--
ALTER TABLE `platos`
  MODIFY `platos_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `platos`
--
ALTER TABLE `platos`
  ADD CONSTRAINT `platos_ibfk_1` FOREIGN KEY (`monedas_id_fk`) REFERENCES `moneda` (`moneda_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
