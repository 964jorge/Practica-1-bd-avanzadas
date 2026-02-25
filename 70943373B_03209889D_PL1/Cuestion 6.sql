--Tuplas de estudiantes con indice 500
SELECT *
FROM estudiantes2
WHERE indice = 500;

--Bloques leidos
EXPLAIN (ANALYZE, BUFFERS)
SELECT *
FROM estudiantes2
WHERE indice = 500;
