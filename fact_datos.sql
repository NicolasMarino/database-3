-- Fact Viviendas
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

BARRIO85
rango_edad = PerNa01.
estado civil = PerEC04
nivel edu = niveledu_r
dif para ver = PerDi01
act econom = pobpcoac
dif para caminar= PerDi04
sae leer y esc = PerEd08

-- Fact Personas
DELETE from fact_personas;
INSERT INTO fact_personas
SELECT ba.clave_barrio, 
CASE
	when p.niveledu_r in (13,88) then NULL
END as nivel_educativo,
CASE 
	when p.PerNa01 >= 0 and p.PerNa01 <= 13 then 1
	when p.PerNa01 >= 14 and p.PerNa01 <= 50 then 2
	when p.PerNa01 >= 51 and p.PerNa01 <= 70 then 3
	when p.PerNa01 >= 71 then 4
END as rango_edad,
CASE
	WHEN p.pobpcoac in (1,3,4,5,6) then 1
	WHEN p.pobpcoac == 8 then NULL
END as actividad_economica,
CASE
	WHEN p.PerEC04 in (8,9) then NULL
END as estado_civil,
CASE
	WHEN p.PerDi01 in (8,9) then NULL
END as dif_para_ver,
CASE
	when p.PerDi04 in (8,9) then NULL
END as dif_para_caminar,
CASE
	when p.PerEd08 == 8 then NULL
END as sabe_leer_y_esc,
1 as cantidad_personas, 
p.PerNa01 as edad,
CASE 
	WHEN p.PerFM01_r in (99,88,77) then NULL
    ELSE P.PerFM01_r
END as cantidad_de_hijos_vivos
from personas2 p
	INNER JOIN dim_barrio ba on p.BARRIO85 = ba.nombre
where p.BARRIO85 is not null and p.PerEC04 != 5555
group by p.PERID, p.ID_VIVIEND, p.HOGID, p.BARRIO85, p.PerEC04, 
		 p.niveledu_r, p.PerDi01, p.pobpcoac, p.PerDi04, p.PerEd08;