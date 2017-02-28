-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-02-2017 a las 08:16:32
-- Versión del servidor: 5.6.21
-- Versión de PHP: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `agimerca_db_tmp`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carpeta_gallerias`
--

CREATE TABLE IF NOT EXISTS `carpeta_gallerias` (
`id` int(11) NOT NULL,
  `user_id_creado` int(11) DEFAULT NULL,
  `user_id_editado` int(11) DEFAULT NULL,
  `fecha_editado` datetime DEFAULT NULL,
  `fecha_creado` datetime DEFAULT NULL,
  `nombre` varchar(200) DEFAULT NULL,
  `estado` enum('activo','desactivado') NOT NULL DEFAULT 'activo'
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carpeta_videos`
--

CREATE TABLE IF NOT EXISTS `carpeta_videos` (
`id` int(11) NOT NULL,
  `user_id_creado` int(11) DEFAULT NULL,
  `user_id_editado` int(11) DEFAULT NULL,
  `fecha_editado` datetime DEFAULT NULL,
  `fecha_creado` datetime DEFAULT NULL,
  `nombre` varchar(200) DEFAULT NULL,
  `estado` enum('activo','desactivado') NOT NULL DEFAULT 'activo'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE IF NOT EXISTS `categorias` (
`id` int(11) NOT NULL,
  `nombre_categoria` varchar(100) DEFAULT NULL,
  `user_id_creado` int(11) DEFAULT NULL,
  `user_id_editado` int(11) DEFAULT NULL,
  `fecha_editado` datetime DEFAULT NULL,
  `fecha_creado` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentarios`
--

CREATE TABLE IF NOT EXISTS `comentarios` (
`id` int(11) NOT NULL,
  `user_id_creado` int(11) DEFAULT NULL,
  `user_id_editado` int(11) DEFAULT NULL,
  `fecha_editado` datetime DEFAULT NULL,
  `fecha_creado` datetime DEFAULT NULL,
  `comentario` text,
  `post_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `galerias`
--

CREATE TABLE IF NOT EXISTS `galerias` (
`id` int(11) NOT NULL,
  `user_id_creado` int(11) DEFAULT NULL,
  `user_id_editado` int(11) DEFAULT NULL,
  `fecha_editado` datetime DEFAULT NULL,
  `fecha_creado` datetime DEFAULT NULL,
  `url_img` varchar(200) DEFAULT NULL,
  `perfil` int(1) DEFAULT NULL,
  `carpeta_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mensajes_privados`
--

CREATE TABLE IF NOT EXISTS `mensajes_privados` (
`id` int(11) NOT NULL,
  `user_id_creado` int(11) DEFAULT NULL,
  `user_id_editado` int(11) DEFAULT NULL,
  `fecha_editado` datetime DEFAULT NULL,
  `fecha_creado` datetime DEFAULT NULL,
  `mensaje` text,
  `para_user_id` int(11) DEFAULT NULL,
  `visto` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `me_gustas`
--

CREATE TABLE IF NOT EXISTS `me_gustas` (
`id` int(11) NOT NULL,
  `user_id_creado` int(11) DEFAULT NULL,
  `user_id_editado` int(11) DEFAULT NULL,
  `fecha_editado` datetime DEFAULT NULL,
  `fecha_creado` datetime DEFAULT NULL,
  `si` int(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pais`
--

CREATE TABLE IF NOT EXISTS `pais` (
`id` int(11) NOT NULL,
  `fecha_creado` datetime DEFAULT NULL,
  `nombre` varchar(150) DEFAULT NULL,
  `name1` varchar(150) DEFAULT NULL,
  `nom` varchar(150) DEFAULT NULL,
  `iso2` varchar(50) DEFAULT NULL,
  `iso3` varchar(50) DEFAULT NULL,
  `phone_code` varchar(10) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=248 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
`id` int(11) NOT NULL,
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
  `observaciones` text
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto_sugerido`
--

CREATE TABLE IF NOT EXISTS `producto_sugerido` (
`id` int(11) NOT NULL,
  `categoria` varchar(200) DEFAULT NULL,
  `subcategoria` varchar(200) DEFAULT NULL,
  `subsubcategoria` varchar(200) DEFAULT NULL,
  `subsubsubcategoria` varchar(200) DEFAULT NULL,
  `fecha_creado` datetime DEFAULT NULL,
  `user_id_creado` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `relacion_categoria_subcategoria`
--

CREATE TABLE IF NOT EXISTS `relacion_categoria_subcategoria` (
`id` int(11) NOT NULL,
  `user_id_creado` int(11) DEFAULT NULL,
  `fecha_creado` datetime DEFAULT NULL,
  `categoria_id` int(11) DEFAULT NULL,
  `sub_categoria_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `relacion_subcategorias_subsubcategoria`
--

CREATE TABLE IF NOT EXISTS `relacion_subcategorias_subsubcategoria` (
`id` int(11) NOT NULL,
  `user_id_creado` int(11) DEFAULT NULL,
  `fecha_creado` datetime DEFAULT NULL,
  `relacion_categoria_subcategoria_id` int(11) DEFAULT NULL,
  `sub_of_sub_categoria_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `relacion_sub_of_sub_categoria_posts`
--

CREATE TABLE IF NOT EXISTS `relacion_sub_of_sub_categoria_posts` (
`id` int(11) NOT NULL,
  `user_id_creado` int(11) DEFAULT NULL,
  `fecha_creado` datetime DEFAULT NULL,
  `relacion_subcategorias_subsubcategoria_id` int(11) DEFAULT NULL,
  `posts_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `relacion_sub_of_sub_categoria_usuario`
--

CREATE TABLE IF NOT EXISTS `relacion_sub_of_sub_categoria_usuario` (
`id` int(11) NOT NULL,
  `user_id_creado` int(11) DEFAULT NULL,
  `fecha_creado` datetime DEFAULT NULL,
  `relacion_subcategorias_subsubcategoria_id` int(11) DEFAULT NULL,
  `usuario_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `respuestas_mesajes_privados`
--

CREATE TABLE IF NOT EXISTS `respuestas_mesajes_privados` (
`id` int(11) NOT NULL,
  `user_id_creado` int(11) DEFAULT NULL,
  `user_id_editado` int(11) DEFAULT NULL,
  `fecha_editado` datetime DEFAULT NULL,
  `fecha_creado` datetime DEFAULT NULL,
  `mensaje` text,
  `mensaje_privado` int(11) DEFAULT NULL,
  `para_usuario_user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sub_categorias`
--

CREATE TABLE IF NOT EXISTS `sub_categorias` (
`id` int(11) NOT NULL,
  `nombre_categoria` varchar(100) DEFAULT NULL,
  `user_id_creado` int(11) DEFAULT NULL,
  `user_id_editado` int(11) DEFAULT NULL,
  `fecha_editado` datetime DEFAULT NULL,
  `fecha_creado` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sub_of_sub_categorias`
--

CREATE TABLE IF NOT EXISTS `sub_of_sub_categorias` (
`id` int(11) NOT NULL,
  `nombre_categoria` varchar(100) DEFAULT NULL,
  `user_id_creado` int(11) DEFAULT NULL,
  `user_id_editado` int(11) DEFAULT NULL,
  `fecha_editado` datetime DEFAULT NULL,
  `fecha_creado` datetime DEFAULT NULL,
  `nombre_cientifico` varchar(200) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
`id` int(11) NOT NULL,
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
  `primeravez` int(1) DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `videos`
--

CREATE TABLE IF NOT EXISTS `videos` (
`id` int(11) NOT NULL,
  `user_id_creado` int(11) DEFAULT NULL,
  `user_id_editado` int(11) DEFAULT NULL,
  `fecha_editado` datetime DEFAULT NULL,
  `fecha_creado` datetime DEFAULT NULL,
  `url_video` text,
  `carpeta_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `carpeta_gallerias`
--
ALTER TABLE `carpeta_gallerias`
 ADD PRIMARY KEY (`id`), ADD KEY `user_id_creado` (`user_id_creado`);

--
-- Indices de la tabla `carpeta_videos`
--
ALTER TABLE `carpeta_videos`
 ADD PRIMARY KEY (`id`), ADD KEY `user_id_creado` (`user_id_creado`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `comentarios`
--
ALTER TABLE `comentarios`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `galerias`
--
ALTER TABLE `galerias`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `mensajes_privados`
--
ALTER TABLE `mensajes_privados`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `me_gustas`
--
ALTER TABLE `me_gustas`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pais`
--
ALTER TABLE `pais`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `posts`
--
ALTER TABLE `posts`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `producto_sugerido`
--
ALTER TABLE `producto_sugerido`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `relacion_categoria_subcategoria`
--
ALTER TABLE `relacion_categoria_subcategoria`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `relacion_subcategorias_subsubcategoria`
--
ALTER TABLE `relacion_subcategorias_subsubcategoria`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `relacion_sub_of_sub_categoria_posts`
--
ALTER TABLE `relacion_sub_of_sub_categoria_posts`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `relacion_sub_of_sub_categoria_usuario`
--
ALTER TABLE `relacion_sub_of_sub_categoria_usuario`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `respuestas_mesajes_privados`
--
ALTER TABLE `respuestas_mesajes_privados`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sub_categorias`
--
ALTER TABLE `sub_categorias`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sub_of_sub_categorias`
--
ALTER TABLE `sub_of_sub_categorias`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `videos`
--
ALTER TABLE `videos`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `carpeta_gallerias`
--
ALTER TABLE `carpeta_gallerias`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT de la tabla `carpeta_videos`
--
ALTER TABLE `carpeta_videos`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT de la tabla `comentarios`
--
ALTER TABLE `comentarios`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT de la tabla `galerias`
--
ALTER TABLE `galerias`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT de la tabla `mensajes_privados`
--
ALTER TABLE `mensajes_privados`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT de la tabla `me_gustas`
--
ALTER TABLE `me_gustas`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `pais`
--
ALTER TABLE `pais`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=248;
--
-- AUTO_INCREMENT de la tabla `posts`
--
ALTER TABLE `posts`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT de la tabla `producto_sugerido`
--
ALTER TABLE `producto_sugerido`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `relacion_categoria_subcategoria`
--
ALTER TABLE `relacion_categoria_subcategoria`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT de la tabla `relacion_subcategorias_subsubcategoria`
--
ALTER TABLE `relacion_subcategorias_subsubcategoria`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT de la tabla `relacion_sub_of_sub_categoria_posts`
--
ALTER TABLE `relacion_sub_of_sub_categoria_posts`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT de la tabla `relacion_sub_of_sub_categoria_usuario`
--
ALTER TABLE `relacion_sub_of_sub_categoria_usuario`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `respuestas_mesajes_privados`
--
ALTER TABLE `respuestas_mesajes_privados`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `sub_categorias`
--
ALTER TABLE `sub_categorias`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT de la tabla `sub_of_sub_categorias`
--
ALTER TABLE `sub_of_sub_categorias`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT de la tabla `videos`
--
ALTER TABLE `videos`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `carpeta_gallerias`
--
ALTER TABLE `carpeta_gallerias`
ADD CONSTRAINT `carpeta_gallerias_ibfk_1` FOREIGN KEY (`user_id_creado`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `carpeta_videos`
--
ALTER TABLE `carpeta_videos`
ADD CONSTRAINT `carpeta_videos_ibfk_1` FOREIGN KEY (`user_id_creado`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
