CREATE DATABASE IF NOT EXISTS aulalibro_db;

USE aulalibro_db;


CREATE TABLE lector (

    id INT AUTO_INCREMENT PRIMARY KEY,

    nombre VARCHAR(100) NOT NULL

);


CREATE TABLE libro (

    id INT AUTO_INCREMENT PRIMARY KEY,

    titulo VARCHAR(120) NOT NULL,

    autor VARCHAR(100) NOT NULL,

    disponible BOOLEAN NOT NULL DEFAULT TRUE

);


CREATE TABLE prestamo (

    id INT AUTO_INCREMENT PRIMARY KEY,

    id_lector INT NOT NULL,

    id_libro INT NOT NULL,

    fecha DATE NOT NULL,

    FOREIGN KEY (id_lector)
        REFERENCES lector(id),

    FOREIGN KEY (id_libro)
        REFERENCES libro(id)

);


-- Datos de ejemplo

INSERT INTO lector(nombre)
VALUES ('Ana Torres');

INSERT INTO lector(nombre)
VALUES ('Pedro Soto');


INSERT INTO libro(titulo, autor)
VALUES ('El Principito', 'Antoine de Saint-Exupéry');

INSERT INTO libro(titulo, autor)
VALUES ('Papelucho', 'Marcela Paz');
