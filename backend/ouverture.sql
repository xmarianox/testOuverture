-- phpMyAdmin SQL Dump
-- version 4.4.10
-- http://www.phpmyadmin.net
--
-- Host: localhost:8889
-- Generation Time: Apr 01, 2016 at 07:16 AM
-- Server version: 5.5.42
-- PHP Version: 7.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `ouverture`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `description` mediumtext NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`) VALUES
(1, 'Apple Tv', 'Disfrutá de películas en 1080p HD. Divertite con vídeos de YouTube y Vimeo. Disfrutá de tu música y fotos en iCloud. Reproduce contenido en streaming desde tus dispositivos iOS mediante AirPlay. Incluye conexión Wi-Fi 802.11n y el Apple Remote. '),
(2, 'Macbook Air 11', 'Procesador Intel Core i5 de doble núcleo a 1,6 GHz. Turbo Boost hasta 2,7 GHz. Intel HD Graphics 6000. 4 GB de memoria. Almacenamiento flash de 256 GB.Batería integrada (9 horas).'),
(3, 'Ipad Air 2 Wi-fi 16gb - Space Gray', 'Espectacular pantalla Retina de 9,7 pulgadas. Diseño fino y ligero con cámaras iSight y FaceTime HD. Procesador Chip A8. Conexión ultrarrápida con Wi-Fi 802.11n hasta el doble de rápida con la tecnología MIMO. Más de 475.000 apps en el App Store. Con iOS 7 todo es más fácil que nunca gracias a nuevas prestaciones como Centro de Control, AirDrop y la multitarea avanzada.'),
(4, 'Apple Mighty Mouse Con Cable Usb', 'Colocada perfectamente para desplazarse suavemente bajo un solo dedo, la bola de desplazamiento del ratón de Apple ofrece un desplazamiento completo de 360 grados: arriba/abajo, izquierda/derecha y en diagonal. Puedes desplazarte por extensas páginas web, recorrer imágenes a tamaño completo, maniobrar por grandes hojas de cálculo y controlar toda una línea de tiempo de vídeo, entre otras muchas cosas. Incluso puedes hacer clic en la bola de desplazamiento para acceder a tus funciones favoritas de Mac OS X, como Dashboard, Spotlight o Exposé.'),
(5, 'Apple Magic Trackpad 2', 'El nuevo Magic Trackpad 2 es totalmente recargable y lleva por primera vez la tecnología Force Touch a tu escritorio. Debajo de la superficie del trackpad hay cuatro sensores que permiten hacer clic en cualquier parte, detectan la intensidad con que presionas y ponen nuevas posibilidades al alcance de tus dedos. También tiene una superficie de vidrio casi un 30 % mayor que el modelo anterior. Gracias a su nuevo diseño y su perfil más estilizado, moverte por tus contenidos favoritos es más cómodo y sencillo que nunca.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;