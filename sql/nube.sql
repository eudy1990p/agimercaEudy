-- phpMyAdmin SQL Dump
-- version 2.11.11.3
-- http://www.phpmyadmin.net
--
-- Host: 68.178.143.155
-- Generation Time: Feb 27, 2017 at 08:11 PM
-- Server version: 5.5.43
-- PHP Version: 5.1.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Database: `agimercadb`
--

-- --------------------------------------------------------

--
-- Table structure for table `carpeta_gallerias`
--

CREATE TABLE `carpeta_gallerias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id_creado` int(11) DEFAULT NULL,
  `user_id_editado` int(11) DEFAULT NULL,
  `fecha_editado` datetime DEFAULT NULL,
  `fecha_creado` datetime DEFAULT NULL,
  `nombre` varchar(200) DEFAULT NULL,
  `estado` enum('activo','desactivado') NOT NULL DEFAULT 'activo',
  PRIMARY KEY (`id`),
  KEY `user_id_creado` (`user_id_creado`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `carpeta_gallerias`
--

UPDATE `carpeta_gallerias` SET `id` = 1,`user_id_creado` = 18,`user_id_editado` = NULL,`fecha_editado` = NULL,`fecha_creado` = '2017-01-01 07:32:46',`nombre` = 'Agimerca',`estado` = 'activo' WHERE  `carpeta_gallerias`.`id` = 1;
UPDATE `carpeta_gallerias` SET `id` = 2,`user_id_creado` = 56,`user_id_editado` = NULL,`fecha_editado` = NULL,`fecha_creado` = '2017-02-20 16:40:17',`nombre` = 'Beneficio del gengibre.',`estado` = 'activo' WHERE  `carpeta_gallerias`.`id` = 2;

-- --------------------------------------------------------

--
-- Table structure for table `carpeta_videos`
--

CREATE TABLE `carpeta_videos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id_creado` int(11) DEFAULT NULL,
  `user_id_editado` int(11) DEFAULT NULL,
  `fecha_editado` datetime DEFAULT NULL,
  `fecha_creado` datetime DEFAULT NULL,
  `nombre` varchar(200) DEFAULT NULL,
  `estado` enum('activo','desactivado') NOT NULL DEFAULT 'activo',
  PRIMARY KEY (`id`),
  KEY `user_id_creado` (`user_id_creado`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `carpeta_videos`
--


-- --------------------------------------------------------

--
-- Table structure for table `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_categoria` varchar(100) DEFAULT NULL,
  `user_id_creado` int(11) DEFAULT NULL,
  `user_id_editado` int(11) DEFAULT NULL,
  `fecha_editado` datetime DEFAULT NULL,
  `fecha_creado` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `categorias`
--

UPDATE `categorias` SET `id` = 1,`nombre_categoria` = 'Oferta',`user_id_creado` = 1,`user_id_editado` = NULL,`fecha_editado` = NULL,`fecha_creado` = '2017-01-16 08:46:06' WHERE  `categorias`.`id` = 1;
UPDATE `categorias` SET `id` = 2,`nombre_categoria` = 'Demanda',`user_id_creado` = 1,`user_id_editado` = NULL,`fecha_editado` = NULL,`fecha_creado` = '2017-01-16 08:46:36' WHERE  `categorias`.`id` = 2;

-- --------------------------------------------------------

--
-- Table structure for table `categorias_posts`
--

CREATE TABLE `categorias_posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id_creado` int(11) DEFAULT NULL,
  `user_id_editado` int(11) DEFAULT NULL,
  `fecha_editado` datetime DEFAULT NULL,
  `fecha_creado` datetime DEFAULT NULL,
  `nombre` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `categorias_posts`
--


-- --------------------------------------------------------

--
-- Table structure for table `comentarios`
--

CREATE TABLE `comentarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id_creado` int(11) DEFAULT NULL,
  `user_id_editado` int(11) DEFAULT NULL,
  `fecha_editado` datetime DEFAULT NULL,
  `fecha_creado` datetime DEFAULT NULL,
  `comentario` text,
  `post_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `comentarios`
--

UPDATE `comentarios` SET `id` = 1,`user_id_creado` = 21,`user_id_editado` = NULL,`fecha_editado` = NULL,`fecha_creado` = '2017-01-05 16:33:08',`comentario` = '<p>Megusta</p>',`post_id` = 3 WHERE  `comentarios`.`id` = 1;
UPDATE `comentarios` SET `id` = 2,`user_id_creado` = 21,`user_id_editado` = NULL,`fecha_editado` = NULL,`fecha_creado` = '2017-01-07 07:35:35',`comentario` = '',`post_id` = 4 WHERE  `comentarios`.`id` = 2;

-- --------------------------------------------------------

--
-- Table structure for table `galerias`
--

CREATE TABLE `galerias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id_creado` int(11) DEFAULT NULL,
  `user_id_editado` int(11) DEFAULT NULL,
  `fecha_editado` datetime DEFAULT NULL,
  `fecha_creado` datetime DEFAULT NULL,
  `url_img` varchar(200) DEFAULT NULL,
  `perfil` int(1) DEFAULT NULL,
  `carpeta_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- Dumping data for table `galerias`
--

UPDATE `galerias` SET `id` = 12,`user_id_creado` = 1,`user_id_editado` = NULL,`fecha_editado` = '2016-12-28 12:34:20',`fecha_creado` = NULL,`url_img` = '0_5_recurso.png',`perfil` = NULL,`carpeta_id` = 5 WHERE  `galerias`.`id` = 12;
UPDATE `galerias` SET `id` = 13,`user_id_creado` = 1,`user_id_editado` = NULL,`fecha_editado` = '2016-12-28 12:34:20',`fecha_creado` = NULL,`url_img` = '1_5_recurso.png',`perfil` = NULL,`carpeta_id` = 5 WHERE  `galerias`.`id` = 13;
UPDATE `galerias` SET `id` = 14,`user_id_creado` = 1,`user_id_editado` = NULL,`fecha_editado` = '2016-12-28 12:40:47',`fecha_creado` = NULL,`url_img` = '0_6_recurso.png',`perfil` = NULL,`carpeta_id` = 6 WHERE  `galerias`.`id` = 14;
UPDATE `galerias` SET `id` = 15,`user_id_creado` = 1,`user_id_editado` = NULL,`fecha_editado` = '2016-12-28 12:46:02',`fecha_creado` = NULL,`url_img` = '0_7_recurso.png',`perfil` = NULL,`carpeta_id` = 7 WHERE  `galerias`.`id` = 15;
UPDATE `galerias` SET `id` = 16,`user_id_creado` = 1,`user_id_editado` = NULL,`fecha_editado` = '2016-12-28 12:46:02',`fecha_creado` = NULL,`url_img` = '1_7_recurso.png',`perfil` = NULL,`carpeta_id` = 7 WHERE  `galerias`.`id` = 16;
UPDATE `galerias` SET `id` = 17,`user_id_creado` = 1,`user_id_editado` = NULL,`fecha_editado` = '2016-12-28 12:46:02',`fecha_creado` = NULL,`url_img` = '2_7_recurso.png',`perfil` = NULL,`carpeta_id` = 7 WHERE  `galerias`.`id` = 17;
UPDATE `galerias` SET `id` = 18,`user_id_creado` = 1,`user_id_editado` = NULL,`fecha_editado` = '2016-12-28 12:48:31',`fecha_creado` = NULL,`url_img` = '0_8_recurso.png',`perfil` = NULL,`carpeta_id` = 8 WHERE  `galerias`.`id` = 18;
UPDATE `galerias` SET `id` = 19,`user_id_creado` = 1,`user_id_editado` = NULL,`fecha_editado` = '2016-12-28 12:48:31',`fecha_creado` = NULL,`url_img` = '1_8_recurso.png',`perfil` = NULL,`carpeta_id` = 8 WHERE  `galerias`.`id` = 19;
UPDATE `galerias` SET `id` = 20,`user_id_creado` = 1,`user_id_editado` = NULL,`fecha_editado` = '2016-12-28 12:48:32',`fecha_creado` = NULL,`url_img` = '2_8_recurso.png',`perfil` = NULL,`carpeta_id` = 8 WHERE  `galerias`.`id` = 20;
UPDATE `galerias` SET `id` = 21,`user_id_creado` = 18,`user_id_editado` = NULL,`fecha_editado` = '2017-01-01 07:32:46',`fecha_creado` = NULL,`url_img` = '0_1_recurso.png',`perfil` = NULL,`carpeta_id` = 1 WHERE  `galerias`.`id` = 21;
UPDATE `galerias` SET `id` = 22,`user_id_creado` = 56,`user_id_editado` = NULL,`fecha_editado` = '2017-02-20 16:40:18',`fecha_creado` = NULL,`url_img` = '0_2_recurso.png',`perfil` = NULL,`carpeta_id` = 2 WHERE  `galerias`.`id` = 22;

-- --------------------------------------------------------

--
-- Table structure for table `mensajes_privados`
--

CREATE TABLE `mensajes_privados` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id_creado` int(11) DEFAULT NULL,
  `user_id_editado` int(11) DEFAULT NULL,
  `fecha_editado` datetime DEFAULT NULL,
  `fecha_creado` datetime DEFAULT NULL,
  `mensaje` text,
  `para_user_id` int(11) DEFAULT NULL,
  `visto` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `mensajes_privados`
--


-- --------------------------------------------------------

--
-- Table structure for table `me_gustas`
--

CREATE TABLE `me_gustas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id_creado` int(11) DEFAULT NULL,
  `user_id_editado` int(11) DEFAULT NULL,
  `fecha_editado` datetime DEFAULT NULL,
  `fecha_creado` datetime DEFAULT NULL,
  `si` int(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `me_gustas`
--


-- --------------------------------------------------------

--
-- Table structure for table `pais`
--

CREATE TABLE `pais` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_creado` datetime DEFAULT NULL,
  `nombre` varchar(150) DEFAULT NULL,
  `name1` varchar(150) DEFAULT NULL,
  `nom` varchar(150) DEFAULT NULL,
  `iso2` varchar(50) DEFAULT NULL,
  `iso3` varchar(50) DEFAULT NULL,
  `phone_code` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=248 ;

--
-- Dumping data for table `pais`
--

UPDATE `pais` SET `id` = 2,`fecha_creado` = NULL,`nombre` = 'Afganistán',`name1` = 'Afghanistan',`nom` = 'Afghanistan',`iso2` = 'AF',`iso3` = 'AFG',`phone_code` = '93' WHERE  `pais`.`id` = 2;
UPDATE `pais` SET `id` = 3,`fecha_creado` = NULL,`nombre` = 'Albania',`name1` = 'Albania',`nom` = 'Albanie',`iso2` = 'AL',`iso3` = 'ALB',`phone_code` = '355' WHERE  `pais`.`id` = 3;
UPDATE `pais` SET `id` = 4,`fecha_creado` = NULL,`nombre` = 'Alemania',`name1` = 'Germany',`nom` = 'Allemagne',`iso2` = 'DE',`iso3` = 'DEU',`phone_code` = '49' WHERE  `pais`.`id` = 4;
UPDATE `pais` SET `id` = 5,`fecha_creado` = NULL,`nombre` = 'Algeria',`name1` = 'Algeria',`nom` = 'Algérie',`iso2` = 'DZ',`iso3` = 'DZA',`phone_code` = '213' WHERE  `pais`.`id` = 5;
UPDATE `pais` SET `id` = 6,`fecha_creado` = NULL,`nombre` = 'Andorra',`name1` = 'Andorra',`nom` = 'Andorra',`iso2` = 'AD',`iso3` = 'AND',`phone_code` = '376' WHERE  `pais`.`id` = 6;
UPDATE `pais` SET `id` = 7,`fecha_creado` = NULL,`nombre` = 'Angola',`name1` = 'Angola',`nom` = 'Angola',`iso2` = 'AO',`iso3` = 'AGO',`phone_code` = '244' WHERE  `pais`.`id` = 7;
UPDATE `pais` SET `id` = 8,`fecha_creado` = NULL,`nombre` = 'Anguila',`name1` = 'Anguilla',`nom` = 'Anguilla',`iso2` = 'AI',`iso3` = 'AIA',`phone_code` = '1 264' WHERE  `pais`.`id` = 8;
UPDATE `pais` SET `id` = 9,`fecha_creado` = NULL,`nombre` = 'Antártida',`name1` = 'Antarctica',`nom` = 'L''Antarctique',`iso2` = 'AQ',`iso3` = 'ATA',`phone_code` = '672' WHERE  `pais`.`id` = 9;
UPDATE `pais` SET `id` = 10,`fecha_creado` = NULL,`nombre` = 'Antigua y Barbuda',`name1` = 'Antigua and Barbuda',`nom` = 'Antigua et Barbuda',`iso2` = 'AG',`iso3` = 'ATG',`phone_code` = '1 268' WHERE  `pais`.`id` = 10;
UPDATE `pais` SET `id` = 11,`fecha_creado` = NULL,`nombre` = 'Antillas Neerlandesas',`name1` = 'Netherlands Antilles',`nom` = 'Antilles Néerlandaises',`iso2` = 'AN',`iso3` = 'ANT',`phone_code` = '599' WHERE  `pais`.`id` = 11;
UPDATE `pais` SET `id` = 12,`fecha_creado` = NULL,`nombre` = 'Arabia Saudita',`name1` = 'Saudi Arabia',`nom` = 'Arabie Saoudite',`iso2` = 'SA',`iso3` = 'SAU',`phone_code` = '966' WHERE  `pais`.`id` = 12;
UPDATE `pais` SET `id` = 13,`fecha_creado` = NULL,`nombre` = 'Argentina',`name1` = 'Argentina',`nom` = 'Argentine',`iso2` = 'AR',`iso3` = 'ARG',`phone_code` = '54' WHERE  `pais`.`id` = 13;
UPDATE `pais` SET `id` = 14,`fecha_creado` = NULL,`nombre` = 'Armenia',`name1` = 'Armenia',`nom` = 'L''Arménie',`iso2` = 'AM',`iso3` = 'ARM',`phone_code` = '374' WHERE  `pais`.`id` = 14;
UPDATE `pais` SET `id` = 15,`fecha_creado` = NULL,`nombre` = 'Aruba',`name1` = 'Aruba',`nom` = 'Aruba',`iso2` = 'AW',`iso3` = 'ABW',`phone_code` = '297' WHERE  `pais`.`id` = 15;
UPDATE `pais` SET `id` = 16,`fecha_creado` = NULL,`nombre` = 'Australia',`name1` = 'Australia',`nom` = 'Australie',`iso2` = 'AU',`iso3` = 'AUS',`phone_code` = '61' WHERE  `pais`.`id` = 16;
UPDATE `pais` SET `id` = 17,`fecha_creado` = NULL,`nombre` = 'Austria',`name1` = 'Austria',`nom` = 'Autriche',`iso2` = 'AT',`iso3` = 'AUT',`phone_code` = '43' WHERE  `pais`.`id` = 17;
UPDATE `pais` SET `id` = 18,`fecha_creado` = NULL,`nombre` = 'Azerbayán',`name1` = 'Azerbaijan',`nom` = 'L''Azerbaïdjan',`iso2` = 'AZ',`iso3` = 'AZE',`phone_code` = '994' WHERE  `pais`.`id` = 18;
UPDATE `pais` SET `id` = 19,`fecha_creado` = NULL,`nombre` = 'Bélgica',`name1` = 'Belgium',`nom` = 'Belgique',`iso2` = 'BE',`iso3` = 'BEL',`phone_code` = '32' WHERE  `pais`.`id` = 19;
UPDATE `pais` SET `id` = 20,`fecha_creado` = NULL,`nombre` = 'Bahamas',`name1` = 'Bahamas',`nom` = 'Bahamas',`iso2` = 'BS',`iso3` = 'BHS',`phone_code` = '1 242' WHERE  `pais`.`id` = 20;
UPDATE `pais` SET `id` = 21,`fecha_creado` = NULL,`nombre` = 'Bahrein',`name1` = 'Bahrain',`nom` = 'Bahreïn',`iso2` = 'BH',`iso3` = 'BHR',`phone_code` = '973' WHERE  `pais`.`id` = 21;
UPDATE `pais` SET `id` = 22,`fecha_creado` = NULL,`nombre` = 'Bangladesh',`name1` = 'Bangladesh',`nom` = 'Bangladesh',`iso2` = 'BD',`iso3` = 'BGD',`phone_code` = '880' WHERE  `pais`.`id` = 22;
UPDATE `pais` SET `id` = 23,`fecha_creado` = NULL,`nombre` = 'Barbados',`name1` = 'Barbados',`nom` = 'Barbade',`iso2` = 'BB',`iso3` = 'BRB',`phone_code` = '1 246' WHERE  `pais`.`id` = 23;
UPDATE `pais` SET `id` = 24,`fecha_creado` = NULL,`nombre` = 'Belice',`name1` = 'Belize',`nom` = 'Belize',`iso2` = 'BZ',`iso3` = 'BLZ',`phone_code` = '501' WHERE  `pais`.`id` = 24;
UPDATE `pais` SET `id` = 25,`fecha_creado` = NULL,`nombre` = 'Benín',`name1` = 'Benin',`nom` = 'Bénin',`iso2` = 'BJ',`iso3` = 'BEN',`phone_code` = '229' WHERE  `pais`.`id` = 25;
UPDATE `pais` SET `id` = 26,`fecha_creado` = NULL,`nombre` = 'Bhután',`name1` = 'Bhutan',`nom` = 'Le Bhoutan',`iso2` = 'BT',`iso3` = 'BTN',`phone_code` = '975' WHERE  `pais`.`id` = 26;
UPDATE `pais` SET `id` = 27,`fecha_creado` = NULL,`nombre` = 'Bielorrusia',`name1` = 'Belarus',`nom` = 'Biélorussie',`iso2` = 'BY',`iso3` = 'BLR',`phone_code` = '375' WHERE  `pais`.`id` = 27;
UPDATE `pais` SET `id` = 28,`fecha_creado` = NULL,`nombre` = 'Birmania',`name1` = 'Myanmar',`nom` = 'Myanmar',`iso2` = 'MM',`iso3` = 'MMR',`phone_code` = '95' WHERE  `pais`.`id` = 28;
UPDATE `pais` SET `id` = 29,`fecha_creado` = NULL,`nombre` = 'Bolivia',`name1` = 'Bolivia',`nom` = 'Bolivie',`iso2` = 'BO',`iso3` = 'BOL',`phone_code` = '591' WHERE  `pais`.`id` = 29;
UPDATE `pais` SET `id` = 30,`fecha_creado` = NULL,`nombre` = 'Bosnia y Herzegovina',`name1` = 'Bosnia and Herzegovina',`nom` = 'Bosnie-Herzégovine',`iso2` = 'BA',`iso3` = 'BIH',`phone_code` = '387' WHERE  `pais`.`id` = 30;
UPDATE `pais` SET `id` = 31,`fecha_creado` = NULL,`nombre` = 'Botsuana',`name1` = 'Botswana',`nom` = 'Botswana',`iso2` = 'BW',`iso3` = 'BWA',`phone_code` = '267' WHERE  `pais`.`id` = 31;
UPDATE `pais` SET `id` = 32,`fecha_creado` = NULL,`nombre` = 'Brasil',`name1` = 'Brazil',`nom` = 'Brésil',`iso2` = 'BR',`iso3` = 'BRA',`phone_code` = '55' WHERE  `pais`.`id` = 32;
UPDATE `pais` SET `id` = 33,`fecha_creado` = NULL,`nombre` = 'Brunéi',`name1` = 'Brunei',`nom` = 'Brunei',`iso2` = 'BN',`iso3` = 'BRN',`phone_code` = '673' WHERE  `pais`.`id` = 33;
UPDATE `pais` SET `id` = 34,`fecha_creado` = NULL,`nombre` = 'Bulgaria',`name1` = 'Bulgaria',`nom` = 'Bulgarie',`iso2` = 'BG',`iso3` = 'BGR',`phone_code` = '359' WHERE  `pais`.`id` = 34;
UPDATE `pais` SET `id` = 35,`fecha_creado` = NULL,`nombre` = 'Burkina Faso',`name1` = 'Burkina Faso',`nom` = 'Burkina Faso',`iso2` = 'BF',`iso3` = 'BFA',`phone_code` = '226' WHERE  `pais`.`id` = 35;
UPDATE `pais` SET `id` = 36,`fecha_creado` = NULL,`nombre` = 'Burundi',`name1` = 'Burundi',`nom` = 'Burundi',`iso2` = 'BI',`iso3` = 'BDI',`phone_code` = '257' WHERE  `pais`.`id` = 36;
UPDATE `pais` SET `id` = 37,`fecha_creado` = NULL,`nombre` = 'Cabo Verde',`name1` = 'Cape Verde',`nom` = 'Cap-Vert',`iso2` = 'CV',`iso3` = 'CPV',`phone_code` = '238' WHERE  `pais`.`id` = 37;
UPDATE `pais` SET `id` = 38,`fecha_creado` = NULL,`nombre` = 'Camboya',`name1` = 'Cambodia',`nom` = 'Cambodge',`iso2` = 'KH',`iso3` = 'KHM',`phone_code` = '855' WHERE  `pais`.`id` = 38;
UPDATE `pais` SET `id` = 39,`fecha_creado` = NULL,`nombre` = 'Camerún',`name1` = 'Cameroon',`nom` = 'Cameroun',`iso2` = 'CM',`iso3` = 'CMR',`phone_code` = '237' WHERE  `pais`.`id` = 39;
UPDATE `pais` SET `id` = 40,`fecha_creado` = NULL,`nombre` = 'Canadá',`name1` = 'Canada',`nom` = 'Canada',`iso2` = 'CA',`iso3` = 'CAN',`phone_code` = '1' WHERE  `pais`.`id` = 40;
UPDATE `pais` SET `id` = 41,`fecha_creado` = NULL,`nombre` = 'Chad',`name1` = 'Chad',`nom` = 'Tchad',`iso2` = 'TD',`iso3` = 'TCD',`phone_code` = '235' WHERE  `pais`.`id` = 41;
UPDATE `pais` SET `id` = 42,`fecha_creado` = NULL,`nombre` = 'Chile',`name1` = 'Chile',`nom` = 'Chili',`iso2` = 'CL',`iso3` = 'CHL',`phone_code` = '56' WHERE  `pais`.`id` = 42;
UPDATE `pais` SET `id` = 43,`fecha_creado` = NULL,`nombre` = 'China',`name1` = 'China',`nom` = 'Chine',`iso2` = 'CN',`iso3` = 'CHN',`phone_code` = '86' WHERE  `pais`.`id` = 43;
UPDATE `pais` SET `id` = 44,`fecha_creado` = NULL,`nombre` = 'Chipre',`name1` = 'Cyprus',`nom` = 'Chypre',`iso2` = 'CY',`iso3` = 'CYP',`phone_code` = '357' WHERE  `pais`.`id` = 44;
UPDATE `pais` SET `id` = 45,`fecha_creado` = NULL,`nombre` = 'Ciudad del Vaticano',`name1` = 'Vatican City State',`nom` = 'Cité du Vatican',`iso2` = 'VA',`iso3` = 'VAT',`phone_code` = '39' WHERE  `pais`.`id` = 45;
UPDATE `pais` SET `id` = 46,`fecha_creado` = NULL,`nombre` = 'Colombia',`name1` = 'Colombia',`nom` = 'Colombie',`iso2` = 'CO',`iso3` = 'COL',`phone_code` = '57' WHERE  `pais`.`id` = 46;
UPDATE `pais` SET `id` = 47,`fecha_creado` = NULL,`nombre` = 'Comoras',`name1` = 'Comoros',`nom` = 'Comores',`iso2` = 'KM',`iso3` = 'COM',`phone_code` = '269' WHERE  `pais`.`id` = 47;
UPDATE `pais` SET `id` = 48,`fecha_creado` = NULL,`nombre` = 'Congo',`name1` = 'Congo',`nom` = 'Congo',`iso2` = 'CG',`iso3` = 'COG',`phone_code` = '242' WHERE  `pais`.`id` = 48;
UPDATE `pais` SET `id` = 49,`fecha_creado` = NULL,`nombre` = 'Congo',`name1` = 'Congo',`nom` = 'Congo',`iso2` = 'CD',`iso3` = 'COD',`phone_code` = '243' WHERE  `pais`.`id` = 49;
UPDATE `pais` SET `id` = 50,`fecha_creado` = NULL,`nombre` = 'Corea del Norte',`name1` = 'North Korea',`nom` = 'Corée du Nord',`iso2` = 'KP',`iso3` = 'PRK',`phone_code` = '850' WHERE  `pais`.`id` = 50;
UPDATE `pais` SET `id` = 51,`fecha_creado` = NULL,`nombre` = 'Corea del Sur',`name1` = 'South Korea',`nom` = 'Corée du Sud',`iso2` = 'KR',`iso3` = 'KOR',`phone_code` = '82' WHERE  `pais`.`id` = 51;
UPDATE `pais` SET `id` = 52,`fecha_creado` = NULL,`nombre` = 'Costa de Marfil',`name1` = 'Ivory Coast',`nom` = 'Côte-d''Ivoire',`iso2` = 'CI',`iso3` = 'CIV',`phone_code` = '225' WHERE  `pais`.`id` = 52;
UPDATE `pais` SET `id` = 53,`fecha_creado` = NULL,`nombre` = 'Costa Rica',`name1` = 'Costa Rica',`nom` = 'Costa Rica',`iso2` = 'CR',`iso3` = 'CRI',`phone_code` = '506' WHERE  `pais`.`id` = 53;
UPDATE `pais` SET `id` = 54,`fecha_creado` = NULL,`nombre` = 'Croacia',`name1` = 'Croatia',`nom` = 'Croatie',`iso2` = 'HR',`iso3` = 'HRV',`phone_code` = '385' WHERE  `pais`.`id` = 54;
UPDATE `pais` SET `id` = 55,`fecha_creado` = NULL,`nombre` = 'Cuba',`name1` = 'Cuba',`nom` = 'Cuba',`iso2` = 'CU',`iso3` = 'CUB',`phone_code` = '53' WHERE  `pais`.`id` = 55;
UPDATE `pais` SET `id` = 56,`fecha_creado` = NULL,`nombre` = 'Dinamarca',`name1` = 'Denmark',`nom` = 'Danemark',`iso2` = 'DK',`iso3` = 'DNK',`phone_code` = '45' WHERE  `pais`.`id` = 56;
UPDATE `pais` SET `id` = 57,`fecha_creado` = NULL,`nombre` = 'Dominica',`name1` = 'Dominica',`nom` = 'Dominique',`iso2` = 'DM',`iso3` = 'DMA',`phone_code` = '1 767' WHERE  `pais`.`id` = 57;
UPDATE `pais` SET `id` = 58,`fecha_creado` = NULL,`nombre` = 'Ecuador',`name1` = 'Ecuador',`nom` = 'Equateur',`iso2` = 'EC',`iso3` = 'ECU',`phone_code` = '593' WHERE  `pais`.`id` = 58;
UPDATE `pais` SET `id` = 59,`fecha_creado` = NULL,`nombre` = 'Egipto',`name1` = 'Egypt',`nom` = 'Egypte',`iso2` = 'EG',`iso3` = 'EGY',`phone_code` = '20' WHERE  `pais`.`id` = 59;
UPDATE `pais` SET `id` = 60,`fecha_creado` = NULL,`nombre` = 'El Salvador',`name1` = 'El Salvador',`nom` = 'El Salvador',`iso2` = 'SV',`iso3` = 'SLV',`phone_code` = '503' WHERE  `pais`.`id` = 60;
UPDATE `pais` SET `id` = 61,`fecha_creado` = NULL,`nombre` = 'Emiratos Árabes Unidos',`name1` = 'United Arab Emirates',`nom` = 'Emirats Arabes Unis',`iso2` = 'AE',`iso3` = 'ARE',`phone_code` = '971' WHERE  `pais`.`id` = 61;
UPDATE `pais` SET `id` = 62,`fecha_creado` = NULL,`nombre` = 'Eritrea',`name1` = 'Eritrea',`nom` = 'Erythrée',`iso2` = 'ER',`iso3` = 'ERI',`phone_code` = '291' WHERE  `pais`.`id` = 62;
UPDATE `pais` SET `id` = 63,`fecha_creado` = NULL,`nombre` = 'Eslovaquia',`name1` = 'Slovakia',`nom` = 'Slovaquie',`iso2` = 'SK',`iso3` = 'SVK',`phone_code` = '421' WHERE  `pais`.`id` = 63;
UPDATE `pais` SET `id` = 64,`fecha_creado` = NULL,`nombre` = 'Eslovenia',`name1` = 'Slovenia',`nom` = 'Slovénie',`iso2` = 'SI',`iso3` = 'SVN',`phone_code` = '386' WHERE  `pais`.`id` = 64;
UPDATE `pais` SET `id` = 65,`fecha_creado` = NULL,`nombre` = 'España',`name1` = 'Spain',`nom` = 'Espagne',`iso2` = 'ES',`iso3` = 'ESP',`phone_code` = '34' WHERE  `pais`.`id` = 65;
UPDATE `pais` SET `id` = 66,`fecha_creado` = NULL,`nombre` = 'Estados Unidos de América',`name1` = 'United States of America',`nom` = 'États-Unis d''Amérique',`iso2` = 'US',`iso3` = 'USA',`phone_code` = '1' WHERE  `pais`.`id` = 66;
UPDATE `pais` SET `id` = 67,`fecha_creado` = NULL,`nombre` = 'Estonia',`name1` = 'Estonia',`nom` = 'L''Estonie',`iso2` = 'EE',`iso3` = 'EST',`phone_code` = '372' WHERE  `pais`.`id` = 67;
UPDATE `pais` SET `id` = 68,`fecha_creado` = NULL,`nombre` = 'Etiopía',`name1` = 'Ethiopia',`nom` = 'Ethiopie',`iso2` = 'ET',`iso3` = 'ETH',`phone_code` = '251' WHERE  `pais`.`id` = 68;
UPDATE `pais` SET `id` = 69,`fecha_creado` = NULL,`nombre` = 'Filipinas',`name1` = 'Philippines',`nom` = 'Philippines',`iso2` = 'PH',`iso3` = 'PHL',`phone_code` = '63' WHERE  `pais`.`id` = 69;
UPDATE `pais` SET `id` = 70,`fecha_creado` = NULL,`nombre` = 'Finlandia',`name1` = 'Finland',`nom` = 'Finlande',`iso2` = 'FI',`iso3` = 'FIN',`phone_code` = '358' WHERE  `pais`.`id` = 70;
UPDATE `pais` SET `id` = 71,`fecha_creado` = NULL,`nombre` = 'Fiyi',`name1` = 'Fiji',`nom` = 'Fidji',`iso2` = 'FJ',`iso3` = 'FJI',`phone_code` = '679' WHERE  `pais`.`id` = 71;
UPDATE `pais` SET `id` = 72,`fecha_creado` = NULL,`nombre` = 'Francia',`name1` = 'France',`nom` = 'France',`iso2` = 'FR',`iso3` = 'FRA',`phone_code` = '33' WHERE  `pais`.`id` = 72;
UPDATE `pais` SET `id` = 73,`fecha_creado` = NULL,`nombre` = 'Gabón',`name1` = 'Gabon',`nom` = 'Gabon',`iso2` = 'GA',`iso3` = 'GAB',`phone_code` = '241' WHERE  `pais`.`id` = 73;
UPDATE `pais` SET `id` = 74,`fecha_creado` = NULL,`nombre` = 'Gambia',`name1` = 'Gambia',`nom` = 'Gambie',`iso2` = 'GM',`iso3` = 'GMB',`phone_code` = '220' WHERE  `pais`.`id` = 74;
UPDATE `pais` SET `id` = 75,`fecha_creado` = NULL,`nombre` = 'Georgia',`name1` = 'Georgia',`nom` = 'Géorgie',`iso2` = 'GE',`iso3` = 'GEO',`phone_code` = '995' WHERE  `pais`.`id` = 75;
UPDATE `pais` SET `id` = 76,`fecha_creado` = NULL,`nombre` = 'Ghana',`name1` = 'Ghana',`nom` = 'Ghana',`iso2` = 'GH',`iso3` = 'GHA',`phone_code` = '233' WHERE  `pais`.`id` = 76;
UPDATE `pais` SET `id` = 77,`fecha_creado` = NULL,`nombre` = 'Gibraltar',`name1` = 'Gibraltar',`nom` = 'Gibraltar',`iso2` = 'GI',`iso3` = 'GIB',`phone_code` = '350' WHERE  `pais`.`id` = 77;
UPDATE `pais` SET `id` = 78,`fecha_creado` = NULL,`nombre` = 'Granada',`name1` = 'Grenada',`nom` = 'Grenade',`iso2` = 'GD',`iso3` = 'GRD',`phone_code` = '1 473' WHERE  `pais`.`id` = 78;
UPDATE `pais` SET `id` = 79,`fecha_creado` = NULL,`nombre` = 'Grecia',`name1` = 'Greece',`nom` = 'Grèce',`iso2` = 'GR',`iso3` = 'GRC',`phone_code` = '30' WHERE  `pais`.`id` = 79;
UPDATE `pais` SET `id` = 80,`fecha_creado` = NULL,`nombre` = 'Groenlandia',`name1` = 'Greenland',`nom` = 'Groenland',`iso2` = 'GL',`iso3` = 'GRL',`phone_code` = '299' WHERE  `pais`.`id` = 80;
UPDATE `pais` SET `id` = 81,`fecha_creado` = NULL,`nombre` = 'Guadalupe',`name1` = 'Guadeloupe',`nom` = 'Guadeloupe',`iso2` = 'GP',`iso3` = 'GLP',`phone_code` = '' WHERE  `pais`.`id` = 81;
UPDATE `pais` SET `id` = 82,`fecha_creado` = NULL,`nombre` = 'Guam',`name1` = 'Guam',`nom` = 'Guam',`iso2` = 'GU',`iso3` = 'GUM',`phone_code` = '1 671' WHERE  `pais`.`id` = 82;
UPDATE `pais` SET `id` = 83,`fecha_creado` = NULL,`nombre` = 'Guatemala',`name1` = 'Guatemala',`nom` = 'Guatemala',`iso2` = 'GT',`iso3` = 'GTM',`phone_code` = '502' WHERE  `pais`.`id` = 83;
UPDATE `pais` SET `id` = 84,`fecha_creado` = NULL,`nombre` = 'Guayana Francesa',`name1` = 'French Guiana',`nom` = 'Guyane française',`iso2` = 'GF',`iso3` = 'GUF',`phone_code` = '' WHERE  `pais`.`id` = 84;
UPDATE `pais` SET `id` = 85,`fecha_creado` = NULL,`nombre` = 'Guernsey',`name1` = 'Guernsey',`nom` = 'Guernesey',`iso2` = 'GG',`iso3` = 'GGY',`phone_code` = '' WHERE  `pais`.`id` = 85;
UPDATE `pais` SET `id` = 86,`fecha_creado` = NULL,`nombre` = 'Guinea',`name1` = 'Guinea',`nom` = 'Guinée',`iso2` = 'GN',`iso3` = 'GIN',`phone_code` = '224' WHERE  `pais`.`id` = 86;
UPDATE `pais` SET `id` = 87,`fecha_creado` = NULL,`nombre` = 'Guinea Ecuatorial',`name1` = 'Equatorial Guinea',`nom` = 'Guinée Equatoriale',`iso2` = 'GQ',`iso3` = 'GNQ',`phone_code` = '240' WHERE  `pais`.`id` = 87;
UPDATE `pais` SET `id` = 88,`fecha_creado` = NULL,`nombre` = 'Guinea-Bissau',`name1` = 'Guinea-Bissau',`nom` = 'Guinée-Bissau',`iso2` = 'GW',`iso3` = 'GNB',`phone_code` = '245' WHERE  `pais`.`id` = 88;
UPDATE `pais` SET `id` = 89,`fecha_creado` = NULL,`nombre` = 'Guyana',`name1` = 'Guyana',`nom` = 'Guyane',`iso2` = 'GY',`iso3` = 'GUY',`phone_code` = '592' WHERE  `pais`.`id` = 89;
UPDATE `pais` SET `id` = 90,`fecha_creado` = NULL,`nombre` = 'Haití',`name1` = 'Haiti',`nom` = 'Haïti',`iso2` = 'HT',`iso3` = 'HTI',`phone_code` = '509' WHERE  `pais`.`id` = 90;
UPDATE `pais` SET `id` = 91,`fecha_creado` = NULL,`nombre` = 'Honduras',`name1` = 'Honduras',`nom` = 'Honduras',`iso2` = 'HN',`iso3` = 'HND',`phone_code` = '504' WHERE  `pais`.`id` = 91;
UPDATE `pais` SET `id` = 92,`fecha_creado` = NULL,`nombre` = 'Hong kong',`name1` = 'Hong Kong',`nom` = 'Hong Kong',`iso2` = 'HK',`iso3` = 'HKG',`phone_code` = '852' WHERE  `pais`.`id` = 92;
UPDATE `pais` SET `id` = 93,`fecha_creado` = NULL,`nombre` = 'Hungría',`name1` = 'Hungary',`nom` = 'Hongrie',`iso2` = 'HU',`iso3` = 'HUN',`phone_code` = '36' WHERE  `pais`.`id` = 93;
UPDATE `pais` SET `id` = 94,`fecha_creado` = NULL,`nombre` = 'India',`name1` = 'India',`nom` = 'Inde',`iso2` = 'IN',`iso3` = 'IND',`phone_code` = '91' WHERE  `pais`.`id` = 94;
UPDATE `pais` SET `id` = 95,`fecha_creado` = NULL,`nombre` = 'Indonesia',`name1` = 'Indonesia',`nom` = 'Indonésie',`iso2` = 'ID',`iso3` = 'IDN',`phone_code` = '62' WHERE  `pais`.`id` = 95;
UPDATE `pais` SET `id` = 96,`fecha_creado` = NULL,`nombre` = 'Irán',`name1` = 'Iran',`nom` = 'Iran',`iso2` = 'IR',`iso3` = 'IRN',`phone_code` = '98' WHERE  `pais`.`id` = 96;
UPDATE `pais` SET `id` = 97,`fecha_creado` = NULL,`nombre` = 'Irak',`name1` = 'Iraq',`nom` = 'Irak',`iso2` = 'IQ',`iso3` = 'IRQ',`phone_code` = '964' WHERE  `pais`.`id` = 97;
UPDATE `pais` SET `id` = 98,`fecha_creado` = NULL,`nombre` = 'Irlanda',`name1` = 'Ireland',`nom` = 'Irlande',`iso2` = 'IE',`iso3` = 'IRL',`phone_code` = '353' WHERE  `pais`.`id` = 98;
UPDATE `pais` SET `id` = 99,`fecha_creado` = NULL,`nombre` = 'Isla Bouvet',`name1` = 'Bouvet Island',`nom` = 'Bouvet Island',`iso2` = 'BV',`iso3` = 'BVT',`phone_code` = '' WHERE  `pais`.`id` = 99;
UPDATE `pais` SET `id` = 100,`fecha_creado` = NULL,`nombre` = 'Isla de Man',`name1` = 'Isle of Man',`nom` = 'Ile de Man',`iso2` = 'IM',`iso3` = 'IMN',`phone_code` = '44' WHERE  `pais`.`id` = 100;
UPDATE `pais` SET `id` = 101,`fecha_creado` = NULL,`nombre` = 'Isla de Navidad',`name1` = 'Christmas Island',`nom` = 'Christmas Island',`iso2` = 'CX',`iso3` = 'CXR',`phone_code` = '61' WHERE  `pais`.`id` = 101;
UPDATE `pais` SET `id` = 102,`fecha_creado` = NULL,`nombre` = 'Isla Norfolk',`name1` = 'Norfolk Island',`nom` = 'Île de Norfolk',`iso2` = 'NF',`iso3` = 'NFK',`phone_code` = '' WHERE  `pais`.`id` = 102;
UPDATE `pais` SET `id` = 103,`fecha_creado` = NULL,`nombre` = 'Islandia',`name1` = 'Iceland',`nom` = 'Islande',`iso2` = 'IS',`iso3` = 'ISL',`phone_code` = '354' WHERE  `pais`.`id` = 103;
UPDATE `pais` SET `id` = 104,`fecha_creado` = NULL,`nombre` = 'Islas Bermudas',`name1` = 'Bermuda Islands',`nom` = 'Bermudes',`iso2` = 'BM',`iso3` = 'BMU',`phone_code` = '1 441' WHERE  `pais`.`id` = 104;
UPDATE `pais` SET `id` = 105,`fecha_creado` = NULL,`nombre` = 'Islas Caimán',`name1` = 'Cayman Islands',`nom` = 'Iles Caïmans',`iso2` = 'KY',`iso3` = 'CYM',`phone_code` = '1 345' WHERE  `pais`.`id` = 105;
UPDATE `pais` SET `id` = 106,`fecha_creado` = NULL,`nombre` = 'Islas Cocos (Keeling)',`name1` = 'Cocos (Keeling) Islands',`nom` = 'Cocos (Keeling',`iso2` = 'CC',`iso3` = 'CCK',`phone_code` = '61' WHERE  `pais`.`id` = 106;
UPDATE `pais` SET `id` = 107,`fecha_creado` = NULL,`nombre` = 'Islas Cook',`name1` = 'Cook Islands',`nom` = 'Iles Cook',`iso2` = 'CK',`iso3` = 'COK',`phone_code` = '682' WHERE  `pais`.`id` = 107;
UPDATE `pais` SET `id` = 108,`fecha_creado` = NULL,`nombre` = 'Islas de Åland',`name1` = 'Åland Islands',`nom` = 'Îles Åland',`iso2` = 'AX',`iso3` = 'ALA',`phone_code` = '' WHERE  `pais`.`id` = 108;
UPDATE `pais` SET `id` = 109,`fecha_creado` = NULL,`nombre` = 'Islas Feroe',`name1` = 'Faroe Islands',`nom` = 'Iles Féro',`iso2` = 'FO',`iso3` = 'FRO',`phone_code` = '298' WHERE  `pais`.`id` = 109;
UPDATE `pais` SET `id` = 110,`fecha_creado` = NULL,`nombre` = 'Islas Georgias del Sur y Sandwich del Sur',`name1` = 'South Georgia and the South Sandwich Islands',`nom` = 'Géorgie du Sud et les Îles Sandwich du Sud',`iso2` = 'GS',`iso3` = 'SGS',`phone_code` = '' WHERE  `pais`.`id` = 110;
UPDATE `pais` SET `id` = 111,`fecha_creado` = NULL,`nombre` = 'Islas Heard y McDonald',`name1` = 'Heard Island and McDonald Islands',`nom` = 'Les îles Heard et McDonald',`iso2` = 'HM',`iso3` = 'HMD',`phone_code` = '' WHERE  `pais`.`id` = 111;
UPDATE `pais` SET `id` = 112,`fecha_creado` = NULL,`nombre` = 'Islas Maldivas',`name1` = 'Maldives',`nom` = 'Maldives',`iso2` = 'MV',`iso3` = 'MDV',`phone_code` = '960' WHERE  `pais`.`id` = 112;
UPDATE `pais` SET `id` = 113,`fecha_creado` = NULL,`nombre` = 'Islas Malvinas',`name1` = 'Falkland Islands (Malvinas)',`nom` = 'Iles Falkland (Malvinas',`iso2` = 'FK',`iso3` = 'FLK',`phone_code` = '500' WHERE  `pais`.`id` = 113;
UPDATE `pais` SET `id` = 114,`fecha_creado` = NULL,`nombre` = 'Islas Marianas del Norte',`name1` = 'Northern Mariana Islands',`nom` = 'Iles Mariannes du Nord',`iso2` = 'MP',`iso3` = 'MNP',`phone_code` = '1 670' WHERE  `pais`.`id` = 114;
UPDATE `pais` SET `id` = 115,`fecha_creado` = NULL,`nombre` = 'Islas Marshall',`name1` = 'Marshall Islands',`nom` = 'Iles Marshall',`iso2` = 'MH',`iso3` = 'MHL',`phone_code` = '692' WHERE  `pais`.`id` = 115;
UPDATE `pais` SET `id` = 116,`fecha_creado` = NULL,`nombre` = 'Islas Pitcairn',`name1` = 'Pitcairn Islands',`nom` = 'Iles Pitcairn',`iso2` = 'PN',`iso3` = 'PCN',`phone_code` = '870' WHERE  `pais`.`id` = 116;
UPDATE `pais` SET `id` = 117,`fecha_creado` = NULL,`nombre` = 'Islas Salomón',`name1` = 'Solomon Islands',`nom` = 'Iles Salomon',`iso2` = 'SB',`iso3` = 'SLB',`phone_code` = '677' WHERE  `pais`.`id` = 117;
UPDATE `pais` SET `id` = 118,`fecha_creado` = NULL,`nombre` = 'Islas Turcas y Caicos',`name1` = 'Turks and Caicos Islands',`nom` = 'Iles Turques et Caïques',`iso2` = 'TC',`iso3` = 'TCA',`phone_code` = '1 649' WHERE  `pais`.`id` = 118;
UPDATE `pais` SET `id` = 119,`fecha_creado` = NULL,`nombre` = 'Islas Ultramarinas Menores de Estados Unidos',`name1` = 'United States Minor Outlying Islands',`nom` = 'États-Unis Îles mineures éloignées',`iso2` = 'UM',`iso3` = 'UMI',`phone_code` = '' WHERE  `pais`.`id` = 119;
UPDATE `pais` SET `id` = 120,`fecha_creado` = NULL,`nombre` = 'Islas Vírgenes Británicas',`name1` = 'Virgin Islands',`nom` = 'Iles Vierges',`iso2` = 'VG',`iso3` = 'VG',`phone_code` = '1 284' WHERE  `pais`.`id` = 120;
UPDATE `pais` SET `id` = 121,`fecha_creado` = NULL,`nombre` = 'Islas Vírgenes de los Estados Unidos',`name1` = 'United States Virgin Islands',`nom` = 'Îles Vierges américaines',`iso2` = 'VI',`iso3` = 'VIR',`phone_code` = '1 340' WHERE  `pais`.`id` = 121;
UPDATE `pais` SET `id` = 122,`fecha_creado` = NULL,`nombre` = 'Israel',`name1` = 'Israel',`nom` = 'Israël',`iso2` = 'IL',`iso3` = 'ISR',`phone_code` = '972' WHERE  `pais`.`id` = 122;
UPDATE `pais` SET `id` = 123,`fecha_creado` = NULL,`nombre` = 'Italia',`name1` = 'Italy',`nom` = 'Italie',`iso2` = 'IT',`iso3` = 'ITA',`phone_code` = '39' WHERE  `pais`.`id` = 123;
UPDATE `pais` SET `id` = 124,`fecha_creado` = NULL,`nombre` = 'Jamaica',`name1` = 'Jamaica',`nom` = 'Jamaïque',`iso2` = 'JM',`iso3` = 'JAM',`phone_code` = '1 876' WHERE  `pais`.`id` = 124;
UPDATE `pais` SET `id` = 125,`fecha_creado` = NULL,`nombre` = 'Japón',`name1` = 'Japan',`nom` = 'Japon',`iso2` = 'JP',`iso3` = 'JPN',`phone_code` = '81' WHERE  `pais`.`id` = 125;
UPDATE `pais` SET `id` = 126,`fecha_creado` = NULL,`nombre` = 'Jersey',`name1` = 'Jersey',`nom` = 'Maillot',`iso2` = 'JE',`iso3` = 'JEY',`phone_code` = '' WHERE  `pais`.`id` = 126;
UPDATE `pais` SET `id` = 127,`fecha_creado` = NULL,`nombre` = 'Jordania',`name1` = 'Jordan',`nom` = 'Jordan',`iso2` = 'JO',`iso3` = 'JOR',`phone_code` = '962' WHERE  `pais`.`id` = 127;
UPDATE `pais` SET `id` = 128,`fecha_creado` = NULL,`nombre` = 'Kazajistán',`name1` = 'Kazakhstan',`nom` = 'Le Kazakhstan',`iso2` = 'KZ',`iso3` = 'KAZ',`phone_code` = '7' WHERE  `pais`.`id` = 128;
UPDATE `pais` SET `id` = 129,`fecha_creado` = NULL,`nombre` = 'Kenia',`name1` = 'Kenya',`nom` = 'Kenya',`iso2` = 'KE',`iso3` = 'KEN',`phone_code` = '254' WHERE  `pais`.`id` = 129;
UPDATE `pais` SET `id` = 130,`fecha_creado` = NULL,`nombre` = 'Kirgizstán',`name1` = 'Kyrgyzstan',`nom` = 'Kirghizstan',`iso2` = 'KG',`iso3` = 'KGZ',`phone_code` = '996' WHERE  `pais`.`id` = 130;
UPDATE `pais` SET `id` = 131,`fecha_creado` = NULL,`nombre` = 'Kiribati',`name1` = 'Kiribati',`nom` = 'Kiribati',`iso2` = 'KI',`iso3` = 'KIR',`phone_code` = '686' WHERE  `pais`.`id` = 131;
UPDATE `pais` SET `id` = 132,`fecha_creado` = NULL,`nombre` = 'Kuwait',`name1` = 'Kuwait',`nom` = 'Koweït',`iso2` = 'KW',`iso3` = 'KWT',`phone_code` = '965' WHERE  `pais`.`id` = 132;
UPDATE `pais` SET `id` = 133,`fecha_creado` = NULL,`nombre` = 'Líbano',`name1` = 'Lebanon',`nom` = 'Liban',`iso2` = 'LB',`iso3` = 'LBN',`phone_code` = '961' WHERE  `pais`.`id` = 133;
UPDATE `pais` SET `id` = 134,`fecha_creado` = NULL,`nombre` = 'Laos',`name1` = 'Laos',`nom` = 'Laos',`iso2` = 'LA',`iso3` = 'LAO',`phone_code` = '856' WHERE  `pais`.`id` = 134;
UPDATE `pais` SET `id` = 135,`fecha_creado` = NULL,`nombre` = 'Lesoto',`name1` = 'Lesotho',`nom` = 'Lesotho',`iso2` = 'LS',`iso3` = 'LSO',`phone_code` = '266' WHERE  `pais`.`id` = 135;
UPDATE `pais` SET `id` = 136,`fecha_creado` = NULL,`nombre` = 'Letonia',`name1` = 'Latvia',`nom` = 'La Lettonie',`iso2` = 'LV',`iso3` = 'LVA',`phone_code` = '371' WHERE  `pais`.`id` = 136;
UPDATE `pais` SET `id` = 137,`fecha_creado` = NULL,`nombre` = 'Liberia',`name1` = 'Liberia',`nom` = 'Liberia',`iso2` = 'LR',`iso3` = 'LBR',`phone_code` = '231' WHERE  `pais`.`id` = 137;
UPDATE `pais` SET `id` = 138,`fecha_creado` = NULL,`nombre` = 'Libia',`name1` = 'Libya',`nom` = 'Libye',`iso2` = 'LY',`iso3` = 'LBY',`phone_code` = '218' WHERE  `pais`.`id` = 138;
UPDATE `pais` SET `id` = 139,`fecha_creado` = NULL,`nombre` = 'Liechtenstein',`name1` = 'Liechtenstein',`nom` = 'Liechtenstein',`iso2` = 'LI',`iso3` = 'LIE',`phone_code` = '423' WHERE  `pais`.`id` = 139;
UPDATE `pais` SET `id` = 140,`fecha_creado` = NULL,`nombre` = 'Lituania',`name1` = 'Lithuania',`nom` = 'La Lituanie',`iso2` = 'LT',`iso3` = 'LTU',`phone_code` = '370' WHERE  `pais`.`id` = 140;
UPDATE `pais` SET `id` = 141,`fecha_creado` = NULL,`nombre` = 'Luxemburgo',`name1` = 'Luxembourg',`nom` = 'Luxembourg',`iso2` = 'LU',`iso3` = 'LUX',`phone_code` = '352' WHERE  `pais`.`id` = 141;
UPDATE `pais` SET `id` = 142,`fecha_creado` = NULL,`nombre` = 'México',`name1` = 'Mexico',`nom` = 'Mexique',`iso2` = 'MX',`iso3` = 'MEX',`phone_code` = '52' WHERE  `pais`.`id` = 142;
UPDATE `pais` SET `id` = 143,`fecha_creado` = NULL,`nombre` = 'Mónaco',`name1` = 'Monaco',`nom` = 'Monaco',`iso2` = 'MC',`iso3` = 'MCO',`phone_code` = '377' WHERE  `pais`.`id` = 143;
UPDATE `pais` SET `id` = 144,`fecha_creado` = NULL,`nombre` = 'Macao',`name1` = 'Macao',`nom` = 'Macao',`iso2` = 'MO',`iso3` = 'MAC',`phone_code` = '853' WHERE  `pais`.`id` = 144;
UPDATE `pais` SET `id` = 145,`fecha_creado` = NULL,`nombre` = 'Macedônia',`name1` = 'Macedonia',`nom` = 'Macédoine',`iso2` = 'MK',`iso3` = 'MKD',`phone_code` = '389' WHERE  `pais`.`id` = 145;
UPDATE `pais` SET `id` = 146,`fecha_creado` = NULL,`nombre` = 'Madagascar',`name1` = 'Madagascar',`nom` = 'Madagascar',`iso2` = 'MG',`iso3` = 'MDG',`phone_code` = '261' WHERE  `pais`.`id` = 146;
UPDATE `pais` SET `id` = 147,`fecha_creado` = NULL,`nombre` = 'Malasia',`name1` = 'Malaysia',`nom` = 'Malaisie',`iso2` = 'MY',`iso3` = 'MYS',`phone_code` = '60' WHERE  `pais`.`id` = 147;
UPDATE `pais` SET `id` = 148,`fecha_creado` = NULL,`nombre` = 'Malawi',`name1` = 'Malawi',`nom` = 'Malawi',`iso2` = 'MW',`iso3` = 'MWI',`phone_code` = '265' WHERE  `pais`.`id` = 148;
UPDATE `pais` SET `id` = 149,`fecha_creado` = NULL,`nombre` = 'Mali',`name1` = 'Mali',`nom` = 'Mali',`iso2` = 'ML',`iso3` = 'MLI',`phone_code` = '223' WHERE  `pais`.`id` = 149;
UPDATE `pais` SET `id` = 150,`fecha_creado` = NULL,`nombre` = 'Malta',`name1` = 'Malta',`nom` = 'Malte',`iso2` = 'MT',`iso3` = 'MLT',`phone_code` = '356' WHERE  `pais`.`id` = 150;
UPDATE `pais` SET `id` = 151,`fecha_creado` = NULL,`nombre` = 'Marruecos',`name1` = 'Morocco',`nom` = 'Maroc',`iso2` = 'MA',`iso3` = 'MAR',`phone_code` = '212' WHERE  `pais`.`id` = 151;
UPDATE `pais` SET `id` = 152,`fecha_creado` = NULL,`nombre` = 'Martinica',`name1` = 'Martinique',`nom` = 'Martinique',`iso2` = 'MQ',`iso3` = 'MTQ',`phone_code` = '' WHERE  `pais`.`id` = 152;
UPDATE `pais` SET `id` = 153,`fecha_creado` = NULL,`nombre` = 'Mauricio',`name1` = 'Mauritius',`nom` = 'Iles Maurice',`iso2` = 'MU',`iso3` = 'MUS',`phone_code` = '230' WHERE  `pais`.`id` = 153;
UPDATE `pais` SET `id` = 154,`fecha_creado` = NULL,`nombre` = 'Mauritania',`name1` = 'Mauritania',`nom` = 'Mauritanie',`iso2` = 'MR',`iso3` = 'MRT',`phone_code` = '222' WHERE  `pais`.`id` = 154;
UPDATE `pais` SET `id` = 155,`fecha_creado` = NULL,`nombre` = 'Mayotte',`name1` = 'Mayotte',`nom` = 'Mayotte',`iso2` = 'YT',`iso3` = 'MYT',`phone_code` = '262' WHERE  `pais`.`id` = 155;
UPDATE `pais` SET `id` = 156,`fecha_creado` = NULL,`nombre` = 'Micronesia',`name1` = 'Estados Federados de',`nom` = 'Federados Estados de',`iso2` = 'FM',`iso3` = 'FSM',`phone_code` = '691' WHERE  `pais`.`id` = 156;
UPDATE `pais` SET `id` = 157,`fecha_creado` = NULL,`nombre` = 'Moldavia',`name1` = 'Moldova',`nom` = 'Moldavie',`iso2` = 'MD',`iso3` = 'MDA',`phone_code` = '373' WHERE  `pais`.`id` = 157;
UPDATE `pais` SET `id` = 158,`fecha_creado` = NULL,`nombre` = 'Mongolia',`name1` = 'Mongolia',`nom` = 'Mongolie',`iso2` = 'MN',`iso3` = 'MNG',`phone_code` = '976' WHERE  `pais`.`id` = 158;
UPDATE `pais` SET `id` = 159,`fecha_creado` = NULL,`nombre` = 'Montenegro',`name1` = 'Montenegro',`nom` = 'Monténégro',`iso2` = 'ME',`iso3` = 'MNE',`phone_code` = '382' WHERE  `pais`.`id` = 159;
UPDATE `pais` SET `id` = 160,`fecha_creado` = NULL,`nombre` = 'Montserrat',`name1` = 'Montserrat',`nom` = 'Montserrat',`iso2` = 'MS',`iso3` = 'MSR',`phone_code` = '1 664' WHERE  `pais`.`id` = 160;
UPDATE `pais` SET `id` = 161,`fecha_creado` = NULL,`nombre` = 'Mozambique',`name1` = 'Mozambique',`nom` = 'Mozambique',`iso2` = 'MZ',`iso3` = 'MOZ',`phone_code` = '258' WHERE  `pais`.`id` = 161;
UPDATE `pais` SET `id` = 162,`fecha_creado` = NULL,`nombre` = 'Namibia',`name1` = 'Namibia',`nom` = 'Namibie',`iso2` = 'NA',`iso3` = 'NAM',`phone_code` = '264' WHERE  `pais`.`id` = 162;
UPDATE `pais` SET `id` = 163,`fecha_creado` = NULL,`nombre` = 'Nauru',`name1` = 'Nauru',`nom` = 'Nauru',`iso2` = 'NR',`iso3` = 'NRU',`phone_code` = '674' WHERE  `pais`.`id` = 163;
UPDATE `pais` SET `id` = 164,`fecha_creado` = NULL,`nombre` = 'Nepal',`name1` = 'Nepal',`nom` = 'Népal',`iso2` = 'NP',`iso3` = 'NPL',`phone_code` = '977' WHERE  `pais`.`id` = 164;
UPDATE `pais` SET `id` = 165,`fecha_creado` = NULL,`nombre` = 'Nicaragua',`name1` = 'Nicaragua',`nom` = 'Nicaragua',`iso2` = 'NI',`iso3` = 'NIC',`phone_code` = '505' WHERE  `pais`.`id` = 165;
UPDATE `pais` SET `id` = 166,`fecha_creado` = NULL,`nombre` = 'Niger',`name1` = 'Niger',`nom` = 'Niger',`iso2` = 'NE',`iso3` = 'NER',`phone_code` = '227' WHERE  `pais`.`id` = 166;
UPDATE `pais` SET `id` = 167,`fecha_creado` = NULL,`nombre` = 'Nigeria',`name1` = 'Nigeria',`nom` = 'Nigeria',`iso2` = 'NG',`iso3` = 'NGA',`phone_code` = '234' WHERE  `pais`.`id` = 167;
UPDATE `pais` SET `id` = 168,`fecha_creado` = NULL,`nombre` = 'Niue',`name1` = 'Niue',`nom` = 'Niou',`iso2` = 'NU',`iso3` = 'NIU',`phone_code` = '683' WHERE  `pais`.`id` = 168;
UPDATE `pais` SET `id` = 169,`fecha_creado` = NULL,`nombre` = 'Noruega',`name1` = 'Norway',`nom` = 'Norvège',`iso2` = 'NO',`iso3` = 'NOR',`phone_code` = '47' WHERE  `pais`.`id` = 169;
UPDATE `pais` SET `id` = 170,`fecha_creado` = NULL,`nombre` = 'Nueva Caledonia',`name1` = 'New Caledonia',`nom` = 'Nouvelle-Calédonie',`iso2` = 'NC',`iso3` = 'NCL',`phone_code` = '687' WHERE  `pais`.`id` = 170;
UPDATE `pais` SET `id` = 171,`fecha_creado` = NULL,`nombre` = 'Nueva Zelanda',`name1` = 'New Zealand',`nom` = 'Nouvelle-Zélande',`iso2` = 'NZ',`iso3` = 'NZL',`phone_code` = '64' WHERE  `pais`.`id` = 171;
UPDATE `pais` SET `id` = 172,`fecha_creado` = NULL,`nombre` = 'Omán',`name1` = 'Oman',`nom` = 'Oman',`iso2` = 'OM',`iso3` = 'OMN',`phone_code` = '968' WHERE  `pais`.`id` = 172;
UPDATE `pais` SET `id` = 173,`fecha_creado` = NULL,`nombre` = 'Países Bajos',`name1` = 'Netherlands',`nom` = 'Pays-Bas',`iso2` = 'NL',`iso3` = 'NLD',`phone_code` = '31' WHERE  `pais`.`id` = 173;
UPDATE `pais` SET `id` = 174,`fecha_creado` = NULL,`nombre` = 'Pakistán',`name1` = 'Pakistan',`nom` = 'Pakistan',`iso2` = 'PK',`iso3` = 'PAK',`phone_code` = '92' WHERE  `pais`.`id` = 174;
UPDATE `pais` SET `id` = 175,`fecha_creado` = NULL,`nombre` = 'Palau',`name1` = 'Palau',`nom` = 'Palau',`iso2` = 'PW',`iso3` = 'PLW',`phone_code` = '680' WHERE  `pais`.`id` = 175;
UPDATE `pais` SET `id` = 176,`fecha_creado` = NULL,`nombre` = 'Palestina',`name1` = 'Palestine',`nom` = 'La Palestine',`iso2` = 'PS',`iso3` = 'PSE',`phone_code` = '' WHERE  `pais`.`id` = 176;
UPDATE `pais` SET `id` = 177,`fecha_creado` = NULL,`nombre` = 'Panamá',`name1` = 'Panama',`nom` = 'Panama',`iso2` = 'PA',`iso3` = 'PAN',`phone_code` = '507' WHERE  `pais`.`id` = 177;
UPDATE `pais` SET `id` = 178,`fecha_creado` = NULL,`nombre` = 'Papúa Nueva Guinea',`name1` = 'Papua New Guinea',`nom` = 'Papouasie-Nouvelle-Guinée',`iso2` = 'PG',`iso3` = 'PNG',`phone_code` = '675' WHERE  `pais`.`id` = 178;
UPDATE `pais` SET `id` = 179,`fecha_creado` = NULL,`nombre` = 'Paraguay',`name1` = 'Paraguay',`nom` = 'Paraguay',`iso2` = 'PY',`iso3` = 'PRY',`phone_code` = '595' WHERE  `pais`.`id` = 179;
UPDATE `pais` SET `id` = 180,`fecha_creado` = NULL,`nombre` = 'Perú',`name1` = 'Peru',`nom` = 'Pérou',`iso2` = 'PE',`iso3` = 'PER',`phone_code` = '51' WHERE  `pais`.`id` = 180;
UPDATE `pais` SET `id` = 181,`fecha_creado` = NULL,`nombre` = 'Polinesia Francesa',`name1` = 'French Polynesia',`nom` = 'Polynésie française',`iso2` = 'PF',`iso3` = 'PYF',`phone_code` = '689' WHERE  `pais`.`id` = 181;
UPDATE `pais` SET `id` = 182,`fecha_creado` = NULL,`nombre` = 'Polonia',`name1` = 'Poland',`nom` = 'Pologne',`iso2` = 'PL',`iso3` = 'POL',`phone_code` = '48' WHERE  `pais`.`id` = 182;
UPDATE `pais` SET `id` = 183,`fecha_creado` = NULL,`nombre` = 'Portugal',`name1` = 'Portugal',`nom` = 'Portugal',`iso2` = 'PT',`iso3` = 'PRT',`phone_code` = '351' WHERE  `pais`.`id` = 183;
UPDATE `pais` SET `id` = 184,`fecha_creado` = NULL,`nombre` = 'Puerto Rico',`name1` = 'Puerto Rico',`nom` = 'Porto Rico',`iso2` = 'PR',`iso3` = 'PRI',`phone_code` = '1' WHERE  `pais`.`id` = 184;
UPDATE `pais` SET `id` = 185,`fecha_creado` = NULL,`nombre` = 'Qatar',`name1` = 'Qatar',`nom` = 'Qatar',`iso2` = 'QA',`iso3` = 'QAT',`phone_code` = '974' WHERE  `pais`.`id` = 185;
UPDATE `pais` SET `id` = 186,`fecha_creado` = NULL,`nombre` = 'Reino Unido',`name1` = 'United Kingdom',`nom` = 'Royaume-Uni',`iso2` = 'GB',`iso3` = 'GBR',`phone_code` = '44' WHERE  `pais`.`id` = 186;
UPDATE `pais` SET `id` = 187,`fecha_creado` = NULL,`nombre` = 'República Centroafricana',`name1` = 'Central African Republic',`nom` = 'République Centrafricaine',`iso2` = 'CF',`iso3` = 'CAF',`phone_code` = '236' WHERE  `pais`.`id` = 187;
UPDATE `pais` SET `id` = 188,`fecha_creado` = NULL,`nombre` = 'República Checa',`name1` = 'Czech Republic',`nom` = 'République Tchèque',`iso2` = 'CZ',`iso3` = 'CZE',`phone_code` = '420' WHERE  `pais`.`id` = 188;
UPDATE `pais` SET `id` = 189,`fecha_creado` = NULL,`nombre` = 'República Dominicana',`name1` = 'Dominican Republic',`nom` = 'République Dominicaine',`iso2` = 'DO',`iso3` = 'DOM',`phone_code` = '1 809' WHERE  `pais`.`id` = 189;
UPDATE `pais` SET `id` = 190,`fecha_creado` = NULL,`nombre` = 'Reunión',`name1` = 'Réunion',`nom` = 'Réunion',`iso2` = 'RE',`iso3` = 'REU',`phone_code` = '' WHERE  `pais`.`id` = 190;
UPDATE `pais` SET `id` = 191,`fecha_creado` = NULL,`nombre` = 'Ruanda',`name1` = 'Rwanda',`nom` = 'Rwanda',`iso2` = 'RW',`iso3` = 'RWA',`phone_code` = '250' WHERE  `pais`.`id` = 191;
UPDATE `pais` SET `id` = 192,`fecha_creado` = NULL,`nombre` = 'Rumanía',`name1` = 'Romania',`nom` = 'Roumanie',`iso2` = 'RO',`iso3` = 'ROU',`phone_code` = '40' WHERE  `pais`.`id` = 192;
UPDATE `pais` SET `id` = 193,`fecha_creado` = NULL,`nombre` = 'Rusia',`name1` = 'Russia',`nom` = 'La Russie',`iso2` = 'RU',`iso3` = 'RUS',`phone_code` = '7' WHERE  `pais`.`id` = 193;
UPDATE `pais` SET `id` = 194,`fecha_creado` = NULL,`nombre` = 'Sahara Occidental',`name1` = 'Western Sahara',`nom` = 'Sahara Occidental',`iso2` = 'EH',`iso3` = 'ESH',`phone_code` = '' WHERE  `pais`.`id` = 194;
UPDATE `pais` SET `id` = 195,`fecha_creado` = NULL,`nombre` = 'Samoa',`name1` = 'Samoa',`nom` = 'Samoa',`iso2` = 'WS',`iso3` = 'WSM',`phone_code` = '685' WHERE  `pais`.`id` = 195;
UPDATE `pais` SET `id` = 196,`fecha_creado` = NULL,`nombre` = 'Samoa Americana',`name1` = 'American Samoa',`nom` = 'Les Samoa américaines',`iso2` = 'AS',`iso3` = 'ASM',`phone_code` = '1 684' WHERE  `pais`.`id` = 196;
UPDATE `pais` SET `id` = 197,`fecha_creado` = NULL,`nombre` = 'San Bartolomé',`name1` = 'Saint Barthélemy',`nom` = 'Saint-Barthélemy',`iso2` = 'BL',`iso3` = 'BLM',`phone_code` = '590' WHERE  `pais`.`id` = 197;
UPDATE `pais` SET `id` = 198,`fecha_creado` = NULL,`nombre` = 'San Cristóbal y Nieves',`name1` = 'Saint Kitts and Nevis',`nom` = 'Saint Kitts et Nevis',`iso2` = 'KN',`iso3` = 'KNA',`phone_code` = '1 869' WHERE  `pais`.`id` = 198;
UPDATE `pais` SET `id` = 199,`fecha_creado` = NULL,`nombre` = 'San Marino',`name1` = 'San Marino',`nom` = 'San Marino',`iso2` = 'SM',`iso3` = 'SMR',`phone_code` = '378' WHERE  `pais`.`id` = 199;
UPDATE `pais` SET `id` = 200,`fecha_creado` = NULL,`nombre` = 'San Martín (Francia)',`name1` = 'Saint Martin (French part)',`nom` = 'Saint-Martin (partie française)',`iso2` = 'MF',`iso3` = 'MAF',`phone_code` = '1 599' WHERE  `pais`.`id` = 200;
UPDATE `pais` SET `id` = 201,`fecha_creado` = NULL,`nombre` = 'San Pedro y Miquelón',`name1` = 'Saint Pierre and Miquelon',`nom` = 'Saint-Pierre-et-Miquelon',`iso2` = 'PM',`iso3` = 'SPM',`phone_code` = '508' WHERE  `pais`.`id` = 201;
UPDATE `pais` SET `id` = 202,`fecha_creado` = NULL,`nombre` = 'San Vicente y las Granadinas',`name1` = 'Saint Vincent and the Grenadines',`nom` = 'Saint-Vincent et Grenadines',`iso2` = 'VC',`iso3` = 'VCT',`phone_code` = '1 784' WHERE  `pais`.`id` = 202;
UPDATE `pais` SET `id` = 203,`fecha_creado` = NULL,`nombre` = 'Santa Elena',`name1` = 'Ascensión y Tristán de Acuña',`nom` = 'Ascensión y Tristan de Acuña',`iso2` = 'SH',`iso3` = 'SHN',`phone_code` = '290' WHERE  `pais`.`id` = 203;
UPDATE `pais` SET `id` = 204,`fecha_creado` = NULL,`nombre` = 'Santa Lucía',`name1` = 'Saint Lucia',`nom` = 'Sainte-Lucie',`iso2` = 'LC',`iso3` = 'LCA',`phone_code` = '1 758' WHERE  `pais`.`id` = 204;
UPDATE `pais` SET `id` = 205,`fecha_creado` = NULL,`nombre` = 'Santo Tomé y Príncipe',`name1` = 'Sao Tome and Principe',`nom` = 'Sao Tomé et Principe',`iso2` = 'ST',`iso3` = 'STP',`phone_code` = '239' WHERE  `pais`.`id` = 205;
UPDATE `pais` SET `id` = 206,`fecha_creado` = NULL,`nombre` = 'Senegal',`name1` = 'Senegal',`nom` = 'Sénégal',`iso2` = 'SN',`iso3` = 'SEN',`phone_code` = '221' WHERE  `pais`.`id` = 206;
UPDATE `pais` SET `id` = 207,`fecha_creado` = NULL,`nombre` = 'Serbia',`name1` = 'Serbia',`nom` = 'Serbie',`iso2` = 'RS',`iso3` = 'SRB',`phone_code` = '381' WHERE  `pais`.`id` = 207;
UPDATE `pais` SET `id` = 208,`fecha_creado` = NULL,`nombre` = 'Seychelles',`name1` = 'Seychelles',`nom` = 'Les Seychelles',`iso2` = 'SC',`iso3` = 'SYC',`phone_code` = '248' WHERE  `pais`.`id` = 208;
UPDATE `pais` SET `id` = 209,`fecha_creado` = NULL,`nombre` = 'Sierra Leona',`name1` = 'Sierra Leone',`nom` = 'Sierra Leone',`iso2` = 'SL',`iso3` = 'SLE',`phone_code` = '232' WHERE  `pais`.`id` = 209;
UPDATE `pais` SET `id` = 210,`fecha_creado` = NULL,`nombre` = 'Singapur',`name1` = 'Singapore',`nom` = 'Singapour',`iso2` = 'SG',`iso3` = 'SGP',`phone_code` = '65' WHERE  `pais`.`id` = 210;
UPDATE `pais` SET `id` = 211,`fecha_creado` = NULL,`nombre` = 'Siria',`name1` = 'Syria',`nom` = 'Syrie',`iso2` = 'SY',`iso3` = 'SYR',`phone_code` = '963' WHERE  `pais`.`id` = 211;
UPDATE `pais` SET `id` = 212,`fecha_creado` = NULL,`nombre` = 'Somalia',`name1` = 'Somalia',`nom` = 'Somalie',`iso2` = 'SO',`iso3` = 'SOM',`phone_code` = '252' WHERE  `pais`.`id` = 212;
UPDATE `pais` SET `id` = 213,`fecha_creado` = NULL,`nombre` = 'Sri lanka',`name1` = 'Sri Lanka',`nom` = 'Sri Lanka',`iso2` = 'LK',`iso3` = 'LKA',`phone_code` = '94' WHERE  `pais`.`id` = 213;
UPDATE `pais` SET `id` = 214,`fecha_creado` = NULL,`nombre` = 'Sudáfrica',`name1` = 'South Africa',`nom` = 'Afrique du Sud',`iso2` = 'ZA',`iso3` = 'ZAF',`phone_code` = '27' WHERE  `pais`.`id` = 214;
UPDATE `pais` SET `id` = 215,`fecha_creado` = NULL,`nombre` = 'Sudán',`name1` = 'Sudan',`nom` = 'Soudan',`iso2` = 'SD',`iso3` = 'SDN',`phone_code` = '249' WHERE  `pais`.`id` = 215;
UPDATE `pais` SET `id` = 216,`fecha_creado` = NULL,`nombre` = 'Suecia',`name1` = 'Sweden',`nom` = 'Suède',`iso2` = 'SE',`iso3` = 'SWE',`phone_code` = '46' WHERE  `pais`.`id` = 216;
UPDATE `pais` SET `id` = 217,`fecha_creado` = NULL,`nombre` = 'Suiza',`name1` = 'Switzerland',`nom` = 'Suisse',`iso2` = 'CH',`iso3` = 'CHE',`phone_code` = '41' WHERE  `pais`.`id` = 217;
UPDATE `pais` SET `id` = 218,`fecha_creado` = NULL,`nombre` = 'Surinám',`name1` = 'Suriname',`nom` = 'Surinam',`iso2` = 'SR',`iso3` = 'SUR',`phone_code` = '597' WHERE  `pais`.`id` = 218;
UPDATE `pais` SET `id` = 219,`fecha_creado` = NULL,`nombre` = 'Svalbard y Jan Mayen',`name1` = 'Svalbard and Jan Mayen',`nom` = 'Svalbard et Jan Mayen',`iso2` = 'SJ',`iso3` = 'SJM',`phone_code` = '' WHERE  `pais`.`id` = 219;
UPDATE `pais` SET `id` = 220,`fecha_creado` = NULL,`nombre` = 'Swazilandia',`name1` = 'Swaziland',`nom` = 'Swaziland',`iso2` = 'SZ',`iso3` = 'SWZ',`phone_code` = '268' WHERE  `pais`.`id` = 220;
UPDATE `pais` SET `id` = 221,`fecha_creado` = NULL,`nombre` = 'Tadjikistán',`name1` = 'Tajikistan',`nom` = 'Le Tadjikistan',`iso2` = 'TJ',`iso3` = 'TJK',`phone_code` = '992' WHERE  `pais`.`id` = 221;
UPDATE `pais` SET `id` = 222,`fecha_creado` = NULL,`nombre` = 'Tailandia',`name1` = 'Thailand',`nom` = 'Thaïlande',`iso2` = 'TH',`iso3` = 'THA',`phone_code` = '66' WHERE  `pais`.`id` = 222;
UPDATE `pais` SET `id` = 223,`fecha_creado` = NULL,`nombre` = 'Taiwán',`name1` = 'Taiwan',`nom` = 'Taiwan',`iso2` = 'TW',`iso3` = 'TWN',`phone_code` = '886' WHERE  `pais`.`id` = 223;
UPDATE `pais` SET `id` = 224,`fecha_creado` = NULL,`nombre` = 'Tanzania',`name1` = 'Tanzania',`nom` = 'Tanzanie',`iso2` = 'TZ',`iso3` = 'TZA',`phone_code` = '255' WHERE  `pais`.`id` = 224;
UPDATE `pais` SET `id` = 225,`fecha_creado` = NULL,`nombre` = 'Territorio Británico del Océano Índico',`name1` = 'British Indian Ocean Territory',`nom` = 'Territoire britannique de l''océan Indien',`iso2` = 'IO',`iso3` = 'IOT',`phone_code` = '' WHERE  `pais`.`id` = 225;
UPDATE `pais` SET `id` = 226,`fecha_creado` = NULL,`nombre` = 'Territorios Australes y Antárticas Franceses',`name1` = 'French Southern Territories',`nom` = 'Terres australes françaises',`iso2` = 'TF',`iso3` = 'ATF',`phone_code` = '' WHERE  `pais`.`id` = 226;
UPDATE `pais` SET `id` = 227,`fecha_creado` = NULL,`nombre` = 'Timor Oriental',`name1` = 'East Timor',`nom` = 'Timor-Oriental',`iso2` = 'TL',`iso3` = 'TLS',`phone_code` = '670' WHERE  `pais`.`id` = 227;
UPDATE `pais` SET `id` = 228,`fecha_creado` = NULL,`nombre` = 'Togo',`name1` = 'Togo',`nom` = 'Togo',`iso2` = 'TG',`iso3` = 'TGO',`phone_code` = '228' WHERE  `pais`.`id` = 228;
UPDATE `pais` SET `id` = 229,`fecha_creado` = NULL,`nombre` = 'Tokelau',`name1` = 'Tokelau',`nom` = 'Tokélaou',`iso2` = 'TK',`iso3` = 'TKL',`phone_code` = '690' WHERE  `pais`.`id` = 229;
UPDATE `pais` SET `id` = 230,`fecha_creado` = NULL,`nombre` = 'Tonga',`name1` = 'Tonga',`nom` = 'Tonga',`iso2` = 'TO',`iso3` = 'TON',`phone_code` = '676' WHERE  `pais`.`id` = 230;
UPDATE `pais` SET `id` = 231,`fecha_creado` = NULL,`nombre` = 'Trinidad y Tobago',`name1` = 'Trinidad and Tobago',`nom` = 'Trinidad et Tobago',`iso2` = 'TT',`iso3` = 'TTO',`phone_code` = '1 868' WHERE  `pais`.`id` = 231;
UPDATE `pais` SET `id` = 232,`fecha_creado` = NULL,`nombre` = 'Tunez',`name1` = 'Tunisia',`nom` = 'Tunisie',`iso2` = 'TN',`iso3` = 'TUN',`phone_code` = '216' WHERE  `pais`.`id` = 232;
UPDATE `pais` SET `id` = 233,`fecha_creado` = NULL,`nombre` = 'Turkmenistán',`name1` = 'Turkmenistan',`nom` = 'Le Turkménistan',`iso2` = 'TM',`iso3` = 'TKM',`phone_code` = '993' WHERE  `pais`.`id` = 233;
UPDATE `pais` SET `id` = 234,`fecha_creado` = NULL,`nombre` = 'Turquía',`name1` = 'Turkey',`nom` = 'Turquie',`iso2` = 'TR',`iso3` = 'TUR',`phone_code` = '90' WHERE  `pais`.`id` = 234;
UPDATE `pais` SET `id` = 235,`fecha_creado` = NULL,`nombre` = 'Tuvalu',`name1` = 'Tuvalu',`nom` = 'Tuvalu',`iso2` = 'TV',`iso3` = 'TUV',`phone_code` = '688' WHERE  `pais`.`id` = 235;
UPDATE `pais` SET `id` = 236,`fecha_creado` = NULL,`nombre` = 'Ucrania',`name1` = 'Ukraine',`nom` = 'L''Ukraine',`iso2` = 'UA',`iso3` = 'UKR',`phone_code` = '380' WHERE  `pais`.`id` = 236;
UPDATE `pais` SET `id` = 237,`fecha_creado` = NULL,`nombre` = 'Uganda',`name1` = 'Uganda',`nom` = 'Ouganda',`iso2` = 'UG',`iso3` = 'UGA',`phone_code` = '256' WHERE  `pais`.`id` = 237;
UPDATE `pais` SET `id` = 238,`fecha_creado` = NULL,`nombre` = 'Uruguay',`name1` = 'Uruguay',`nom` = 'Uruguay',`iso2` = 'UY',`iso3` = 'URY',`phone_code` = '598' WHERE  `pais`.`id` = 238;
UPDATE `pais` SET `id` = 239,`fecha_creado` = NULL,`nombre` = 'Uzbekistán',`name1` = 'Uzbekistan',`nom` = 'L''Ouzbékistan',`iso2` = 'UZ',`iso3` = 'UZB',`phone_code` = '998' WHERE  `pais`.`id` = 239;
UPDATE `pais` SET `id` = 240,`fecha_creado` = NULL,`nombre` = 'Vanuatu',`name1` = 'Vanuatu',`nom` = 'Vanuatu',`iso2` = 'VU',`iso3` = 'VUT',`phone_code` = '678' WHERE  `pais`.`id` = 240;
UPDATE `pais` SET `id` = 241,`fecha_creado` = NULL,`nombre` = 'Venezuela',`name1` = 'Venezuela',`nom` = 'Venezuela',`iso2` = 'VE',`iso3` = 'VEN',`phone_code` = '58' WHERE  `pais`.`id` = 241;
UPDATE `pais` SET `id` = 242,`fecha_creado` = NULL,`nombre` = 'Vietnam',`name1` = 'Vietnam',`nom` = 'Vietnam',`iso2` = 'VN',`iso3` = 'VNM',`phone_code` = '84' WHERE  `pais`.`id` = 242;
UPDATE `pais` SET `id` = 243,`fecha_creado` = NULL,`nombre` = 'Wallis y Futuna',`name1` = 'Wallis and Futuna',`nom` = 'Wallis et Futuna',`iso2` = 'WF',`iso3` = 'WLF',`phone_code` = '681' WHERE  `pais`.`id` = 243;
UPDATE `pais` SET `id` = 244,`fecha_creado` = NULL,`nombre` = 'Yemen',`name1` = 'Yemen',`nom` = 'Yémen',`iso2` = 'YE',`iso3` = 'YEM',`phone_code` = '967' WHERE  `pais`.`id` = 244;
UPDATE `pais` SET `id` = 245,`fecha_creado` = NULL,`nombre` = 'Yibuti',`name1` = 'Djibouti',`nom` = 'Djibouti',`iso2` = 'DJ',`iso3` = 'DJI',`phone_code` = '253' WHERE  `pais`.`id` = 245;
UPDATE `pais` SET `id` = 246,`fecha_creado` = NULL,`nombre` = 'Zambia',`name1` = 'Zambia',`nom` = 'Zambie',`iso2` = 'ZM',`iso3` = 'ZMB',`phone_code` = '260' WHERE  `pais`.`id` = 246;
UPDATE `pais` SET `id` = 247,`fecha_creado` = NULL,`nombre` = 'Zimbabue',`name1` = 'Zimbabwe',`nom` = 'Zimbabwe',`iso2` = 'ZW',`iso3` = 'ZWE',`phone_code` = '263' WHERE  `pais`.`id` = 247;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id_creado` int(11) DEFAULT NULL,
  `user_id_editado` int(11) DEFAULT NULL,
  `fecha_editado` datetime DEFAULT NULL,
  `fecha_creado` datetime DEFAULT NULL,
  `post` text,
  `categoria_post` int(11) DEFAULT NULL,
  `img_url` varchar(100) DEFAULT NULL,
  `caracteristica` text,
  `pais_id` int(11) DEFAULT NULL,
  `numero` int(11) DEFAULT NULL,
  `detalle_numero` enum('unidad','millar','metro','qg','yarda','zon','galones','barriles','litros','cajas','fulgones','otro') DEFAULT NULL,
  `esto_provincia` varchar(100) DEFAULT NULL,
  `localidad` text,
  `fecha_entrega` date DEFAULT NULL,
  `observaciones` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `posts`
--

UPDATE `posts` SET `id` = 1,`user_id_creado` = 18,`user_id_editado` = NULL,`fecha_editado` = NULL,`fecha_creado` = '2017-01-01 07:30:32',`post` = '<p>Bienvenidos a nuestra red social, la red en donde convergen todos los sectores productivos de Republica Dominicana y el Mundo!</p>',`categoria_post` = 1,`img_url` = 'img_product/01012017073032.png',`caracteristica` = NULL,`pais_id` = NULL,`numero` = NULL,`detalle_numero` = NULL,`esto_provincia` = NULL,`localidad` = NULL,`fecha_entrega` = NULL,`observaciones` = NULL WHERE  `posts`.`id` = 1;
UPDATE `posts` SET `id` = 2,`user_id_creado` = 21,`user_id_editado` = NULL,`fecha_editado` = NULL,`fecha_creado` = '2017-01-04 10:57:45',`post` = '<p>&nbsp;Agimerca, abre tu negocio al mundo y el mundo a tu negocio.</p>',`categoria_post` = 1,`img_url` = '',`caracteristica` = NULL,`pais_id` = NULL,`numero` = NULL,`detalle_numero` = NULL,`esto_provincia` = NULL,`localidad` = NULL,`fecha_entrega` = NULL,`observaciones` = NULL WHERE  `posts`.`id` = 2;
UPDATE `posts` SET `id` = 3,`user_id_creado` = 21,`user_id_editado` = NULL,`fecha_editado` = NULL,`fecha_creado` = '2017-01-05 16:25:18',`post` = '<h3 style="text-align: justify;">Para publicar y conocer Ofertas y Demandas conectate a Agimerca, eventos y actividades Agimerca te publica, gratis.</h3>',`categoria_post` = 1,`img_url` = '',`caracteristica` = NULL,`pais_id` = NULL,`numero` = NULL,`detalle_numero` = NULL,`esto_provincia` = NULL,`localidad` = NULL,`fecha_entrega` = NULL,`observaciones` = NULL WHERE  `posts`.`id` = 3;
UPDATE `posts` SET `id` = 4,`user_id_creado` = 21,`user_id_editado` = NULL,`fecha_editado` = NULL,`fecha_creado` = '2017-01-05 16:31:16',`post` = '<h3><em>Agimerca, abre tu negocio al mundo y el mundo a tu negocio.</em></h3>',`categoria_post` = 1,`img_url` = '',`caracteristica` = NULL,`pais_id` = NULL,`numero` = NULL,`detalle_numero` = NULL,`esto_provincia` = NULL,`localidad` = NULL,`fecha_entrega` = NULL,`observaciones` = NULL WHERE  `posts`.`id` = 4;
UPDATE `posts` SET `id` = 5,`user_id_creado` = 21,`user_id_editado` = NULL,`fecha_editado` = NULL,`fecha_creado` = '2017-01-07 07:35:46',`post` = '',`categoria_post` = 1,`img_url` = '',`caracteristica` = NULL,`pais_id` = NULL,`numero` = NULL,`detalle_numero` = NULL,`esto_provincia` = NULL,`localidad` = NULL,`fecha_entrega` = NULL,`observaciones` = NULL WHERE  `posts`.`id` = 5;
UPDATE `posts` SET `id` = 6,`user_id_creado` = 21,`user_id_editado` = NULL,`fecha_editado` = NULL,`fecha_creado` = '2017-02-21 05:21:21',`post` = '',`categoria_post` = 1,`img_url` = '',`caracteristica` = NULL,`pais_id` = 0,`numero` = NULL,`detalle_numero` = NULL,`esto_provincia` = NULL,`localidad` = NULL,`fecha_entrega` = NULL,`observaciones` = NULL WHERE  `posts`.`id` = 6;
UPDATE `posts` SET `id` = 7,`user_id_creado` = 21,`user_id_editado` = NULL,`fecha_editado` = NULL,`fecha_creado` = '2017-02-21 15:48:35',`post` = '<p class="MsoNormal" style="text-align: center;" align="center"><span style="font-size: 12.0pt; line-height: 115%;">QUE ES AGIMERCA.</span></p>\r\n<p class="MsoNormal" style="text-align: justify;"><span style="font-size: 12.0pt; line-height: 115%;">Es una red social de inteligencia de mercados, creada para dar apoyo al emprendedurismo y a las MIPYMES productivas y comerciales, &nbsp;mediante la publicaci&oacute;n e informaci&oacute;n de&nbsp; ofertas y demandas del mercado.</span></p>\r\n<p class="MsoNormal" style="text-align: justify;"><span style="font-size: 12.0pt; line-height: 115%;">En estos momentos de apertura de los mercados, las empresas MIPYMES no disponen recursos econ&oacute;micos ni de manejo en el uso de la&nbsp; tecnolog&iacute;a de la informaci&oacute;n para &nbsp;investigar mercados. Es de necesidad el apoyo de instituciones globales, para reducir inequidad en este proceso de libre mercado, en inter&eacute;s de promover la autogesti&oacute;n y la competitividad.</span></p>\r\n<p class="MsoNormal" style="text-align: justify;"><span style="font-size: 12.0pt; line-height: 115%;">El conocimiento de las ofertas y demandas del mercado permitir&aacute; la creaci&oacute;n y desarrollo de empresas MIPYMES y la &nbsp;dinamizaci&oacute;n&nbsp; y diversificaci&oacute;n de &nbsp;productos y mercados. </span></p>\r\n<p class="MsoNormal" style="text-align: justify;"><span style="font-size: 12.0pt; line-height: 115%;">Con esto apoyamos el desarrollo de los sectores productivos y comerciales, &nbsp;facilitando&nbsp; alcanzar&nbsp; crecimiento econ&oacute;mico sostenible. Es de oportunidad se&ntilde;alar, que el sector financiero tendr&aacute; en AGIMERCA un soporte muy v&aacute;lido para &nbsp;evaluar proyectos de inversi&oacute;n conforme a las ofertas y requerimientos de los mercados agropecuarios, industriales y comerciales.</span></p>\r\n<p class="MsoNormal" style="text-align: justify;"><span style="font-size: 12.0pt; line-height: 115%;">La labor de Agimerca permitir&aacute; a los sectores productivos y comerciales consolidar sus empresas con productos de oportunidad comercial, obtener cr&eacute;ditos con facilidad y lograr&nbsp; aumento en su cartera crediticia a tasa m&aacute;s baja. </span></p>\r\n<p class="MsoNormal" style="text-align: justify;"><span style="font-size: 12.0pt; line-height: 115%;">El sector diplom&aacute;tico en sus labores de promoci&oacute;n comercial en el mercado exterior, hallar&aacute; en Agimerca&nbsp; apoyo. Al tener en un sitio en l&iacute;nea &nbsp;las ofertas y demandas de los diferentes sectores productivos y comerciales de su pa&iacute;s, y el medio para publicar oportunidades de negocios.</span></p>\r\n<p class="MsoNormal" style="text-align: justify;"><span style="font-size: 12pt; line-height: 115%;">En ese sentido,</span><span style="font-size: 12.0pt; line-height: 115%;"> los encargados de comercio exterior de los diferentes pa&iacute;ses solo tendr&aacute;n que recurrir al portar de Agimerca para mostrar las ofertas y demandas de su mercado de inter&eacute;s, en tiempo real.</span></p>\r\n<p class="MsoNormal" style="text-align: justify;"><span style="font-size: 12.0pt; line-height: 115%;">Despu&eacute;s de la crisis del 2007 Ha sido de gran inter&eacute;s promover el crecimiento econ&oacute;mico mediante&nbsp; la creaci&oacute;n y desarrollo de las PYMES y solo la informaci&oacute;n&nbsp; de mercado en tiempo real, &nbsp;permitir&aacute; que este importante sector empresarial genere empleos y crecimiento econ&oacute;mico de abajo as&iacute;a arriba para impactar positivamente todo el escenario socioecon&oacute;mico hacia el crecimiento generalizado &nbsp;de modo sostenido, para que la humanidad&nbsp; alcance el&nbsp; desarrollo socioecon&oacute;mico integral sostenible. &nbsp;</span></p>\r\n<p>&nbsp;</p>\r\n<p class="MsoNormal" style="text-align: justify;"><span style="font-size: 12.0pt; line-height: 115%;">&nbsp;&nbsp;&nbsp;</span></p>',`categoria_post` = 1,`img_url` = '',`caracteristica` = NULL,`pais_id` = 0,`numero` = NULL,`detalle_numero` = NULL,`esto_provincia` = NULL,`localidad` = NULL,`fecha_entrega` = NULL,`observaciones` = NULL WHERE  `posts`.`id` = 7;
UPDATE `posts` SET `id` = 8,`user_id_creado` = 21,`user_id_editado` = NULL,`fecha_editado` = NULL,`fecha_creado` = '2017-02-21 15:58:41',`post` = '',`categoria_post` = 1,`img_url` = '',`caracteristica` = NULL,`pais_id` = 0,`numero` = NULL,`detalle_numero` = NULL,`esto_provincia` = NULL,`localidad` = NULL,`fecha_entrega` = NULL,`observaciones` = NULL WHERE  `posts`.`id` = 8;
UPDATE `posts` SET `id` = 9,`user_id_creado` = 57,`user_id_editado` = NULL,`fecha_editado` = NULL,`fecha_creado` = '2017-02-27 20:04:27',`post` = '<p class="MsoNormal" style="text-align: center;" align="center"><strong><em><span style="font-size: 14.0pt; line-height: 106%; color: #0070c0; mso-ansi-language: ES;">INTELIGENCIA DE NEGOCIO.</span></em></strong></p>\r\n<p class="MsoNormal" style="text-align: justify;"><em><span style="font-size: 14.0pt; line-height: 106%; mso-ansi-language: ES;">La inteligencia de Negocio o Empresarial se basa en el an&aacute;lisis de datos para la toma de decisiones empresarial, que permita anticiparse a acontecimientos. Esta actividad para su efectividad requiere de sistemas de informaci&oacute;n de la producci&oacute;n y el comercio.</span></em></p>\r\n<p class="MsoNormal" style="text-align: justify;"><em><span style="font-size: 14.0pt; line-height: 106%; mso-ansi-language: ES;">En 1989 Howard Dresner propuso la inteligencia de negocio &ldquo;como un t&eacute;rmino general para describir&rdquo; los conceptos y m&eacute;todos para mejorar la toma de decisiones empresariales mediante el uso de sistemas basados en hechos de apoyo&rdquo;.</span></em></p>\r\n<p class="MsoNormal" style="text-align: justify;"><em><span style="font-size: 14.0pt; line-height: 106%; mso-ansi-language: ES;">Los datos extra&iacute;dos del mercado es la fuente principal en la labor de inteligencia de negocio, estos deben ser independiente, de modo que&nbsp; obedezcan&nbsp; a la realidad del mercado.</span></em></p>\r\n<p class="MsoNormal" style="text-align: justify;"><em><span style="font-size: 14.0pt; line-height: 106%; mso-ansi-language: ES;">La red Agimerca en su labor de apoyo al desarrollo del sector MIPYMES le da aseso para&nbsp; publicar sus ofertas y demandas, y la oportunidad de conocer&nbsp; requerimientos&nbsp; y ofertas &nbsp;del mercado nacional e internacional.&nbsp; </span></em></p>\r\n<p class="MsoNormal" style="text-align: justify;"><em><span style="font-size: 14.0pt; line-height: 106%; mso-ansi-language: ES;">La laborar de &nbsp;informaci&oacute;n de mercados&nbsp; que realiza la red Agimerca&nbsp; al sector MIPYMES aportar&aacute; conocimientos de actividades productivas o comerciales de la competencia e informaciones de requerimientos del mercado. Con la finalidad de que las empresas en la construcci&oacute;n&nbsp; de su estrategias de inteligencia de negocio, puedan posicionarse de modo competitivo&nbsp; en los mercados.</span></em></p>\r\n<p class="MsoNormal" style="text-align: justify;"><em><span style="font-size: 14.0pt; line-height: 106%; mso-ansi-language: ES;">El mercado presenta&nbsp; a todo productor o emprendedor el medio para conocer&nbsp; espacios que le permitir&aacute;n&nbsp; diversificar su oferta,&nbsp;&nbsp; cuando se est&aacute; infamado y Agimerca aporta el medio para que productor o comerciante MIPYMES pueda conocer su mercado o nuevos mercados, y prosperar en los mismos de modo competitivo. Porque seg&uacute;n el premio nobel en econom&iacute;a, J. F. Nash referenciando la teor&iacute;a del juego de Von Neumann dice, Nash: &ldquo;Si dos jugadores en escenarios competitivos&nbsp; tienen el mismo nivel de informaci&oacute;n ambos podr&aacute;n elaborar estrategias y sus resultados serian tan &oacute;ptimos que&nbsp; no tendr&iacute;an necesidad de cambiar de estrategia&rdquo;&nbsp;&nbsp;&nbsp;&nbsp; </span></em></p>\r\n<p class="MsoNormal" style="text-align: justify;"><span style="font-size: 18pt; line-height: 106%;">&nbsp;</span></p>\r\n<p>&nbsp;</p>\r\n<p class="MsoNormal">&nbsp;</p>',`categoria_post` = 1,`img_url` = '',`caracteristica` = NULL,`pais_id` = 0,`numero` = NULL,`detalle_numero` = NULL,`esto_provincia` = NULL,`localidad` = NULL,`fecha_entrega` = NULL,`observaciones` = NULL WHERE  `posts`.`id` = 9;

-- --------------------------------------------------------

--
-- Table structure for table `relacion_categoria_subcategoria`
--

CREATE TABLE `relacion_categoria_subcategoria` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id_creado` int(11) DEFAULT NULL,
  `fecha_creado` datetime DEFAULT NULL,
  `categoria_id` int(11) DEFAULT NULL,
  `sub_categoria_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `relacion_categoria_subcategoria`
--

UPDATE `relacion_categoria_subcategoria` SET `id` = 1,`user_id_creado` = 1,`fecha_creado` = '2017-01-16 09:19:38',`categoria_id` = 1,`sub_categoria_id` = 1 WHERE  `relacion_categoria_subcategoria`.`id` = 1;
UPDATE `relacion_categoria_subcategoria` SET `id` = 2,`user_id_creado` = 1,`fecha_creado` = '2017-01-16 09:19:38',`categoria_id` = 1,`sub_categoria_id` = 2 WHERE  `relacion_categoria_subcategoria`.`id` = 2;
UPDATE `relacion_categoria_subcategoria` SET `id` = 3,`user_id_creado` = 1,`fecha_creado` = '2017-01-16 09:19:38',`categoria_id` = 1,`sub_categoria_id` = 3 WHERE  `relacion_categoria_subcategoria`.`id` = 3;
UPDATE `relacion_categoria_subcategoria` SET `id` = 4,`user_id_creado` = 1,`fecha_creado` = '2017-01-16 09:25:56',`categoria_id` = 2,`sub_categoria_id` = 1 WHERE  `relacion_categoria_subcategoria`.`id` = 4;
UPDATE `relacion_categoria_subcategoria` SET `id` = 5,`user_id_creado` = 1,`fecha_creado` = '2017-01-16 09:25:56',`categoria_id` = 2,`sub_categoria_id` = 2 WHERE  `relacion_categoria_subcategoria`.`id` = 5;
UPDATE `relacion_categoria_subcategoria` SET `id` = 6,`user_id_creado` = 1,`fecha_creado` = '2017-01-16 09:25:56',`categoria_id` = 2,`sub_categoria_id` = 3 WHERE  `relacion_categoria_subcategoria`.`id` = 6;

-- --------------------------------------------------------

--
-- Table structure for table `relacion_subcategorias_subsubcategoria`
--

CREATE TABLE `relacion_subcategorias_subsubcategoria` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id_creado` int(11) DEFAULT NULL,
  `fecha_creado` datetime DEFAULT NULL,
  `relacion_categoria_subcategoria_id` int(11) DEFAULT NULL,
  `sub_of_sub_categoria_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `relacion_subcategorias_subsubcategoria`
--

UPDATE `relacion_subcategorias_subsubcategoria` SET `id` = 1,`user_id_creado` = 1,`fecha_creado` = '2017-01-16 09:19:59',`relacion_categoria_subcategoria_id` = 1,`sub_of_sub_categoria_id` = 1 WHERE  `relacion_subcategorias_subsubcategoria`.`id` = 1;
UPDATE `relacion_subcategorias_subsubcategoria` SET `id` = 2,`user_id_creado` = 1,`fecha_creado` = '2017-01-16 09:19:59',`relacion_categoria_subcategoria_id` = 1,`sub_of_sub_categoria_id` = 2 WHERE  `relacion_subcategorias_subsubcategoria`.`id` = 2;
UPDATE `relacion_subcategorias_subsubcategoria` SET `id` = 3,`user_id_creado` = 1,`fecha_creado` = '2017-01-16 09:19:59',`relacion_categoria_subcategoria_id` = 1,`sub_of_sub_categoria_id` = 3 WHERE  `relacion_subcategorias_subsubcategoria`.`id` = 3;
UPDATE `relacion_subcategorias_subsubcategoria` SET `id` = 4,`user_id_creado` = 1,`fecha_creado` = '2017-01-16 09:19:59',`relacion_categoria_subcategoria_id` = 1,`sub_of_sub_categoria_id` = 4 WHERE  `relacion_subcategorias_subsubcategoria`.`id` = 4;
UPDATE `relacion_subcategorias_subsubcategoria` SET `id` = 5,`user_id_creado` = 1,`fecha_creado` = '2017-01-16 09:19:59',`relacion_categoria_subcategoria_id` = 1,`sub_of_sub_categoria_id` = 5 WHERE  `relacion_subcategorias_subsubcategoria`.`id` = 5;
UPDATE `relacion_subcategorias_subsubcategoria` SET `id` = 6,`user_id_creado` = 1,`fecha_creado` = '2017-01-16 09:19:59',`relacion_categoria_subcategoria_id` = 1,`sub_of_sub_categoria_id` = 6 WHERE  `relacion_subcategorias_subsubcategoria`.`id` = 6;
UPDATE `relacion_subcategorias_subsubcategoria` SET `id` = 7,`user_id_creado` = 1,`fecha_creado` = '2017-01-16 09:19:59',`relacion_categoria_subcategoria_id` = 1,`sub_of_sub_categoria_id` = 7 WHERE  `relacion_subcategorias_subsubcategoria`.`id` = 7;
UPDATE `relacion_subcategorias_subsubcategoria` SET `id` = 8,`user_id_creado` = 1,`fecha_creado` = '2017-01-16 09:19:59',`relacion_categoria_subcategoria_id` = 1,`sub_of_sub_categoria_id` = 8 WHERE  `relacion_subcategorias_subsubcategoria`.`id` = 8;
UPDATE `relacion_subcategorias_subsubcategoria` SET `id` = 9,`user_id_creado` = 1,`fecha_creado` = '2017-01-16 09:19:59',`relacion_categoria_subcategoria_id` = 1,`sub_of_sub_categoria_id` = 9 WHERE  `relacion_subcategorias_subsubcategoria`.`id` = 9;
UPDATE `relacion_subcategorias_subsubcategoria` SET `id` = 10,`user_id_creado` = 1,`fecha_creado` = '2017-01-16 09:26:50',`relacion_categoria_subcategoria_id` = 4,`sub_of_sub_categoria_id` = 1 WHERE  `relacion_subcategorias_subsubcategoria`.`id` = 10;
UPDATE `relacion_subcategorias_subsubcategoria` SET `id` = 11,`user_id_creado` = 1,`fecha_creado` = '2017-01-16 09:26:50',`relacion_categoria_subcategoria_id` = 4,`sub_of_sub_categoria_id` = 2 WHERE  `relacion_subcategorias_subsubcategoria`.`id` = 11;
UPDATE `relacion_subcategorias_subsubcategoria` SET `id` = 12,`user_id_creado` = 1,`fecha_creado` = '2017-01-16 09:26:50',`relacion_categoria_subcategoria_id` = 4,`sub_of_sub_categoria_id` = 3 WHERE  `relacion_subcategorias_subsubcategoria`.`id` = 12;
UPDATE `relacion_subcategorias_subsubcategoria` SET `id` = 13,`user_id_creado` = 1,`fecha_creado` = '2017-01-16 09:26:50',`relacion_categoria_subcategoria_id` = 4,`sub_of_sub_categoria_id` = 4 WHERE  `relacion_subcategorias_subsubcategoria`.`id` = 13;
UPDATE `relacion_subcategorias_subsubcategoria` SET `id` = 14,`user_id_creado` = 1,`fecha_creado` = '2017-01-16 09:26:50',`relacion_categoria_subcategoria_id` = 4,`sub_of_sub_categoria_id` = 5 WHERE  `relacion_subcategorias_subsubcategoria`.`id` = 14;
UPDATE `relacion_subcategorias_subsubcategoria` SET `id` = 15,`user_id_creado` = 1,`fecha_creado` = '2017-01-16 09:26:50',`relacion_categoria_subcategoria_id` = 4,`sub_of_sub_categoria_id` = 6 WHERE  `relacion_subcategorias_subsubcategoria`.`id` = 15;
UPDATE `relacion_subcategorias_subsubcategoria` SET `id` = 16,`user_id_creado` = 1,`fecha_creado` = '2017-01-16 09:26:50',`relacion_categoria_subcategoria_id` = 4,`sub_of_sub_categoria_id` = 7 WHERE  `relacion_subcategorias_subsubcategoria`.`id` = 16;
UPDATE `relacion_subcategorias_subsubcategoria` SET `id` = 17,`user_id_creado` = 1,`fecha_creado` = '2017-01-16 09:26:50',`relacion_categoria_subcategoria_id` = 4,`sub_of_sub_categoria_id` = 8 WHERE  `relacion_subcategorias_subsubcategoria`.`id` = 17;
UPDATE `relacion_subcategorias_subsubcategoria` SET `id` = 18,`user_id_creado` = 1,`fecha_creado` = '2017-01-16 09:26:50',`relacion_categoria_subcategoria_id` = 4,`sub_of_sub_categoria_id` = 9 WHERE  `relacion_subcategorias_subsubcategoria`.`id` = 18;

-- --------------------------------------------------------

--
-- Table structure for table `relacion_sub_of_sub_categoria_posts`
--

CREATE TABLE `relacion_sub_of_sub_categoria_posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id_creado` int(11) DEFAULT NULL,
  `fecha_creado` datetime DEFAULT NULL,
  `relacion_subcategorias_subsubcategoria_id` int(11) DEFAULT NULL,
  `posts_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `relacion_sub_of_sub_categoria_posts`
--

UPDATE `relacion_sub_of_sub_categoria_posts` SET `id` = 1,`user_id_creado` = 21,`fecha_creado` = '2017-02-21 05:21:21',`relacion_subcategorias_subsubcategoria_id` = 2,`posts_id` = 6 WHERE  `relacion_sub_of_sub_categoria_posts`.`id` = 1;
UPDATE `relacion_sub_of_sub_categoria_posts` SET `id` = 2,`user_id_creado` = 21,`fecha_creado` = '2017-02-21 15:48:35',`relacion_subcategorias_subsubcategoria_id` = 2,`posts_id` = 7 WHERE  `relacion_sub_of_sub_categoria_posts`.`id` = 2;
UPDATE `relacion_sub_of_sub_categoria_posts` SET `id` = 3,`user_id_creado` = 21,`fecha_creado` = '2017-02-21 15:58:41',`relacion_subcategorias_subsubcategoria_id` = 1,`posts_id` = 8 WHERE  `relacion_sub_of_sub_categoria_posts`.`id` = 3;
UPDATE `relacion_sub_of_sub_categoria_posts` SET `id` = 4,`user_id_creado` = 57,`fecha_creado` = '2017-02-27 20:04:28',`relacion_subcategorias_subsubcategoria_id` = 0,`posts_id` = 9 WHERE  `relacion_sub_of_sub_categoria_posts`.`id` = 4;

-- --------------------------------------------------------

--
-- Table structure for table `relacion_sub_of_sub_categoria_usuario`
--

CREATE TABLE `relacion_sub_of_sub_categoria_usuario` (
  `id` int(11) NOT NULL,
  `user_id_creado` int(11) DEFAULT NULL,
  `fecha_creado` datetime DEFAULT NULL,
  `relacion_subcategorias_subsubcategoria_id` int(11) DEFAULT NULL,
  `usuario_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `relacion_sub_of_sub_categoria_usuario`
--


-- --------------------------------------------------------

--
-- Table structure for table `respuestas_mesajes_privados`
--

CREATE TABLE `respuestas_mesajes_privados` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id_creado` int(11) DEFAULT NULL,
  `user_id_editado` int(11) DEFAULT NULL,
  `fecha_editado` datetime DEFAULT NULL,
  `fecha_creado` datetime DEFAULT NULL,
  `mensaje` text,
  `mensaje_privado` int(11) DEFAULT NULL,
  `para_usuario_user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `respuestas_mesajes_privados`
--


-- --------------------------------------------------------

--
-- Table structure for table `sub_categorias`
--

CREATE TABLE `sub_categorias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_categoria` varchar(100) DEFAULT NULL,
  `user_id_creado` int(11) DEFAULT NULL,
  `user_id_editado` int(11) DEFAULT NULL,
  `fecha_editado` datetime DEFAULT NULL,
  `fecha_creado` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `sub_categorias`
--

UPDATE `sub_categorias` SET `id` = 1,`nombre_categoria` = 'Agropecuarios',`user_id_creado` = 1,`user_id_editado` = NULL,`fecha_editado` = NULL,`fecha_creado` = '2017-01-16 09:06:38' WHERE  `sub_categorias`.`id` = 1;
UPDATE `sub_categorias` SET `id` = 2,`nombre_categoria` = 'Industrial',`user_id_creado` = 1,`user_id_editado` = NULL,`fecha_editado` = NULL,`fecha_creado` = '2017-01-16 09:06:50' WHERE  `sub_categorias`.`id` = 2;
UPDATE `sub_categorias` SET `id` = 3,`nombre_categoria` = 'Servicios',`user_id_creado` = 1,`user_id_editado` = NULL,`fecha_editado` = NULL,`fecha_creado` = '2017-01-16 09:07:02' WHERE  `sub_categorias`.`id` = 3;

-- --------------------------------------------------------

--
-- Table structure for table `sub_of_sub_categorias`
--

CREATE TABLE `sub_of_sub_categorias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_categoria` varchar(100) DEFAULT NULL,
  `user_id_creado` int(11) DEFAULT NULL,
  `user_id_editado` int(11) DEFAULT NULL,
  `fecha_editado` datetime DEFAULT NULL,
  `fecha_creado` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `sub_of_sub_categorias`
--

UPDATE `sub_of_sub_categorias` SET `id` = 1,`nombre_categoria` = 'Cultivo de granos y semillas oleaginosas',`user_id_creado` = 1,`user_id_editado` = NULL,`fecha_editado` = NULL,`fecha_creado` = '2017-01-16 09:11:39' WHERE  `sub_of_sub_categorias`.`id` = 1;
UPDATE `sub_of_sub_categorias` SET `id` = 2,`nombre_categoria` = 'Cultivo de hortalizas',`user_id_creado` = 1,`user_id_editado` = NULL,`fecha_editado` = NULL,`fecha_creado` = '2017-01-16 09:11:51' WHERE  `sub_of_sub_categorias`.`id` = 2;
UPDATE `sub_of_sub_categorias` SET `id` = 3,`nombre_categoria` = 'Cultivo de frutales y nueces',`user_id_creado` = 1,`user_id_editado` = NULL,`fecha_editado` = NULL,`fecha_creado` = '2017-01-16 09:12:00' WHERE  `sub_of_sub_categorias`.`id` = 3;
UPDATE `sub_of_sub_categorias` SET `id` = 4,`nombre_categoria` = 'Cultivo en invernaderos y viveros, y floricultura',`user_id_creado` = 1,`user_id_editado` = NULL,`fecha_editado` = NULL,`fecha_creado` = '2017-01-16 09:12:15' WHERE  `sub_of_sub_categorias`.`id` = 4;
UPDATE `sub_of_sub_categorias` SET `id` = 5,`nombre_categoria` = 'ExplotaciÃ³n de bovinos',`user_id_creado` = 1,`user_id_editado` = NULL,`fecha_editado` = NULL,`fecha_creado` = '2017-01-16 09:12:26' WHERE  `sub_of_sub_categorias`.`id` = 5;
UPDATE `sub_of_sub_categorias` SET `id` = 6,`nombre_categoria` = 'ExplotaciÃ³n de porcinos',`user_id_creado` = 1,`user_id_editado` = NULL,`fecha_editado` = NULL,`fecha_creado` = '2017-01-16 09:12:35' WHERE  `sub_of_sub_categorias`.`id` = 6;
UPDATE `sub_of_sub_categorias` SET `id` = 7,`nombre_categoria` = 'ExplotaciÃ³n avÃ­cola',`user_id_creado` = 1,`user_id_editado` = NULL,`fecha_editado` = NULL,`fecha_creado` = '2017-01-16 09:12:46' WHERE  `sub_of_sub_categorias`.`id` = 7;
UPDATE `sub_of_sub_categorias` SET `id` = 8,`nombre_categoria` = 'ExplotaciÃ³n de ovinos y caprinos',`user_id_creado` = 1,`user_id_editado` = NULL,`fecha_editado` = NULL,`fecha_creado` = '2017-01-16 09:13:15' WHERE  `sub_of_sub_categorias`.`id` = 8;
UPDATE `sub_of_sub_categorias` SET `id` = 9,`nombre_categoria` = 'RecolecciÃ³n de miel',`user_id_creado` = 1,`user_id_editado` = NULL,`fecha_editado` = NULL,`fecha_creado` = '2017-01-16 09:13:41' WHERE  `sub_of_sub_categorias`.`id` = 9;

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(100) DEFAULT NULL,
  `clave` varchar(250) DEFAULT NULL,
  `fecha_creado` datetime DEFAULT NULL,
  `descripcion` text,
  `embed_video` text,
  `tipo_user` enum('admin','normal') DEFAULT NULL,
  `estado` enum('activo','desactivado') NOT NULL,
  `img_perfil` varchar(100) NOT NULL,
  `telefono` varchar(100) DEFAULT NULL,
  `correo` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=59 ;

--
-- Dumping data for table `usuarios`
--

UPDATE `usuarios` SET `id` = 1,`user` = 'eudy',`clave` = '202cb962ac59075b964b07152d234b70',`fecha_creado` = '2016-12-25 21:02:50',`descripcion` = 'prueba',`embed_video` = 'no tengo',`tipo_user` = 'admin',`estado` = 'activo',`img_perfil` = 'img_perfil/1_1_recurso.png',`telefono` = NULL,`correo` = NULL WHERE  `usuarios`.`id` = 1;
UPDATE `usuarios` SET `id` = 2,`user` = 'alberto',`clave` = '202cb962ac59075b964b07152d234b70',`fecha_creado` = '2016-12-27 22:58:04',`descripcion` = NULL,`embed_video` = NULL,`tipo_user` = 'normal',`estado` = 'activo',`img_perfil` = 'img_perfil/28122016035804.jpg',`telefono` = NULL,`correo` = NULL WHERE  `usuarios`.`id` = 2;
UPDATE `usuarios` SET `id` = 3,`user` = 'alberto',`clave` = '202cb962ac59075b964b07152d234b70',`fecha_creado` = '2016-12-28 16:12:20',`descripcion` = NULL,`embed_video` = NULL,`tipo_user` = 'normal',`estado` = 'activo',`img_perfil` = 'img_perfil/28122016161220.jpg',`telefono` = NULL,`correo` = NULL WHERE  `usuarios`.`id` = 3;
UPDATE `usuarios` SET `id` = 4,`user` = 'alberto',`clave` = '202cb962ac59075b964b07152d234b70',`fecha_creado` = '2016-12-28 16:12:44',`descripcion` = NULL,`embed_video` = NULL,`tipo_user` = 'normal',`estado` = 'activo',`img_perfil` = 'img_perfil/28122016161244.jpg',`telefono` = NULL,`correo` = NULL WHERE  `usuarios`.`id` = 4;
UPDATE `usuarios` SET `id` = 5,`user` = 'alberto',`clave` = '202cb962ac59075b964b07152d234b70',`fecha_creado` = '2016-12-28 16:21:05',`descripcion` = NULL,`embed_video` = NULL,`tipo_user` = 'normal',`estado` = 'activo',`img_perfil` = 'img_perfil/28122016162105.jpg',`telefono` = NULL,`correo` = NULL WHERE  `usuarios`.`id` = 5;
UPDATE `usuarios` SET `id` = 6,`user` = 'alberto',`clave` = '202cb962ac59075b964b07152d234b70',`fecha_creado` = '2016-12-28 16:25:48',`descripcion` = NULL,`embed_video` = NULL,`tipo_user` = 'normal',`estado` = 'activo',`img_perfil` = 'img_perfil/28122016162548.jpg',`telefono` = NULL,`correo` = NULL WHERE  `usuarios`.`id` = 6;
UPDATE `usuarios` SET `id` = 7,`user` = 'q',`clave` = '7694f4a66316e53c8cdd9d9954bd611d',`fecha_creado` = '2016-12-28 16:33:12',`descripcion` = NULL,`embed_video` = NULL,`tipo_user` = 'normal',`estado` = 'activo',`img_perfil` = 'img/Imagen_no_disponible.jpg',`telefono` = NULL,`correo` = NULL WHERE  `usuarios`.`id` = 7;
UPDATE `usuarios` SET `id` = 8,`user` = 'q',`clave` = '7694f4a66316e53c8cdd9d9954bd611d',`fecha_creado` = '2016-12-28 16:34:22',`descripcion` = NULL,`embed_video` = NULL,`tipo_user` = 'normal',`estado` = 'activo',`img_perfil` = 'img_perfil/28122016163422.jpg',`telefono` = NULL,`correo` = NULL WHERE  `usuarios`.`id` = 8;
UPDATE `usuarios` SET `id` = 9,`user` = 'x',`clave` = '9dd4e461268c8034f5c8564e155c67a6',`fecha_creado` = '2016-12-28 16:34:42',`descripcion` = NULL,`embed_video` = NULL,`tipo_user` = 'normal',`estado` = 'activo',`img_perfil` = 'img_perfil/28122016163442.jpg',`telefono` = NULL,`correo` = NULL WHERE  `usuarios`.`id` = 9;
UPDATE `usuarios` SET `id` = 10,`user` = 'Bigwell',`clave` = 'f76514e2b1b678623408253b6dc7735c',`fecha_creado` = '2016-12-29 05:32:38',`descripcion` = NULL,`embed_video` = NULL,`tipo_user` = 'normal',`estado` = 'activo',`img_perfil` = 'img/Imagen_no_disponible.jpg',`telefono` = NULL,`correo` = NULL WHERE  `usuarios`.`id` = 10;
UPDATE `usuarios` SET `id` = 11,`user` = 'manuel77@hotmail.com',`clave` = '1397a3ee45cf6f66aeda70fcd493a154',`fecha_creado` = '2016-12-29 06:37:20',`descripcion` = NULL,`embed_video` = NULL,`tipo_user` = 'normal',`estado` = 'activo',`img_perfil` = 'img/Imagen_no_disponible.jpg',`telefono` = NULL,`correo` = NULL WHERE  `usuarios`.`id` = 11;
UPDATE `usuarios` SET `id` = 12,`user` = 'elcomida@hotmail.com',`clave` = '312b23c8e1bd461440ff1aadf3948df5',`fecha_creado` = '2016-12-29 14:27:35',`descripcion` = NULL,`embed_video` = NULL,`tipo_user` = 'normal',`estado` = 'activo',`img_perfil` = 'img/Imagen_no_disponible.jpg',`telefono` = NULL,`correo` = NULL WHERE  `usuarios`.`id` = 12;
UPDATE `usuarios` SET `id` = 13,`user` = 'elcomida@hotmail.com',`clave` = '312b23c8e1bd461440ff1aadf3948df5',`fecha_creado` = '2016-12-29 14:31:20',`descripcion` = NULL,`embed_video` = NULL,`tipo_user` = 'normal',`estado` = 'activo',`img_perfil` = 'img/Imagen_no_disponible.jpg',`telefono` = NULL,`correo` = NULL WHERE  `usuarios`.`id` = 13;
UPDATE `usuarios` SET `id` = 14,`user` = 'agimerca12@hotmail.com',`clave` = 'e88febd1ea904f224c3a79f5ddd8aa89',`fecha_creado` = '2016-12-29 16:56:53',`descripcion` = NULL,`embed_video` = NULL,`tipo_user` = 'normal',`estado` = 'activo',`img_perfil` = 'img/Imagen_no_disponible.jpg',`telefono` = NULL,`correo` = NULL WHERE  `usuarios`.`id` = 14;
UPDATE `usuarios` SET `id` = 15,`user` = 'agimerca12@hotmail.com',`clave` = 'e88febd1ea904f224c3a79f5ddd8aa89',`fecha_creado` = '2016-12-29 17:04:13',`descripcion` = NULL,`embed_video` = NULL,`tipo_user` = 'normal',`estado` = 'activo',`img_perfil` = 'img/Imagen_no_disponible.jpg',`telefono` = NULL,`correo` = NULL WHERE  `usuarios`.`id` = 15;
UPDATE `usuarios` SET `id` = 16,`user` = 'elcomida@hotmail.com',`clave` = 'e88febd1ea904f224c3a79f5ddd8aa89',`fecha_creado` = '2016-12-29 17:17:12',`descripcion` = NULL,`embed_video` = NULL,`tipo_user` = 'normal',`estado` = 'activo',`img_perfil` = 'img/Imagen_no_disponible.jpg',`telefono` = NULL,`correo` = NULL WHERE  `usuarios`.`id` = 16;
UPDATE `usuarios` SET `id` = 17,`user` = 'elcomida@hotmail.com',`clave` = 'e88febd1ea904f224c3a79f5ddd8aa89',`fecha_creado` = '2016-12-30 17:29:45',`descripcion` = NULL,`embed_video` = NULL,`tipo_user` = 'normal',`estado` = 'activo',`img_perfil` = 'img/Imagen_no_disponible.jpg',`telefono` = NULL,`correo` = NULL WHERE  `usuarios`.`id` = 17;
UPDATE `usuarios` SET `id` = 18,`user` = 'bigwell',`clave` = 'a5d0cfc693c880c08950774eb5533805',`fecha_creado` = '2017-01-01 07:26:14',`descripcion` = NULL,`embed_video` = NULL,`tipo_user` = 'normal',`estado` = 'activo',`img_perfil` = 'img_perfil/01012017072614.jpg',`telefono` = NULL,`correo` = NULL WHERE  `usuarios`.`id` = 18;
UPDATE `usuarios` SET `id` = 19,`user` = 'elcomida@hotmail.com',`clave` = 'e88febd1ea904f224c3a79f5ddd8aa89',`fecha_creado` = '2017-01-02 17:15:57',`descripcion` = NULL,`embed_video` = NULL,`tipo_user` = 'normal',`estado` = 'activo',`img_perfil` = 'img/Imagen_no_disponible.jpg',`telefono` = NULL,`correo` = NULL WHERE  `usuarios`.`id` = 19;
UPDATE `usuarios` SET `id` = 20,`user` = 'm',`clave` = '6f8f57715090da2632453988d9a1501b',`fecha_creado` = '2017-01-03 09:53:13',`descripcion` = NULL,`embed_video` = NULL,`tipo_user` = 'normal',`estado` = 'activo',`img_perfil` = 'img/foto_perfil.jpg',`telefono` = NULL,`correo` = NULL WHERE  `usuarios`.`id` = 20;
UPDATE `usuarios` SET `id` = 21,`user` = 'manuel',`clave` = 'cb7a1bd91544d08bddd602796edc31a6',`fecha_creado` = '2017-01-04 10:50:06',`descripcion` = NULL,`embed_video` = NULL,`tipo_user` = 'normal',`estado` = 'activo',`img_perfil` = 'img/foto_perfil.jpg',`telefono` = NULL,`correo` = NULL WHERE  `usuarios`.`id` = 21;
UPDATE `usuarios` SET `id` = 22,`user` = 'manuel',`clave` = 'ffda3ee9f688293c0aec7a754dd348f7',`fecha_creado` = '2017-01-04 14:48:43',`descripcion` = NULL,`embed_video` = NULL,`tipo_user` = 'normal',`estado` = 'activo',`img_perfil` = 'img/foto_perfil.jpg',`telefono` = NULL,`correo` = NULL WHERE  `usuarios`.`id` = 22;
UPDATE `usuarios` SET `id` = 23,`user` = 'manuel',`clave` = 'cb7a1bd91544d08bddd602796edc31a6',`fecha_creado` = '2017-01-04 18:24:11',`descripcion` = NULL,`embed_video` = NULL,`tipo_user` = 'normal',`estado` = 'activo',`img_perfil` = 'img/foto_perfil.jpg',`telefono` = NULL,`correo` = NULL WHERE  `usuarios`.`id` = 23;
UPDATE `usuarios` SET `id` = 24,`user` = 'manuel',`clave` = 'cb7a1bd91544d08bddd602796edc31a6',`fecha_creado` = '2017-01-06 14:18:03',`descripcion` = NULL,`embed_video` = NULL,`tipo_user` = 'normal',`estado` = 'activo',`img_perfil` = 'img/foto_perfil.jpg',`telefono` = NULL,`correo` = NULL WHERE  `usuarios`.`id` = 24;
UPDATE `usuarios` SET `id` = 25,`user` = 'manuel',`clave` = 'cb7a1bd91544d08bddd602796edc31a6',`fecha_creado` = '2017-01-07 07:35:14',`descripcion` = NULL,`embed_video` = NULL,`tipo_user` = 'normal',`estado` = 'activo',`img_perfil` = 'img/foto_perfil.jpg',`telefono` = NULL,`correo` = NULL WHERE  `usuarios`.`id` = 25;
UPDATE `usuarios` SET `id` = 26,`user` = 'manuel',`clave` = '87f52d218482d1b5f5de2ad68c597ee3',`fecha_creado` = '2017-01-09 04:39:09',`descripcion` = NULL,`embed_video` = NULL,`tipo_user` = 'normal',`estado` = 'activo',`img_perfil` = 'img/foto_perfil.jpg',`telefono` = NULL,`correo` = NULL WHERE  `usuarios`.`id` = 26;
UPDATE `usuarios` SET `id` = 27,`user` = 'manuel',`clave` = 'cb7a1bd91544d08bddd602796edc31a6',`fecha_creado` = '2017-01-11 07:17:25',`descripcion` = NULL,`embed_video` = NULL,`tipo_user` = 'normal',`estado` = 'activo',`img_perfil` = 'img/foto_perfil.jpg',`telefono` = NULL,`correo` = NULL WHERE  `usuarios`.`id` = 27;
UPDATE `usuarios` SET `id` = 28,`user` = 'manuel',`clave` = 'cb7a1bd91544d08bddd602796edc31a6',`fecha_creado` = '2017-01-11 07:19:31',`descripcion` = NULL,`embed_video` = NULL,`tipo_user` = 'normal',`estado` = 'activo',`img_perfil` = 'img/foto_perfil.jpg',`telefono` = NULL,`correo` = NULL WHERE  `usuarios`.`id` = 28;
UPDATE `usuarios` SET `id` = 29,`user` = 'manuel',`clave` = 'cb7a1bd91544d08bddd602796edc31a6',`fecha_creado` = '2017-01-11 08:20:18',`descripcion` = NULL,`embed_video` = NULL,`tipo_user` = 'normal',`estado` = 'activo',`img_perfil` = 'img/foto_perfil.jpg',`telefono` = NULL,`correo` = NULL WHERE  `usuarios`.`id` = 29;
UPDATE `usuarios` SET `id` = 30,`user` = 'manuel',`clave` = 'cb7a1bd91544d08bddd602796edc31a6',`fecha_creado` = '2017-01-11 14:49:05',`descripcion` = NULL,`embed_video` = NULL,`tipo_user` = 'normal',`estado` = 'activo',`img_perfil` = 'img/foto_perfil.jpg',`telefono` = NULL,`correo` = NULL WHERE  `usuarios`.`id` = 30;
UPDATE `usuarios` SET `id` = 31,`user` = 'manuel',`clave` = 'cb7a1bd91544d08bddd602796edc31a6',`fecha_creado` = '2017-01-12 06:18:06',`descripcion` = NULL,`embed_video` = NULL,`tipo_user` = 'normal',`estado` = 'activo',`img_perfil` = 'img/foto_perfil.jpg',`telefono` = NULL,`correo` = NULL WHERE  `usuarios`.`id` = 31;
UPDATE `usuarios` SET `id` = 32,`user` = 'manuel',`clave` = 'cb7a1bd91544d08bddd602796edc31a6',`fecha_creado` = '2017-01-12 15:44:28',`descripcion` = NULL,`embed_video` = NULL,`tipo_user` = 'normal',`estado` = 'activo',`img_perfil` = 'img/foto_perfil.jpg',`telefono` = NULL,`correo` = NULL WHERE  `usuarios`.`id` = 32;
UPDATE `usuarios` SET `id` = 33,`user` = 'manuel',`clave` = 'cb7a1bd91544d08bddd602796edc31a6',`fecha_creado` = '2017-01-13 18:33:17',`descripcion` = NULL,`embed_video` = NULL,`tipo_user` = 'normal',`estado` = 'activo',`img_perfil` = 'img/foto_perfil.jpg',`telefono` = NULL,`correo` = NULL WHERE  `usuarios`.`id` = 33;
UPDATE `usuarios` SET `id` = 34,`user` = 'manuel',`clave` = 'cb7a1bd91544d08bddd602796edc31a6',`fecha_creado` = '2017-01-15 09:04:42',`descripcion` = NULL,`embed_video` = NULL,`tipo_user` = 'normal',`estado` = 'activo',`img_perfil` = 'img/foto_perfil.jpg',`telefono` = NULL,`correo` = NULL WHERE  `usuarios`.`id` = 34;
UPDATE `usuarios` SET `id` = 35,`user` = 'manuel',`clave` = 'cb7a1bd91544d08bddd602796edc31a6',`fecha_creado` = '2017-01-15 09:11:00',`descripcion` = NULL,`embed_video` = NULL,`tipo_user` = 'normal',`estado` = 'activo',`img_perfil` = 'img/foto_perfil.jpg',`telefono` = NULL,`correo` = NULL WHERE  `usuarios`.`id` = 35;
UPDATE `usuarios` SET `id` = 36,`user` = 'manuel',`clave` = 'cb7a1bd91544d08bddd602796edc31a6',`fecha_creado` = '2017-01-15 09:35:34',`descripcion` = NULL,`embed_video` = NULL,`tipo_user` = 'normal',`estado` = 'activo',`img_perfil` = 'img/foto_perfil.jpg',`telefono` = NULL,`correo` = NULL WHERE  `usuarios`.`id` = 36;
UPDATE `usuarios` SET `id` = 37,`user` = 'manuel',`clave` = 'cb7a1bd91544d08bddd602796edc31a6',`fecha_creado` = '2017-01-15 16:56:23',`descripcion` = NULL,`embed_video` = NULL,`tipo_user` = 'normal',`estado` = 'activo',`img_perfil` = 'img/foto_perfil.jpg',`telefono` = NULL,`correo` = NULL WHERE  `usuarios`.`id` = 37;
UPDATE `usuarios` SET `id` = 38,`user` = 'manuel',`clave` = 'cb7a1bd91544d08bddd602796edc31a6',`fecha_creado` = '2017-01-15 17:19:24',`descripcion` = NULL,`embed_video` = NULL,`tipo_user` = 'normal',`estado` = 'activo',`img_perfil` = 'img/foto_perfil.jpg',`telefono` = NULL,`correo` = NULL WHERE  `usuarios`.`id` = 38;
UPDATE `usuarios` SET `id` = 39,`user` = 'manuel',`clave` = 'cb7a1bd91544d08bddd602796edc31a6',`fecha_creado` = '2017-01-16 06:02:39',`descripcion` = NULL,`embed_video` = NULL,`tipo_user` = 'normal',`estado` = 'activo',`img_perfil` = 'img/foto_perfil.jpg',`telefono` = NULL,`correo` = NULL WHERE  `usuarios`.`id` = 39;
UPDATE `usuarios` SET `id` = 40,`user` = 'manuel',`clave` = 'cb7a1bd91544d08bddd602796edc31a6',`fecha_creado` = '2017-01-16 06:10:22',`descripcion` = NULL,`embed_video` = NULL,`tipo_user` = 'normal',`estado` = 'activo',`img_perfil` = 'img/foto_perfil.jpg',`telefono` = NULL,`correo` = NULL WHERE  `usuarios`.`id` = 40;
UPDATE `usuarios` SET `id` = 41,`user` = 'manuel',`clave` = 'cb7a1bd91544d08bddd602796edc31a6',`fecha_creado` = '2017-01-16 06:53:29',`descripcion` = NULL,`embed_video` = NULL,`tipo_user` = 'normal',`estado` = 'activo',`img_perfil` = 'img/foto_perfil.jpg',`telefono` = NULL,`correo` = NULL WHERE  `usuarios`.`id` = 41;
UPDATE `usuarios` SET `id` = 42,`user` = 'manuel',`clave` = 'ec7cf58f61d30e9ddb2d6922bc1ae3e6',`fecha_creado` = '2017-01-16 14:44:22',`descripcion` = NULL,`embed_video` = NULL,`tipo_user` = 'normal',`estado` = 'activo',`img_perfil` = 'img/foto_perfil.jpg',`telefono` = NULL,`correo` = NULL WHERE  `usuarios`.`id` = 42;
UPDATE `usuarios` SET `id` = 43,`user` = 'manuel',`clave` = 'cb7a1bd91544d08bddd602796edc31a6',`fecha_creado` = '2017-01-16 15:00:44',`descripcion` = NULL,`embed_video` = NULL,`tipo_user` = 'normal',`estado` = 'activo',`img_perfil` = 'img/foto_perfil.jpg',`telefono` = NULL,`correo` = NULL WHERE  `usuarios`.`id` = 43;
UPDATE `usuarios` SET `id` = 44,`user` = 'manuel',`clave` = 'cb7a1bd91544d08bddd602796edc31a6',`fecha_creado` = '2017-01-16 19:43:51',`descripcion` = NULL,`embed_video` = NULL,`tipo_user` = 'normal',`estado` = 'activo',`img_perfil` = 'img/foto_perfil.jpg',`telefono` = NULL,`correo` = NULL WHERE  `usuarios`.`id` = 44;
UPDATE `usuarios` SET `id` = 45,`user` = 'manuel',`clave` = 'cb7a1bd91544d08bddd602796edc31a6',`fecha_creado` = '2017-01-17 10:36:00',`descripcion` = NULL,`embed_video` = NULL,`tipo_user` = 'normal',`estado` = 'activo',`img_perfil` = 'img/foto_perfil.jpg',`telefono` = NULL,`correo` = NULL WHERE  `usuarios`.`id` = 45;
UPDATE `usuarios` SET `id` = 46,`user` = 'manuel',`clave` = 'cb7a1bd91544d08bddd602796edc31a6',`fecha_creado` = '2017-01-17 13:04:22',`descripcion` = NULL,`embed_video` = NULL,`tipo_user` = 'normal',`estado` = 'activo',`img_perfil` = 'img/foto_perfil.jpg',`telefono` = NULL,`correo` = NULL WHERE  `usuarios`.`id` = 46;
UPDATE `usuarios` SET `id` = 47,`user` = 'manuel',`clave` = 'cb7a1bd91544d08bddd602796edc31a6',`fecha_creado` = '2017-01-17 16:02:39',`descripcion` = NULL,`embed_video` = NULL,`tipo_user` = 'normal',`estado` = 'activo',`img_perfil` = 'img/foto_perfil.jpg',`telefono` = NULL,`correo` = NULL WHERE  `usuarios`.`id` = 47;
UPDATE `usuarios` SET `id` = 48,`user` = 'manuel',`clave` = '479435176fe779e0e92c46cb5835fd57',`fecha_creado` = '2017-01-18 06:20:11',`descripcion` = NULL,`embed_video` = NULL,`tipo_user` = 'normal',`estado` = 'activo',`img_perfil` = 'img/foto_perfil.jpg',`telefono` = NULL,`correo` = NULL WHERE  `usuarios`.`id` = 48;
UPDATE `usuarios` SET `id` = 49,`user` = 'manuel',`clave` = 'cb7a1bd91544d08bddd602796edc31a6',`fecha_creado` = '2017-01-20 10:47:52',`descripcion` = NULL,`embed_video` = NULL,`tipo_user` = 'normal',`estado` = 'activo',`img_perfil` = 'img/foto_perfil.jpg',`telefono` = NULL,`correo` = NULL WHERE  `usuarios`.`id` = 49;
UPDATE `usuarios` SET `id` = 50,`user` = 'manuel',`clave` = 'cb7a1bd91544d08bddd602796edc31a6',`fecha_creado` = '2017-01-20 11:22:54',`descripcion` = NULL,`embed_video` = NULL,`tipo_user` = 'normal',`estado` = 'activo',`img_perfil` = 'img/foto_perfil.jpg',`telefono` = NULL,`correo` = NULL WHERE  `usuarios`.`id` = 50;
UPDATE `usuarios` SET `id` = 51,`user` = 'manuel',`clave` = 'cb7a1bd91544d08bddd602796edc31a6',`fecha_creado` = '2017-01-23 11:42:08',`descripcion` = NULL,`embed_video` = NULL,`tipo_user` = 'normal',`estado` = 'activo',`img_perfil` = 'img/foto_perfil.jpg',`telefono` = NULL,`correo` = NULL WHERE  `usuarios`.`id` = 51;
UPDATE `usuarios` SET `id` = 52,`user` = 'manuel',`clave` = 'cb7a1bd91544d08bddd602796edc31a6',`fecha_creado` = '2017-01-27 16:41:08',`descripcion` = NULL,`embed_video` = NULL,`tipo_user` = 'normal',`estado` = 'activo',`img_perfil` = 'img/foto_perfil.jpg',`telefono` = NULL,`correo` = NULL WHERE  `usuarios`.`id` = 52;
UPDATE `usuarios` SET `id` = 53,`user` = 'manuel',`clave` = 'cb7a1bd91544d08bddd602796edc31a6',`fecha_creado` = '2017-01-31 05:30:43',`descripcion` = NULL,`embed_video` = NULL,`tipo_user` = 'normal',`estado` = 'activo',`img_perfil` = 'img/foto_perfil.jpg',`telefono` = NULL,`correo` = NULL WHERE  `usuarios`.`id` = 53;
UPDATE `usuarios` SET `id` = 54,`user` = 'earias',`clave` = 'e10adc3949ba59abbe56e057f20f883e',`fecha_creado` = '2017-02-09 08:57:25',`descripcion` = NULL,`embed_video` = NULL,`tipo_user` = 'admin',`estado` = 'activo',`img_perfil` = 'img_perfil/09022017085725.jpg',`telefono` = NULL,`correo` = NULL WHERE  `usuarios`.`id` = 54;
UPDATE `usuarios` SET `id` = 55,`user` = 'manuel',`clave` = '4068b37d7de20d637cea07de89416a55',`fecha_creado` = '2017-02-10 14:43:18',`descripcion` = NULL,`embed_video` = NULL,`tipo_user` = 'normal',`estado` = 'activo',`img_perfil` = 'img/foto_perfil.jpg',`telefono` = NULL,`correo` = NULL WHERE  `usuarios`.`id` = 55;
UPDATE `usuarios` SET `id` = 56,`user` = 'Guillermo Dipre',`clave` = '13630971a6e0e60ceb6e759e33f0079a',`fecha_creado` = '2017-02-20 16:32:28',`descripcion` = NULL,`embed_video` = NULL,`tipo_user` = 'normal',`estado` = 'activo',`img_perfil` = 'img/foto_perfil.jpg',`telefono` = NULL,`correo` = NULL WHERE  `usuarios`.`id` = 56;
UPDATE `usuarios` SET `id` = 57,`user` = 'elcomida@hotmail.com',`clave` = 'cb7a1bd91544d08bddd602796edc31a6',`fecha_creado` = '2017-02-27 12:34:22',`descripcion` = NULL,`embed_video` = NULL,`tipo_user` = 'normal',`estado` = 'activo',`img_perfil` = 'img/foto_perfil.jpg',`telefono` = NULL,`correo` = NULL WHERE  `usuarios`.`id` = 57;
UPDATE `usuarios` SET `id` = 58,`user` = 'eudy1990@gmail.com',`clave` = '202cb962ac59075b964b07152d234b70',`fecha_creado` = '2017-02-27 19:46:46',`descripcion` = NULL,`embed_video` = NULL,`tipo_user` = 'normal',`estado` = 'activo',`img_perfil` = 'img/foto_perfil.jpg',`telefono` = NULL,`correo` = NULL WHERE  `usuarios`.`id` = 58;

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id_creado` int(11) DEFAULT NULL,
  `user_id_editado` int(11) DEFAULT NULL,
  `fecha_editado` datetime DEFAULT NULL,
  `fecha_creado` datetime DEFAULT NULL,
  `url_video` text,
  `carpeta_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `videos`
--

UPDATE `videos` SET `id` = 1,`user_id_creado` = 1,`user_id_editado` = NULL,`fecha_editado` = '2016-12-28 15:38:19',`fecha_creado` = NULL,`url_video` = 'https://www.youtube.com/watch?v=ZbZSe6N_BXs',`carpeta_id` = 0 WHERE  `videos`.`id` = 1;
UPDATE `videos` SET `id` = 2,`user_id_creado` = 1,`user_id_editado` = NULL,`fecha_editado` = '2016-12-28 16:04:49',`fecha_creado` = NULL,`url_video` = 'kwR5_8w4YGE',`carpeta_id` = 0 WHERE  `videos`.`id` = 2;
UPDATE `videos` SET `id` = 3,`user_id_creado` = 1,`user_id_editado` = NULL,`fecha_editado` = '2016-12-28 16:13:40',`fecha_creado` = NULL,`url_video` = 'https://www.youtube.com/watch?v=7PCkvCPvDXk',`carpeta_id` = 1 WHERE  `videos`.`id` = 3;
UPDATE `videos` SET `id` = 4,`user_id_creado` = 1,`user_id_editado` = NULL,`fecha_editado` = '2016-12-28 16:14:02',`fecha_creado` = NULL,`url_video` = 'https://www.youtube.com/watch?v=nfWlot6h_JM',`carpeta_id` = 2 WHERE  `videos`.`id` = 4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `carpeta_gallerias`
--
ALTER TABLE `carpeta_gallerias`
  ADD CONSTRAINT `carpeta_gallerias_ibfk_1` FOREIGN KEY (`user_id_creado`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `carpeta_videos`
--
ALTER TABLE `carpeta_videos`
  ADD CONSTRAINT `carpeta_videos_ibfk_1` FOREIGN KEY (`user_id_creado`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
