-- Script de inserción de datos en fact_viviendas
-- TODO

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