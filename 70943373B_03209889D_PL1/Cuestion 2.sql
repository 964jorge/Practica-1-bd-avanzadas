--Ver tamaño de bloque:
SHOW block_size;

--Registros por bloque reales:
SELECT
    reltuples::bigint AS filas_estimadas,
    relpages AS bloques,
    (reltuples / relpages) AS factor_bloque_medio
FROM pg_class
WHERE relname = 'estudiantes';