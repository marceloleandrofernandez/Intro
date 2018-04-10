
-- Ejercicio 1.1 --

SELECT *
FROM cargos

-- Ejercicio 1.2 --

SELECT empleados.*,cargo_descripcion
FROM empleados,cargos

-- Ejercicio 1.3 --
--PREGUNTA algo mas facil para renombrar?--

SELECT 
empleado_id as 'empleado id',inicial_segundo_nombre as 'inicial segundo nombre' ,
cargo_id as 'cargo id',nivel_cargo as 'nivel cargo',editorial_id as 'editorial id',
fecha_contratacion as 'fecha contratacion'
FROM empleados

-- Ejercicio 1.4 --

SELECT getdate() as 'Fecha y hora actual'

-- Ejercicio 1.5 --
--Preguntar lo de que multipla las lineas.--
-- select titulo, 'regalias cada 1000 unidades' = precio * 1000 / regalias from titulos---
SELECT titulo, 'Regalías x cada 1000 unidades'=regalias * 1000 
FROM titulos

-- Ejercicio 1.6 --
SELECT DISTINCT autor_nombre
FROM autores

-- Ejercicio 1.7 --
SELECT DISTINCT pais
FROM editoriales

-- Ejercicio 1.8 --

SELECT DISTINCT almacen_nombre
FROM almacenes


-- Ejercicio 1.9 --

SELECT TOP 5 almacen_nombre,cantidad
FROM almacenes, ventas
