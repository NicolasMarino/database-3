-- Script de inserción de datos en fact_hogares

/*
TODO:
 - Agregar habitaciones totales.
 - Revisar join.
 - Agregar hechos y ponerlos en group by.
*/

DELETE from fact_hogares;

INSERT INTO fact_hogares
SELECT ba.clahe_barrio, 
CASE
    WHEN h.NBI_CANTIDAD = 8 THEN NULL
    WHEN h.NBI_CANTIDAD = 9 THEN NULL
    WHEN h.NBI_CANTIDAD = 5555 THEN NULL
    ELSE h.NBI_CANTIDAD
END as cantidad_nbi,
CASE
    WHEN h.HogSH01 = 8 THEN NULL
    ELSE h.HogSH01
END as disponibilidad_banio,
CASE
    WHEN h.HogCE07 = 8 THEN NULL
    ELSE h.HogCE07
END as telefono_fijo,
CASE
    WHEN h.HogCE11 = 8 THEN NULL
    ELSE h.HogCE11
END as acceso_internet,
CASE
    WHEN h.HogCE08 = 8 THEN NULL
    ELSE h.HogCE08
END as telefono_celular,
CASE
    WHEN h.HogCE01 = 8 THEN NULL
    ELSE h.HogCE01
END as calefon_o_caldera,
1 as cantidad_hogares
-- faltan hechos:
--  cantidad de mujeres
--  cantidad de hombres
--  cantidad de personas
FROM hogares2 h
	INNER JOIN dim_barrio ba ON h.BARRIO85 = ba.nombre
    -- falta revisar joins
WHERE h.BARRIO85 is NOT NULL
GROUP BY h.BARRIO85, h.NBI_CANTIDAD, h.HogSH01, h.HogCE07, h.HogCE11,  h.HogCE08, 
		 h.HogCE01;