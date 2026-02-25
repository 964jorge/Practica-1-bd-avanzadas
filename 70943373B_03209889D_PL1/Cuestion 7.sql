--Borrar filas
DELETE FROM estudiantes
WHERE estudiante_id IN (
    SELECT estudiante_id
    FROM estudiantes
    TABLESAMPLE SYSTEM (30) --ORDER BY random()
    LIMIT 5000000
);
ANALYZE estudiantes;

-- Tamaño de la tabla en disco
SELECT pg_size_pretty(pg_relation_size('estudiantes')) AS table_size;

--Comprobacion del por que
SELECT relname,
       n_live_tup AS tuplas_vivas,
       n_dead_tup AS tuplas_muertas
FROM pg_stat_user_tables
WHERE relname = 'estudiantes';

--Numero de bloques
SELECT relpages
FROM pg_class
WHERE relname = 'estudiantes';