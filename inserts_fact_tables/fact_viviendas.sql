DELETE from fact_viviendas;

INSERT INTO fact_viviendas
SELECT ba.clave_barrio, 
CASE
    WHEN v.ViVVO01 = 20 THEN NULL
    ELSE v.ViVVO01
END as tipo_vivienda,
v.TIPO_VIVIE as tipo_viv_resumido,
CASE
    WHEN v.VivDV03 IN (8, 5555) THEN NULL
    ELSE v.VivDV03
END as material_pisos,
CASE
    WHEN v.VivDV01 IN (8, 5555) THEN NULL
    ELSE v.VivDV01
END as material_paredes,
CASE
    WHEN v.VivDV02 IN (8, 5555) THEN NULL
    ELSE v.VivDV02
END as material_techos,
CASE
    WHEN v.VivDV07 IN (8, 5555) THEN NULL
    ELSE v.VivDV07
END as medio_alumbrado_electrico,
CASE
    WHEN v.VivDV05 IN (8, 5555) THEN NULL
    ELSE v.VivDV05
END as origen_agua,
1 as cantidad_viviendas,
v.VivHV01_1 as cant_hogares_en_vivienda,
h.HogPR03 AS cant_mujeres,
h.HogPR02 AS cant_hombres,
h.HogPR01 AS cant_personas
FROM viviendas2 v
	LEFT JOIN dim_barrio ba ON v.BARRIO85 = ba.nombre
    LEFT JOIN hogares_v2 h ON v.ID_VIVIEND = h.ID_VIVIEND
WHERE v.BARRIO85 is NOT NULL
GROUP BY v.ID_VIVIEND, v.BARRIO85, v.ViVVO01, v.VivDV03, v.VivDV01, v.VivDV02,  v.VivDV07, v.VivDV05;

SELECT COUNT(1) FROM fact_viviendas;
SELECT COUNT(1) FROM viviendas2 WHERE BARRIO85 is NOT NULL