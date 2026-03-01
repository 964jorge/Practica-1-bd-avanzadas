--Primera


SELECT pg_stat_reset();

SELECT *
FROM estudiantes
WHERE codigo_carrera = 20 AND indice = 500;

--Estadisticas
SELECT relname, seq_scan, idx_scan
FROM pg_stat_all_tables
WHERE relname = 'estudiantes';

--Bloques de tabla
SELECT relname, heap_blks_read, heap_blks_hit
FROM pg_statio_all_tables
WHERE relname = 'estudiantes';

--Bloques de indice
SELECT indexrelname, idx_blks_read, idx_blks_hit
FROM pg_statio_all_indexes
WHERE relname = 'estudiantes';




--Segunda


SELECT pg_stat_reset();

SELECT *
FROM estudiantes
WHERE codigo_carrera = 50 OR indice = 900;

--Estadisticas
SELECT relname, seq_scan, idx_scan
FROM pg_stat_all_tables
WHERE relname = 'estudiantes';

--Bloques de tabla
SELECT relname, heap_blks_read, heap_blks_hit
FROM pg_statio_all_tables
WHERE relname = 'estudiantes';

--Bloques de indice
SELECT indexrelname, idx_blks_read, idx_blks_hit
FROM pg_statio_all_indexes
WHERE relname = 'estudiantes';



--Tercera


SELECT pg_stat_reset();

SELECT *
FROM estudiantes
WHERE indice = 300;

--Estadisticas
SELECT relname, seq_scan, idx_scan
FROM pg_stat_all_tables
WHERE relname = 'estudiantes';

--Bloques de tabla
SELECT relname, heap_blks_read, heap_blks_hit
FROM pg_statio_all_tables
WHERE relname = 'estudiantes';

--Bloques de indice
SELECT indexrelname, idx_blks_read, idx_blks_hit
FROM pg_statio_all_indexes
WHERE relname = 'estudiantes';



--Cuarta



SELECT pg_stat_reset();

SELECT *
FROM estudiantes
WHERE codigo_carrera = 80;

--Estadisticas
SELECT relname, seq_scan, idx_scan
FROM pg_stat_all_tables
WHERE relname = 'estudiantes';

--Bloques de tabla
SELECT relname, heap_blks_read, heap_blks_hit
FROM pg_statio_all_tables
WHERE relname = 'estudiantes';

--Bloques de indice
SELECT indexrelname, idx_blks_read, idx_blks_hit
FROM pg_statio_all_indexes
WHERE relname = 'estudiantes';