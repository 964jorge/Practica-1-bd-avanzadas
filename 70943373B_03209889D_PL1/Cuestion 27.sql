CREATE TABLE estudiantes3 (
    estudiante_id SERIAL,
    nombre TEXT,
    codigo_carrera INTEGER,
    edad INTEGER,
    indice INTEGER
) PARTITION BY LIST (edad);


--Para crear cada particion

DO $$
DECLARE
    i INT;
    sql TEXT;
BEGIN
    FOR i IN 18..40 LOOP
        sql := format('CREATE TABLE estudiantes3_%s PARTITION OF estudiantes3 FOR VALUES IN (%s);', i, i);
        EXECUTE sql;
    END LOOP;
END $$;



COPY estudiantes3 (nombre, codigo_carrera, edad, indice)
FROM 'C:/estudiantes.csv'
--FROM 'D:/Ficheros Bases de Datos/PL1/estudiantes.csv'
DELIMITER ';';





--Primera


SELECT pg_stat_reset();

SELECT *
FROM estudiantes3
WHERE edad = 25;

SELECT relname, seq_scan
FROM pg_stat_all_tables
WHERE relname LIKE 'estudiantes3_%';

SELECT relname, heap_blks_read, heap_blks_hit
FROM pg_statio_all_tables
WHERE relname LIKE 'estudiantes3_%';




--Segunda


SELECT pg_stat_reset();

SELECT *
FROM estudiantes3
WHERE edad = 20 OR edad = 25 OR edad = 30;

SELECT relname, seq_scan
FROM pg_stat_all_tables
WHERE relname LIKE 'estudiantes3_%';

SELECT relname, heap_blks_read, heap_blks_hit
FROM pg_statio_all_tables
WHERE relname LIKE 'estudiantes3_%';




--Tercera


SELECT pg_stat_reset();

SELECT *
FROM estudiantes3
WHERE edad BETWEEN 25 AND 30;

SELECT relname, seq_scan
FROM pg_stat_all_tables
WHERE relname LIKE 'estudiantes3_%';

SELECT relname, heap_blks_read, heap_blks_hit
FROM pg_statio_all_tables
WHERE relname LIKE 'estudiantes3_%';




--Cuarta


SELECT pg_stat_reset();

SELECT *
FROM estudiantes3
WHERE edad > 50;

SELECT relname, seq_scan
FROM pg_stat_all_tables
WHERE relname LIKE 'estudiantes3_%';

SELECT relname, heap_blks_read, heap_blks_hit
FROM pg_statio_all_tables
WHERE relname LIKE 'estudiantes3_%';
