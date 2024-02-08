CREATE TABLE usuarios(
	id INTEGER,
	nombre VARCHAR(26),
	apellido VARCHAR(26),
	email VARCHAR(26),
	contrasenya VARCHAR(26),
	PRIMARY KEY (id)
);
CREATE TABLE peliculas(
	id INTEGER,
	titulo VARCHAR(31),
	anyo_lanzamiento SMALLINT,
	director VARCHAR(26),
	duracion SMALLINT,
	PRIMARY KEY(id)
);

CREATE TABLE series(
	id INTEGER,
	titulo VARCHAR(31), 
	creador VARCHAR(51),
	anyo_lanzamiento SMALLINT,
	temporadas SMALLINT,
	descripcion TEXT,
	PRIMARY KEY(id)
);

CREATE TABLE generos(
	genero VARCHAR(16),
	descripcion TEXT,
	PRIMARY KEY (genero)
);

CREATE TABLE peliculas_generos(
	pelicula_id INTEGER,
	genero VARCHAR(16),
	PRIMARY KEY(pelicula_id, genero),
	FOREIGN KEY(pelicula_id) REFERENCES peliculas(id) ON UPDATE CASCADE,
	FOREIGN KEY(genero) REFERENCES generos(genero) ON UPDATE CASCADE
);
CREATE TABLE series_generos(
	serie_id INTEGER,
	genero VARCHAR(16),
	PRIMARY KEY(serie_id, genero),	
	FOREIGN KEY(serie_id) REFERENCES series(id) ON UPDATE CASCADE,
	FOREIGN KEY(genero) REFERENCES generos(genero) ON UPDATE CASCADE
);

INSERT INTO usuarios (id, nombre, apellido, email, contrasenya) 
VALUES
(1, 'Elset', 'Simionato', 'esimionato0@archive.org', 'fP3/bqpY(''0FY'),
(2, 'Cullin', 'Youson', 'cyouson1@sogou.com', 'hE3$\ylL'),
(3, 'Hyacinthie', 'Settle', 'hsettle2@gov.uk', 'hT8''H).xh=9iG)'),
(4, 'Gratiana', 'Longbothom', 'glongbothom3@blinklist.com', 'sO4,?NW`');

INSERT INTO peliculas (id, titulo, anyo_lanzamiento, director, duracion) 
VALUES
(1, 'Undercurrent', 2004, 'epfeffle0@latimes.com', 100),
(2, 'Gold of Rome (L''oro di Roma)', 1985, 'dneilands1@lycos.com', 158),
(3, 'Chinese Box', 2004, 'abim2@reuters.com', 71),
(4, 'Red Psalm (Még kér a nép)', 2003, 'mteager3@ftc.gov', 135);
INSERT INTO series (id, titulo, creador, anyo_lanzamiento, temporadas, descripcion) 
VALUES
(1, 'Birdemic: Shock and Terror', 'Eric Munkley', 1990, 35, 'lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien'),
(2, 'Stolen (Stolen Lives)', 'Terrijo Rulf', 1988, 13, 'sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis'),
(3, 'Angel-A', 'Maryjane Bausmann', 2008, 4, 'erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec'),
(4, 'Look at Me (Comme une image)', 'Esra Blewett', 2006, 63, 'magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum');

INSERT INTO generos (genero, descripcion) 
VALUES
('Crime|Drama', 'justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula'),
('Comedia', 'ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt'),
('Terror', 'pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede'),
('Thriller', 'in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor');

INSERT INTO peliculas_generos (pelicula_id, genero)
VALUES
(1,'Comedia'),
(2,'Terror'),
(3,'Thriller'),
(4,'Crime|Drama');

INSERT INTO series_generos (serie_id, genero)
VALUES
(3,'Comedia'),
(1,'Terror'),
(4,'Thriller'),
(2,'Crime|Drama');

UPDATE generos
SET genero='ciencia-ficción', descripcion='Pues es ficción pero con ciencia en lugar de magia'
WHERE genero='Terror';

UPDATE generos
SET  genero='suspense', descripcion='Pues cuando no apruebas'
WHERE  genero='Comedia';

UPDATE usuarios
SET contrasenya='Hola3ster_'
WHERE id=1;

UPDATE usuarios
SET contrasenya='Ponm3_un_10_porfa'
WHERE id=2;


