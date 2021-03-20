CREATE DATABASE nopalito;
USE nopalito;

CREATE TABLE usuario(
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	correo VARCHAR(100) NOT NULL,
	contraseña VARCHAR(100) NOT NULL 
);

CREATE TABLE lugar(
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	codigo_postal MEDIUMINT UNSIGNED NOT NULL,
    municipio VARCHAR(100) NOT NULL,
    colonia VARCHAR(100) NOT NULL,
    calle VARCHAR(100) NOT NULL
    usuarioId INT UNSIGNED NOT NULL,
    FOREIGN KEY (usuarioId) REFERENCES usuario(id)
);

CREATE TABLE arbol(
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    fecha DATE NOT NULL,
    especie VARCHAR(100) NOT NULL,
    imagen VARCHAR(1024) NOT NULL,
    lugarId INT UNSIGNED NOT NULL,
    FOREIGN KEY (lugarId) REFERENCES lugar(id)
);

INSERT INTO usuario (correo, contrasenia) VALUES ("hola@hotmail.com", "QwerT1_");
INSERT INTO usuario (correo, contrasenia) VALUES ("estudiante@alumnos.udg.mx", "w0lA!")

INSERT INTO lugar(codigo_postal, municipio, colonia, calle, usuarioId) VALUES (36260, "Guanajuato", "Santa Teresa", "Buenos Aires", LAST_INSERT_ID());
INSERT INTO lugar(codigo_postal, municipio, colonia, calle, usuarioId) VALUES (44100, "Guadalajara", "Guadalajara Centro", "Hospital", 1);

INSERT INTO arbol(fecha, especie, imagen, lugarId) VALUES (2020-06-23, "Abedul", "usuario\docs\arbol01.jpg", 2);
INSERT INTO arbol(fecha, especie, imagen, lugarId) VALUES (2020-10-12, "Jacaranda", "usuario\docs\arbol02.jpg", 1);
INSERT INTO arbol(fecha, especie, imagen, lugarId) VALUES (2021-01-22, "Pino", "usuario\docs\arbol03.png", 2);