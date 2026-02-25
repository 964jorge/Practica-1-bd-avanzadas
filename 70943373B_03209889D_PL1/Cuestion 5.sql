DROP TABLE IF EXISTS estudiantes2 CASCADE;

--Crear la tabla con los datos ordenados por indice
CREATE TABLE estudiantes2 AS
SELECT *
FROM estudiantes
ORDER BY indice;

--Numero de bloques
ANALYZE estudiantes2;

SELECT relpages,
       pg_size_pretty(pg_relation_size('estudiantes2'))
FROM pg_class
WHERE relname = 'estudiantes2';




