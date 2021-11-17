-- Script de inserción de datos en fact_personas
-- DONE (11/17/2021 2am nasi)
DELETE from fact_personas;

INSERT INTO fact_personas
SELECT ba.clave_barrio, 
p.PerPH02 as sexo,
CASE
	WHEN p.niveledu_r IN (13,88) THEN NULL
	ELSE p.niveledu_r
END as nivel_educativo,
CASE 
	WHEN p.PerNa01 >= 0 AND p.PerNa01 <= 13 THEN 1
	WHEN p.PerNa01 >= 14 AND p.PerNa01 <= 50 THEN 2
	WHEN p.PerNa01 >= 51 AND p.PerNa01 <= 70 THEN 3
	WHEN p.PerNa01 >= 71 THEN 4
END as rango_edad,
CASE
	WHEN p.pobpcoac IN (1,3,4,5,6) THEN 1
	WHEN p.pobpcoac = 8 THEN NULL
	ELSE p.pobpcoac
END as actividad_economica,
CASE
	WHEN p.PerEC04 IN (8,9) THEN NULL
    ELSE p.PerEC04
END as estado_civil,
CASE
	WHEN p.PerDi01 IN (8,9) THEN NULL
	ELSE p.PerDi01
END as dif_para_ver,
CASE
	WHEN p.PerDi04 IN (8,9) THEN NULL
	ELSE p.PerDi04
END as dif_para_caminar,
CASE
	WHEN p.PerEd08 = 8 THEN NULL
	ELSE p.PerEd08
END as sabe_leer_y_esc,
1 as cantidad_personas, 
p.PerNa01 as edad,
CASE 
	WHEN p.PerFM01_r IN (99,88,77) THEN NULL
    ELSE p.PerFM01_r
END as cantidad_de_hijos_vivos
FROM personas2 p
	INNER JOIN dim_barrio ba ON p.BARRIO85 = ba.nombre
WHERE p.BARRIO85 is NOT NULL AND p.PerEC04 != 5555
GROUP BY p.BARRIO85, p.PerPH02, p.niveledu_r, p.PerNa01, p.pobpcoac,  p.PerEC04, 
		 p.PerDi01, p.PerDi04, p.PerEd08, p.PerNa01, p.PerFM01_r;