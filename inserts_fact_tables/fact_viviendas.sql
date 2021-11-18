-- Script de inserción de datos en fact_viviendas

/*
TODO:
 - Revisar join.
 - Agregar hechos y ponerlos en group by.
*/

-- Código viejo (no quise borrarlo porque era tuyo y capaz algo nos sirva) --
INSERT INTO fact_viviendas
SELECT ba.clave_barrio, v.ViVVO01 , v.ViVDV01 , 
	   v.ViVDV07, v.TIPO_VIVIE, v.ViVDV03, v.ViVDV02 ,  v.ViVDV05 , 
       count(distinct v.id_viviend),
       count(distinct HOGID),
       sum(h.HOGPR03) as cant_mujeres,
       sum(h.HOGPR02) as cant_hombres,
       sum(h.HOGPR01) as cant_personas
FROM viviendas2 v
	INNER JOIN dim_barrio ba on v.BARRIO85 = ba.nombre
    INNER JOIN hogares_v2 h on v.id_viviend = h.id_viviend
WHERE v.BARRIO85 is not null
group by ba.clave_barrio, v.ViVVO01, v.ViVDV01, v.ViVDV07, v.TIPO_VIVIE, v.ViVDV03, v.ViVDV02, v.ViVDV05
-------------------------------------------------

DELETE from fact_viviendas;

INSERT INTO fact_viviendas
SELECT ba.clave_barrio, 
CASE
    WHEN v.ViVVO01 = 20 THEN NULL
    ELSE v.ViVVO01
END as tipo_vivienda,
v.TIPO_VIVIENDA as tipo_viv_resumido,
CASE
    WHEN v.VivDV03 = 8 THEN NULL
    ELSE v.VivDV03
END as material_pisos,
CASE
    WHEN v.VivDV01 = 8 THEN NULL
    ELSE v.VivDV01
END as material_paredes,
CASE
    WHEN v.VivDV02 = 8 THEN NULL
    ELSE v.VivDV02
END as material_techos,
CASE
    WHEN v.VivDV07 = 8 THEN NULL
    ELSE v.VivDV07
END as medio_alumbrado_electrico,
CASE
    WHEN v.VivDV05 = 8 THEN NULL
    ELSE v.VivDV05
END as origen_agua,
1 as cantidad_viviendas
-- faltan hechos:
--  cantidad de hogares en vivienda
--  cantidad de mujeres
--  cantidad de hombres
--  cantidad de personas
FROM viviendas2 v
	INNER JOIN dim_barrio ba ON v.BARRIO85 = ba.nombre
    -- falta revisar joins
WHERE v.BARRIO85 is NOT NULL
GROUP BY v.BARRIO85, v.ViVVO01, v.VivDV03, v.VivDV01, v.VivDV02,  v.VivDV07, 
		 v.VivDV05;