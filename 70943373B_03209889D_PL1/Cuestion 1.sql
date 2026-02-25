DROP TABLE IF EXISTS estudiantes CASCADE;

--Crear la tabla
CREATE TABLE estudiantes (
    estudiante_id SERIAL PRIMARY KEY,
    nombre TEXT,
    codigo_carrera INTEGER,
    edad INTEGER,
    indice INTEGER
);

--Cargar los datos
COPY estudiantes (nombre, codigo_carrera, edad, indice)
FROM 'D:/Ficheros Bases de Datos/PL1/estudiantes.csv'
DELIMITER ';';
ANALYZE estudiantes;

--Locaizar Ficheros:
--Base Datos
SELECT oid, datname
FROM pg_database
WHERE datname = 'postgres';

--Tabla
SELECT relname, oid
FROM pg_class
WHERE relname = 'estudiantes';

--Tamaño
SELECT
    pg_size_pretty(pg_relation_size('estudiantes')) AS solo_tabla,
    pg_size_pretty(pg_total_relation_size('estudiantes')) AS tabla_mas_indices;

