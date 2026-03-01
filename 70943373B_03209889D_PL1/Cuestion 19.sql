--Crear indice hash
CREATE INDEX idx_estudiantes2_indice_hash
ON estudiantes2 USING HASH (indice);

ANALYZE estudiantes2;

--Lugar de almacenamiento
SELECT relname, relfilenode
FROM pg_class
WHERE relname = 'idx_estudiantes2_indice_hash';

--Tamaño y numero de bloques
SELECT
    pg_size_pretty(pg_relation_size('idx_estudiantes2_indice_hash')) AS tamaño,
    pg_relation_size('idx_estudiantes2_indice_hash')/8192 AS bloques;

--Numero de cajones
CREATE EXTENSION IF NOT EXISTS pageinspect;

SELECT *
FROM hash_metapage_info(get_raw_page('idx_estudiantes2_indice_hash', 0));
--num_buckets (el numero de cajones) = maxbucket + 1

