--Tuplas de estudiantes con indice 500
SELECT *
FROM estudiantes3
WHERE indice = 500;

--Numero de bloques leidos
EXPLAIN (ANALYZE, BUFFERS)
SELECT *
FROM estudiantes3
WHERE indice = 500;