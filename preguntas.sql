-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 19-11-2023 a las 22:32:52
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `preguntas y respuestas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `preguntas`
--

CREATE TABLE `preguntas` (
  `id` int(11) NOT NULL,
  `pregunta` varchar(255) NOT NULL,
  `respuesta_correcta` varchar(255) NOT NULL,
  `opcion1` varchar(255) NOT NULL,
  `opcion2` varchar(255) NOT NULL,
  `opcion3` varchar(255) NOT NULL,
  `opcion4` varchar(255) NOT NULL,
  `opcion5` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `preguntas`
--

INSERT INTO `preguntas` (`id`, `pregunta`, `respuesta_correcta`, `opcion1`, `opcion2`, `opcion3`, `opcion4`, `opcion5`) VALUES
(1, '¿Estás de acuerdo en que las emisiones humanas de gases de efecto invernadero son la principal causa del cambio climático?', 'Totalmente en desacuerdo', 'Totalmente en desacuerdo', ' En desacuerdo', 'Ni de acuerdo, ni en desacuerdo', 'De acuerdo', 'Totalmente de acuerdo'),
(2, '¿Crees que reducir las emisiones de CO2 debería ser una prioridad para combatir el cambio climático?', 'Totalmente en desacuerdo', 'Totalmente en desacuerdo', ' En desacuerdo', 'Ni de acuerdo, ni en desacuerdo', 'De acuerdo', 'Totalmente de acuerdo'),
(3, '¿Estás de acuerdo en que las regulaciones ambientales deben ser más estrictas para limitar las emisiones? ', 'Muy de acuerdo', 'Muy en desacuerdo', 'En desacuerdo', 'Ni de acuerdo ni en desacuerdo', 'De acuerdo', 'Muy de acuerdo'),
(4, '¿Piensas que las energías renovables son una mala solución para reducir las emisiones de gases de efecto invernadero? ', 'Muy en desacuerdo', 'Muy en desacuerdo', 'En desacuerdo', 'Ni de acuerdo ni en desacuerdo', 'De acuerdo', 'Muy de acuerdo'),
(5, '¿Crees que la gente tiene conciencia pública sobre las emisiones de gases de efecto invernadero? ', 'Muy en desacuerdo', 'Muy en desacuerdo', 'En desacuerdo', 'Ni de acuerdo ni en desacuerdo', 'De acuerdo', 'Muy de acuerdo'),
(6, '¿Estás de acuerdo en que la deforestación contribuye al cambio climático al reducir la capacidad de la Tierra para absorber CO2?', 'Muy de acuerdo', 'Muy en desacuerdo', 'En desacuerdo', 'Ni de acuerdo ni en desacuerdo', 'De acuerdo', 'Muy de acuerdo'),
(7, '¿Crees que se deberían implementar medidas para proteger los bosques y detener la tala de árboles?', 'Muy de acuerdo', 'Muy en desacuerdo', 'En desacuerdo', 'Ni de acuerdo ni en desacuerdo', 'De acuerdo', 'Muy de acuerdo'),
(8, '¿Consideras que la reforestación y la restauración de bosques son malas estrategias para mitigar el cambio climático?', 'Muy en desacuerdo', 'Muy en desacuerdo', 'En desacuerdo', 'Ni de acuerdo ni en desacuerdo', 'De acuerdo', 'Muy de acuerdo'),
(9, '¿Estás de acuerdo en que la agricultura sostenible puede ayudar a reducir la deforestación?', 'Muy de acuerdo', 'Muy en desacuerdo', 'En desacuerdo', 'Ni de acuerdo ni en desacuerdo', 'De acuerdo', 'Muy de acuerdo'),
(10, '¿Piensas que la educación pública sobre la importancia de los bosques es necesaria para abordar este problema?', 'Muy de acuerdo', 'Muy en desacuerdo', 'En desacuerdo', 'Ni de acuerdo ni en desacuerdo', 'De acuerdo', 'Muy de acuerdo'),
(11, '¿Estás de acuerdo en que la conversión de paisajes naturales en áreas urbanas ayuda al medio ambiente?', 'Muy en desacuerdo', 'Muy en desacuerdo', 'En desacuerdo', 'Ni de acuerdo ni en desacuerdo', 'De acuerdo', 'Muy de acuerdo'),
(12, '¿Crees que se deben promover prácticas de desarrollo sostenible para mitigar estos cambios?', 'Muy de acuerdo', 'Muy en desacuerdo', 'En desacuerdo', 'Ni de acuerdo ni en desacuerdo', 'De acuerdo', 'Muy de acuerdo'),
(13, '¿Consideras que la agricultura y la silvicultura sostenibles no son importantes para preservar los paisajes naturales?', 'Muy en desacuerdo', 'Muy en desacuerdo', 'En desacuerdo', 'Ni de acuerdo ni en desacuerdo', 'De acuerdo', 'Muy de acuerdo'),
(14, '¿Estás de acuerdo en que la planificación urbana debería priorizar la conservación de espacios verdes?', 'Muy de acuerdo', 'Muy en desacuerdo', 'En desacuerdo', 'Ni de acuerdo ni en desacuerdo', 'De acuerdo', 'Muy de acuerdo'),
(15, '¿Piensas que la regulación gubernamental no tiene que interferir para limitar la conversión de tierras naturales en áreas urbanas?', 'Muy en desacuerdo', 'Muy en desacuerdo', 'En desacuerdo', 'Ni de acuerdo ni en desacuerdo', 'De acuerdo', 'Muy de acuerdo'),
(16, '¿Estás de acuerdo en que la producción ganadera intensiva emite grandes cantidades de metano pero que esto no contribuye al cambio climático?', 'Muy en desacuerdo', 'Muy en desacuerdo', 'En desacuerdo', 'Ni de acuerdo ni en desacuerdo', 'De acuerdo', 'Muy de acuerdo'),
(17, '¿Crees que se deberían promover dietas más basadas en plantas para reducir la demanda de productos animales?', 'Muy de acuerdo', 'Muy en desacuerdo', 'En desacuerdo', 'Ni de acuerdo ni en desacuerdo', 'De acuerdo', 'Muy de acuerdo'),
(18, '¿Consideras que la investigación en prácticas agrícolas más sostenibles es importante para abordar este problema?', 'Muy de acuerdo', 'Muy en desacuerdo', 'En desacuerdo', 'Ni de acuerdo ni en desacuerdo', 'De acuerdo', 'Muy de acuerdo'),
(19, '¿Estás de acuerdo en que la regulación ambiental no debe aplicarse a la agricultura y la ganadería ya que esta bien como está?', 'Muy en desacuerdo', 'Muy en desacuerdo', 'En desacuerdo', 'Ni de acuerdo ni en desacuerdo', 'De acuerdo', 'Muy de acuerdo'),
(20, '¿Piensas que la conciencia sobre los impactos ambientales de la producción de alimentos debe aumentar?', 'Muy de acuerdo', 'Muy en desacuerdo', 'En desacuerdo', 'Ni de acuerdo ni en desacuerdo', 'De acuerdo', 'Muy de acuerdo'),
(21, ' ¿Estás de acuerdo en que algunos aerosoles y contaminantes pueden tener efectos negativos en el clima?', 'Muy de acuerdo', 'Muy en desacuerdo', 'En desacuerdo', 'Ni de acuerdo ni en desacuerdo', 'De acuerdo', 'Muy de acuerdo'),
(22, '¿Crees que ya hay medidas suficientes que reducen la contaminación atmosférica?', 'Muy en desacuerdo', 'Muy en desacuerdo', 'En desacuerdo', 'Ni de acuerdo ni en desacuerdo', 'De acuerdo', 'Muy de acuerdo'),
(23, '¿Estás de acuerdo en que los estándares de calidad del aire deben ser más estrictos?', 'Muy de acuerdo', 'Muy en desacuerdo', 'En desacuerdo', 'Ni de acuerdo ni en desacuerdo', 'De acuerdo', 'Muy de acuerdo'),
(24, '¿Piensas que las industrias no tienen la culpa de la contaminación y no deberian asumir una mayor responsabilidad?', 'Muy en desacuerdo', 'Muy en desacuerdo', 'En desacuerdo', 'Ni de acuerdo ni en desacuerdo', 'De acuerdo', 'Muy de acuerdo'),
(25, '¿Consideras que la investigación en tecnologías más limpias es importante para abordar la contaminación del aire?', 'Totalmente de acuerdo', 'Totalmente en desacuerdo', 'En desacuerdo', 'Ni de acuerdo, ni en desacuerdo', 'De acuerdo', 'Totalmente de acuerdo');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `preguntas`
--
ALTER TABLE `preguntas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `preguntas`
--
ALTER TABLE `preguntas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
