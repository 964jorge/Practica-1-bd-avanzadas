--Tuplas de estudiantes con indice 500
SELECT *
FROM estudiantes
WHERE indice = 500;

--Numero de tuplas en las que indice es 500
SELECT COUNT(*)
FROM estudiantes
WHERE indice = 500;

--Numero de bloques leidos
EXPLAIN (ANALYZE, BUFFERS)
SELECT *
FROM estudiantes
WHERE indice = 500;

--Obtener caracteristicas
ANALYZE estudiantes;
--De la tabla
SELECT *
FROM pg_stat_user_tables
WHERE relname = 'estudiantes';
--De la columna indice
SELECT *
FROM pg_stats
WHERE tablename = 'estudiantes'
AND attname = 'indice';


