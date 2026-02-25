--Crear incice arbol B
CREATE INDEX idx_estudiantes2_id
ON estudiantes2(estudiante_id);

ANALYZE estudiantes2;

--Lugar de almacenamiento
SELECT relname, relfilenode
FROM pg_class
WHERE relname = 'idx_estudiantes2_id';

--Tamaño y numero de bloques
SELECT
    pg_size_pretty(pg_relation_size('idx_estudiantes2_id')) AS tamaño,
    pg_relation_size('idx_estudiantes2_id')/8192 AS bloques;

--Niveles del arbol
CREATE EXTENSION IF NOT EXISTS pageinspect;

SELECT *
FROM bt_metap('idx_estudiantes2_id'); --Importa level

--Bloques por nivel
SELECT stats.type, COUNT(*)
FROM generate_series(
         1,
         pg_relation_size('idx_estudiantes2_id')/8192 - 1
     ) AS g(blkno),
     LATERAL bt_page_stats('idx_estudiantes2_id', g.blkno) AS stats
GROUP BY stats.type;

--Tuplas que tiene un bloque por nivel
SELECT *
FROM bt_page_stats('idx_estudiantes2_id', 5);
-- live_items -> numero de entradas de esa pagina
