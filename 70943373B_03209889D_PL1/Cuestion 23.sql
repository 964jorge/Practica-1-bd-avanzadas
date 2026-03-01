--Primera


SELECT pg_stat_reset();

SELECT *
FROM estudiantes
WHERE codigo_carrera = 50;

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
WHERE estudiante_id = 80000;

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
WHERE indice BETWEEN 100 AND 200;

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
WHERE edad = 20;

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



--Quinta


SELECT pg_stat_reset();

SELECT indice, COUNT(*)
FROM estudiantes
GROUP BY indice;

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



--Sexta


SELECT pg_stat_reset();

SELECT codigo_carrera, AVG(edad)
FROM estudiantes
GROUP BY codigo_carrera;

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


--Septima


SELECT pg_stat_reset();

INSERT INTO estudiantes(estudiante_id, nombre, codigo_carrera, edad, indice)
VALUES (30000002, 'Crazy Dave', 7, 30, 100);

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




