--Insertar nuevo estudiante
INSERT INTO estudiantes (nombre, codigo_carrera, edad, indice)
VALUES ('Jose Duque', 5, 23, 123);

--Visualizacion de la localizacion
SELECT ctid, estudiante_id, nombre
FROM estudiantes
WHERE nombre = 'Jose Duque';