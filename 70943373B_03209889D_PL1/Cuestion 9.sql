--Optimizar el rendimiento
VACUUM FULL estudiantes;
ANALYZE estudiantes;

--Comprobacion

--Tamaño
SELECT pg_size_pretty(pg_relation_size('estudiantes')) AS table_size;

--Bloques
SELECT relpages
FROM pg_class
WHERE relname = 'estudiantes';