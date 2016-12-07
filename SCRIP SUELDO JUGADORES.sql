--------------------------------------------------------
-- Archivo creado  - miércoles-diciembre-07-2016   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for View JUGADORES_SALARIO_ALTO
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "HR"."JUGADORES_SALARIO_ALTO" ("NOMBRE", "APELLIDO", "EQUIPO") AS 
  SELECT
  j.NOMBRE,
  j.APELLIDOS,
  e.equipo_id
  
FROM
  JUGADORES j,
  EQUIPOS e

WHERE j.equipo_id = e.equipo_id
  AND SUELDO > 2000 
WITH READ ONLY;
