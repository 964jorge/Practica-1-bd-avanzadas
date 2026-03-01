--Borramos y volvemos a crear

DROP TABLE IF EXISTS estudiantes;
DROP TABLE IF EXISTS estudiantes2;

CREATE TABLE estudiantes (
    estudiante_id SERIAL PRIMARY KEY,
    nombre TEXT,
    codigo_carrera INTEGER,
    edad INTEGER,
    indice INTEGER
);

COPY estudiantes (nombre, codigo_carrera, edad, indice)
FROM 'C:/estudiantes.csv'
--FROM 'D:/Ficheros Bases de Datos/PL1/estudiantes.csv'
DELIMITER ';';


--Creamos los arboles sobre id y codigo

CREATE INDEX arbolIndice
ON estudiantes USING btree(indice);

CREATE INDEX arbolCodigoCarrera
ON estudiantes USING btree(codigo_carrera);

-- Creamos los hash sobre id e indice

CREATE INDEX hashId
ON estudiantes USING hash(estudiante_id);

CREATE INDEX hashIndice
ON estudiantes USING hash(indice);
