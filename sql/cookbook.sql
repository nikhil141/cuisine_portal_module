-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 08, 2020 at 02:19 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cookbook`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL,
  `dob` varchar(100) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `City` varchar(100) DEFAULT NULL,
  `Country` varchar(100) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`id`, `FullName`, `EmailId`, `Password`, `ContactNo`, `dob`, `Address`, `City`, `Country`, `RegDate`, `UpdationDate`) VALUES
(1, 'test123', 'abc@gmail.com', '97a725f9aabfd6af9b9180b353026688', '123456', NULL, NULL, NULL, NULL, '2020-10-08 12:02:06', NULL),
(3, 'Nikhil Sharma', 'ns1043937@gmail.com', '202cb962ac59075b964b07152d234b70', '9414338445', NULL, NULL, NULL, NULL, '2020-10-08 12:18:33', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cuisine`
--

CREATE TABLE `tbl_cuisine` (
  `cuisine_id` int(255) NOT NULL,
  `cuisine_name` varchar(255) DEFAULT NULL,
  `cuisine_image` varchar(255) DEFAULT NULL,
  `date` datetime NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_cuisine`
--

INSERT INTO `tbl_cuisine` (`cuisine_id`, `cuisine_name`, `cuisine_image`, `date`, `status`) VALUES
(1, 'CHINESE', 'chinese_cuisine.jpg', '2020-10-07 16:00:00', 0),
(2, 'FRENCH', 'french_cuisine.jpg', '2020-10-07 16:00:00', 0),
(3, 'ITALIAN', 'italian_cuisine.jpg', '2020-10-07 16:00:00', 0),
(4, 'INDIAN', 'indian_cuisine.jpeg', '2020-10-07 16:00:00', 0),
(5, 'JAPANESE', 'japanese_cuisine.jpeg', '2020-10-07 16:00:00', 0),
(6, 'MOROCCAN', 'moroccan_cuisine.jpeg', '2020-10-07 16:00:00', 0),
(7, 'SPANISH', 'spanish_cuisine.jpg', '2020-10-07 16:00:00', 0),
(8, 'THAI', 'thai_cuisine.jpeg', '2020-10-07 16:00:00', 0),
(9, 'TURKISH', 'turkish_cuisine.jpeg', '2020-10-07 16:00:00', 0),
(10, 'INDONESIAN', 'indonesian_cuisine.jpg', '2020-10-07 16:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_recipes`
--

CREATE TABLE `tbl_recipes` (
  `recipes_id` int(255) NOT NULL,
  `cuisine_id` int(255) NOT NULL,
  `recipes_name` varchar(255) DEFAULT NULL,
  `recipes_image` varchar(255) DEFAULT NULL,
  `preparation_time` varchar(255) DEFAULT NULL,
  `datetime` datetime NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_recipes`
--

INSERT INTO `tbl_recipes` (`recipes_id`, `cuisine_id`, `recipes_name`, `recipes_image`, `preparation_time`, `datetime`, `status`) VALUES
(1, 1, 'HOTPOT', 'hotpot.webp', '90', '2020-10-07 20:00:00', 0),
(2, 1, 'SICHUAN PORK', 'sichuan_pork.webp', '70', '2020-10-08 20:00:00', 0),
(3, 1, 'DUMPLINGS', 'dumplings.webp', '30', '2020-10-08 20:00:00', 0),
(4, 1, 'CHOW MEIN', 'chowmein.webp', '25', '2020-10-08 20:00:00', 0),
(5, 1, 'ROASTED DUCK	', 'roasted_duck.webp', '80', '2020-10-08 20:00:00', 0),
(6, 1, 'CASHEW NUTS', 'cashew_nuts.webp', '45', '2020-10-08 20:00:00', 0),
(7, 1, 'FRIED RICE', 'fried_rice.webp', '20', '2020-10-08 20:00:00', 0),
(8, 1, 'SPRING ROLLS', 'spring_rolls.webp', '50', '2020-10-08 20:00:00', 0),
(9, 1, 'WONTONS', 'wontons.webp', '120', '2020-10-08 20:00:00', 0),
(10, 1, 'MA PO TOFU', 'ma_po_tofu.webp', '140', '2020-10-08 20:00:00', 0),
(11, 2, 'SOUPE A OIGNON', 'soupe_a_oignon.jpg', '100', '2020-10-08 20:00:00', 0),
(12, 2, 'COQ AU VIN', 'coq_au_vin.jpg', '60', '2020-10-08 20:00:00', 0),
(13, 2, 'CASSOULET', 'cassoulet.jpg', '130', '2020-10-08 20:00:00', 0),
(14, 2, 'BOEUF BOURGUIGNON', 'bouef.jpg', '250', '2020-10-08 20:00:00', 0),
(15, 2, 'CHOCOLATE SOUFFLE', 'chocolate_shuffle.jpg', '125', '2020-10-08 20:00:00', 0),
(16, 2, 'FLAMICHE', 'flamiche.jpg', '170', '2020-10-08 20:00:00', 0),
(17, 2, 'CONFIT DE CANARD', 'confit_de_canard.jpg', '110', '2020-10-08 20:00:00', 0),
(18, 2, 'SALADE NICOISE', 'salade_nicoise.jpg', '30', '2020-10-08 20:00:00', 0),
(19, 2, 'RATATOUILLE', 'ratatouille.jpg', '70', '2020-10-08 20:00:00', 0),
(20, 2, 'TARTE TATIN', 'tarte_tatin.jpg', '150', '2020-10-08 20:00:00', 0),
(21, 3, 'NAPLES', 'naples.jpg', '100', '2020-10-08 20:00:00', 0),
(22, 3, 'BOLOGNA', 'bologna.jpg', '60', '2020-10-08 20:00:00', 0),
(23, 3, 'MILAN', 'milan.jpg', '110', '2020-10-08 20:00:00', 0),
(24, 3, 'GELATO', 'gelato.jpg', '150', '2020-10-08 20:00:00', 0),
(25, 3, 'PANZANELLA', 'panzanella.jpg', '125', '2020-10-08 20:00:00', 0),
(26, 3, 'FOCACCIA', 'focaccia.jpg', '70', '2020-10-08 20:00:00', 0),
(27, 3, 'ROME', 'rome.jpg', '40', '2020-10-08 20:00:00', 0),
(28, 3, 'VENICE', 'venice.jpg', '80', '2020-10-08 20:00:00', 0),
(29, 3, 'CAPONATA', 'caponata.jpg', '270', '2020-10-08 20:00:00', 0),
(30, 3, 'BURATA', 'burrata.jpg', '140', '2020-10-08 20:00:00', 1),
(31, 4, 'BUTTER CHICKEN', 'butter_chi.webp', '100', '2020-10-08 20:00:00', 0),
(32, 4, 'INSTANT POT BUTTER CHICKEN', 'instantchi.webp', '60', '2020-10-08 20:00:00', 0),
(33, 4, 'TANDOORI CHICKEN', 'tandoori_chicken.webp', '110', '2020-10-08 20:00:00', 0),
(34, 4, 'CHICKEN TIKA MASALA', 'tika.webp', '150', '2020-10-08 20:00:00', 0),
(35, 4, 'CHICKEN VINDALOO CURRY', 'vindaloo.webp', '125', '2020-10-08 20:00:00', 0),
(36, 4, 'ROGAN JOSH', 'rogan_josh.webp', '140', '2020-10-08 20:00:00', 0),
(37, 4, 'MALAI KOFTA', 'malai_kofta.webp', '30', '2020-10-08 20:00:00', 0),
(38, 4, 'CHOLE', 'chole.webp', '20', '2020-10-08 20:00:00', 0),
(39, 4, 'PAPDI CHAAT', 'papdi_chaat.webp', '70', '2020-10-08 20:00:00', 0),
(40, 4, 'NAAN', 'naan.webp', '50', '2020-10-08 20:00:00', 0),
(41, 5, 'YAKITORI', 'yakitori.webp', '100', '2020-10-08 20:00:00', 0),
(42, 5, 'SHABU SHABU', 'shabu_shabu.webp', '60', '2020-10-08 20:00:00', 0),
(43, 5, 'TONKATSU', 'tonkatsu.webp', '110', '2020-10-08 20:00:00', 0),
(44, 5, 'SOY RAMEN', 'soy_ramen.webp', '150', '2020-10-08 20:00:00', 0),
(45, 5, 'TEMPURA', 'tempura.jpg', '125', '2020-10-08 20:00:00', 0),
(46, 5, 'SOBA NOODLES', 'soba_noodles.webp', '140', '2020-10-08 20:00:00', 0),
(47, 5, 'MISO CODE', 'miso_code.webp', '30', '2020-10-08 20:00:00', 0),
(48, 5, 'SHUSHI', 'sushi.webp', '20', '2020-10-08 20:00:00', 0),
(49, 6, 'COUSCOUS', 'couscous.webp', '100', '2020-10-08 20:00:00', 0),
(50, 6, 'MOROCCAN CHIICKEN BASTILLA', 'moroccan_bastilla.webp', '60', '2020-10-08 20:00:00', 0),
(51, 6, 'TAGINE', 'tagine.webp', '110', '2020-10-08 20:00:00', 0),
(52, 6, 'CHICKEN PRESERVED WITH LEMON AND OLIVE', 'lemon.webp', '150', '2020-10-08 20:00:00', 0),
(53, 6, 'BEEF PRUNES', 'beef_prunes.webp', '125', '2020-10-08 20:00:00', 0),
(54, 6, 'RFISSA', 'rfissa.webp', '140', '2020-10-08 20:00:00', 0),
(55, 6, 'HARIRA', 'harira.webp', '30', '2020-10-08 20:00:00', 0),
(56, 6, 'FISH SEAFOOD', 'fish_seafood.webp', '120', '2020-10-08 20:00:00', 0),
(57, 7, 'CROQUETAS', 'croquetas.jpg', '100', '2020-10-08 20:00:00', 0),
(58, 7, 'TORTILLA ESPANOLLA', 'tortilla_espanolla.jpg', '60', '2020-10-08 20:00:00', 0),
(59, 7, 'GAZPACHO', 'gazpacho.jpg', '110', '2020-10-08 20:00:00', 0),
(60, 7, 'PISTO', 'pisto.jpg', '150', '2020-10-08 20:00:00', 0),
(61, 7, 'PULPO A LA GALLEGA', 'pulpo.jpg', '125', '2020-10-08 20:00:00', 0),
(62, 7, 'FABADA', 'fabada.jpg', '140', '2020-10-08 20:00:00', 0),
(63, 7, 'PAELLA', 'paella.jpg', '30', '2020-10-08 20:00:00', 0),
(64, 7, 'PATATAS BRAVAS', 'patatas.jpg', '120', '2020-10-08 20:00:00', 0),
(65, 7, 'LECHE FRITA', 'leche_frita.jpg', '120', '2020-10-08 20:00:00', 0),
(66, 8, 'CHICKEN SATAY', 'chicken_satay.jpg', '100', '2020-10-08 20:00:00', 0),
(67, 8, 'PAD THAI', 'pad_thai.webp', '60', '2020-10-08 20:00:00', 0),
(68, 8, 'THAI GREEN CHICKEN CURRY', 'green_chicken.png', '110', '2020-10-08 20:00:00', 0),
(69, 8, 'SOM TAM', 'som_tam.webp', '150', '2020-10-08 20:00:00', 0),
(70, 8, 'THAI FISH GREEN CURRY', 'thai_fish.png', '125', '2020-10-08 20:00:00', 0),
(71, 8, 'MASSAMAN CURRY', 'massaman_curry.png', '140', '2020-10-08 20:00:00', 0),
(72, 8, 'KHAO POD TOD', 'khao_pod_tod.jpg', '30', '2020-10-08 20:00:00', 0),
(73, 8, 'THAI POMELO SALID', 'thai_pomelo.png', '120', '2020-10-08 20:00:00', 0),
(74, 9, 'MENEMEN', 'menemen.jpg', '100', '2020-10-08 20:00:00', 0),
(75, 9, 'DOLMA', 'dolma.jpg', '60', '2020-10-08 20:00:00', 0),
(76, 9, 'KEBAP', 'kebap.jpg', '110', '2020-10-08 20:00:00', 0),
(77, 9, 'LENTIL SOUP', 'lentil_soup.jpg', '150', '2020-10-08 20:00:00', 0),
(78, 9, 'CIG KOFTE', 'cig_kofte.jpg', '125', '2020-10-08 20:00:00', 0),
(79, 9, 'LAHMACUN', 'lahmacun.jpg', '140', '2020-10-08 20:00:00', 0),
(80, 10, 'NASI GORENZ', 'nasi_gorenz.jpg', '100', '2020-10-08 20:00:00', 0),
(81, 10, 'SATAY', 'satay.jpg', '60', '2020-10-08 20:00:00', 0),
(82, 10, 'GADO GADO', 'gado.jpg', '110', '2020-10-08 20:00:00', 0),
(83, 10, 'RANDANG', 'randang.jpg', '150', '2020-10-08 20:00:00', 0),
(84, 10, 'SIOMAY', 'siomay.jpg', '125', '2020-10-08 20:00:00', 0),
(85, 10, 'BAKSO', 'bakso.jpg', '140', '2020-10-08 20:00:00', 0),
(86, 10, 'GUDEG', 'gudeg.jpg', '140', '2020-10-08 20:00:00', 0),
(87, 10, 'TEMPEH', 'tempeh.jpg', '140', '2020-10-08 20:00:00', 0),
(88, 10, 'SOP KONRO', 'sop_konro.jpg', '140', '2020-10-08 20:00:00', 0),
(89, 10, 'BABI GULING', 'babi_guling.jpg', '140', '2020-10-08 20:00:00', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_cuisine`
--
ALTER TABLE `tbl_cuisine`
  ADD PRIMARY KEY (`cuisine_id`);

--
-- Indexes for table `tbl_recipes`
--
ALTER TABLE `tbl_recipes`
  ADD PRIMARY KEY (`recipes_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_cuisine`
--
ALTER TABLE `tbl_cuisine`
  MODIFY `cuisine_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_recipes`
--
ALTER TABLE `tbl_recipes`
  MODIFY `recipes_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
