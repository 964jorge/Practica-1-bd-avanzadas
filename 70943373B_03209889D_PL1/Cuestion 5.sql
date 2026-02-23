-- Crear tabla nueva copiando y ordenando la información
CREATE TABLE estudiantes2 AS
SELECT *
FROM estudiantes
ORDER BY indice;
ANALYZE estudiantes2;

--estadisticas
SELECT relname, relpages, reltuples
FROM pg_class
WHERE relname = 'estudiantes2';