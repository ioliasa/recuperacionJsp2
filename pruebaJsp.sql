
create database 'pruebaJsp';
use database 'pruebaJsp';

CREATE TABLE `Pelicula` (
  `cip` varchar(10) NOT NULL,
  `titulo` varchar(45) NOT NULL,
  `nacionalidad` varchar(15) DEFAULT NULL,
  `presupuesto` float DEFAULT NULL,
  `duracion` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Pelicula`
--

INSERT INTO `Pelicula` (`cip`, `titulo`, `nacionalidad`, `presupuesto`, `duracion`) VALUES
('11111101-S', 'El proyecto de la Bruja Blair', 'EE.UU', 500, 82),
('11111102-S', 'Viaje al centro de la tierra', 'EE.UU', 6000, 139),
('11111103-S', 'El fin de los días', 'EE.UU', 7000, 122),
('11111104-S', 'Bowfinger, El pícaro', 'EE.UU', 4500, 100),
('11111105-S', 'Un marido ideal', 'EE.UU', 3000, 123),
('11111106-S', 'La cara del terror', 'EE.UU', 4000, 90),
('11111107-S', 'Jugando con el corazón', 'EE.UU', 2500, 98),
('11111108-S', 'El desayuno de campeones', 'EE.UU', 2000, 123),
('11111109-S', 'La vida prometida', 'EE.UU', 2560, 124),
('11111110-S', 'Nadie en el mundo', 'EE.UU', 800, 89),
('11111111-S', 'Soledad en las montañas', 'EE.UU', 900, 125),
('11111112-S', 'Accidente 703', 'Española', 250, 95),
('11111113-S', '24 horas para la medianoche', 'EE.UU', 500, 82),
('11111114-S', 'Veintisiete horas', 'Española', 600, 79),
('11111115-S', 'Velocidad terminal', 'Escocia', 450, 97),
('11111116-S', 'Verano en Louisiana', 'EE.UU', 559, 95),
('11111117-S', 'Verdad oculta', 'EE.UU', 665, 90),
('11111118-S', 'Viaje de novios a la Italia', 'EE.UU', 700, 90),
('11111119-S', 'Vicios pequeños', 'Francia/Italia', 340, 90),
('11111120-S', 'Vidas rebeldes', 'EE.UU', 700, 105),
('11111121-S', 'Virus', 'Italia', 650, 92),
('11111122-S', 'Visita por Navidad', 'EE.UU', 770, 87),
('11111123-S', 'Volver a empezar', 'Española', 650, 87),
('11111124-S', 'Volverás', 'EE.UU', 550, 96),
('11111125-S', 'Vuelta al pasado', 'EE.UU', 800, 97),
('11111126-S', 'Vuelve la justicia', 'EE.UU', 1200, 88);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Personaje`
--

CREATE TABLE `Personaje` (
  `nombre` varchar(25) NOT NULL,
  `nacionalidad` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Personaje`
--

INSERT INTO `Personaje` (`nombre`, `nacionalidad`) VALUES
('Arnold Schwarzenegger', 'EE.UU'),
('Barbara Klopple', 'EE.UU'),
('Barbara Streisand', 'EE.UU'),
('Bernie Pock', 'EE.UU'),
('Bruce Willis', 'EE.UU'),
('Buba Bayouri', 'India'),
('Cate Blanchet', 'G.B'),
('Catherine Deneuve', 'Francia'),
('Charlie Sheen', 'EE.UU'),
('Charlize Theron', 'Francia'),
('Christopher Mcdonald', 'EE.UU'),
('Daniel Myrick', 'EE.UU'),
('Eddie Murphy', 'EE.UU'),
('Euduardo Sánchez', 'EE.UU'),
('Gary Oldman', 'EE.UU'),
('Gilian Anderson', 'EE.UU'),
('Heather Donahue', 'EE.UU'),
('Isaac Hayes', 'EE.UU'),
('Jay Acovone', 'EE.UU'),
('Jodie Foster', 'EE.UU'),
('Joely Richardson', 'EE.UU'),
('Johnny Depp', 'EE.UU'),
('Jon Donosti', 'Española'),
('Jonh Cusack', 'EE.UU'),
('Julianne Moore', 'G.B'),
('Kevin Kline', 'EE.UU'),
('Leo T. Fong', 'EE.UU'),
('Luis G. Berlanga', 'EE.UU'),
('Maribel Verdú', 'Española'),
('Martxelo Rubio', 'Española'),
('Matt Leblanc', 'EE.UU'),
('Michael C. Williams', 'EE.UU'),
('Michael Pheipher', 'EE.UU'),
('Michele Laroque', 'Francia'),
('Montxo Armendáriz', 'Española'),
('Myra, S. Pierce', 'EE.UU'),
('Natassja Kinski', 'Rusa'),
('Norman Kaye', 'EE.UU'),
('Peter Hyams', 'EE.UU'),
('Pierce Brosnan', 'EE.UU'),
('Richard Lynch', 'EE.UU'),
('S. Bonnaire', 'EE.UU'),
('Sally Kellerman', 'EE.UU'),
('Sam Waterston', 'EE.UU'),
('Sandy Core', 'EE.UU'),
('Sean Connery', 'Scotland'),
('Sophie Marceau', 'Belgica'),
('Steve Martin', 'EE.UU'),
('Tess Harper', 'EE.UU'),
('Tommy Davidson', 'EE.UU'),
('Zach Galligan', 'UK');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Trabajo`
--

CREATE TABLE `Trabajo` (
  `cip` varchar(10) NOT NULL,
  `nombre` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Usuario`
--

CREATE TABLE `Usuario` (
  `username` varchar(10) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Usuario`
--

INSERT INTO `Usuario` (`username`, `password`) VALUES
('inma', 'inma'),
('pepe', 'pepe');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `Pelicula`
--
ALTER TABLE `Pelicula`
  ADD PRIMARY KEY (`cip`);

--
-- Indices de la tabla `Personaje`
--
ALTER TABLE `Personaje`
  ADD PRIMARY KEY (`nombre`);

--
-- Indices de la tabla `Trabajo`
--
ALTER TABLE `Trabajo`
  ADD PRIMARY KEY (`cip`,`nombre`),
  ADD KEY `fk_tra_per` (`nombre`);

--
-- Indices de la tabla `Usuario`
--
ALTER TABLE `Usuario`
  ADD PRIMARY KEY (`username`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `Trabajo`
--
ALTER TABLE `Trabajo`
  ADD CONSTRAINT `fk_Tra_Pel` FOREIGN KEY (`cip`) REFERENCES `Pelicula` (`cip`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_tra_per` FOREIGN KEY (`nombre`) REFERENCES `Personaje` (`nombre`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
