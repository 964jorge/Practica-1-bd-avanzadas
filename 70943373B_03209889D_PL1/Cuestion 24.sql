DROP INDEX IF EXISTS arbolindice;
DROP INDEX IF EXISTS arbolcodigocarrera;
DROP INDEX IF EXISTS hashid;
DROP INDEX IF EXISTS hashindice;

CREATE INDEX arbolMultiple ON estudiantes USING btree(codigo_carrera, indice);
