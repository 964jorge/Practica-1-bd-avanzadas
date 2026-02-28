--Borrar tablas, indices y dependencias
DROP TABLE IF EXISTS estudiantes CASCADE;
DROP TABLE IF EXISTS estudiantes2 CASCADE;
DROP TABLE IF EXISTS estudiantes3 CASCADE;

--Crear la tabla
CREATE TABLE estudiantes2 (
    estudiante_id SERIAL,
    nombre TEXT,
    codigo_carrera INT,
    edad INT,
    indice INT
);

--Cargar datos
COPY estudiantes2(nombre, codigo_carrera, edad, indice)
FROM 'C:/estudiantes.csv'
--FROM 'D:/Ficheros Bases de Datos/PL1/estudiantes.csv'
DELIMITER ';';

--Ordenar por 'indice'
CREATE TABLE estudiantes2_ordenada AS
SELECT *
FROM estudiantes2
ORDER BY indice;

DROP TABLE estudiantes2;

ALTER TABLE estudiantes2_ordenada
RENAME TO estudiantes2;

ANALYZE estudiantes2;

--Comprobacion de tamaño
SELECT
    pg_relation_size('estudiantes2') / 8192 AS bloques,
    pg_size_pretty(pg_relation_size('estudiantes2')) AS tamaño;