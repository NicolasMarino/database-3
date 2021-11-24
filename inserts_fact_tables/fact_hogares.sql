DELETE from fact_hogares;

INSERT INTO fact_hogares
SELECT ba.clave_barrio, 
CASE
    WHEN h.NBI_CANTID IN (8, 9, 5555) THEN NULL
    ELSE h.NBI_CANTID
END as cantidad_nbi,
CASE 
	WHEN H.HogSC01 IN (8, 5555) THEN NULL
	ELSE H.HogSC01
END as lugar_para_cocinar,
CASE
    WHEN h.HogSH01 IN (8, 5555) THEN NULL
    ELSE h.HogSH01
END as disponibilidad_banio,
CASE
    WHEN h.HogCE07 IN (8, 5555) THEN NULL
    ELSE h.HogCE07
END as telefono_fijo,
CASE
    WHEN h.HogCE11 IN (8, 5555) THEN NULL
    ELSE h.HogCE11
END as acceso_internet,
CASE
    WHEN h.HogCE08 IN (8, 5555) THEN NULL
    ELSE h.HogCE08
END as telefono_celular,
CASE
    WHEN h.HogCE01 IN (8, 5555) THEN NULL
    ELSE h.HogCE01
END as calefon_o_caldera,
1 as cantidad_hogares,
h.HOGPR03,
h.HOGPR02,
h.HOGPR01
FROM hogares_v2 h
	INNER JOIN dim_barrio ba ON h.BARRIO85 = ba.nombre
WHERE h.BARRIO85 is NOT NULL
GROUP BY h.ID_VIVIEND, H.HOGID, h.BARRIO85, h.NBI_CANTID, h.HogSH01, h.HogCE07, h.HogCE11,  h.HogCE08, h.HogCE01;
         
SELECT COUNT(1) FROM fact_hogares;
SELECT COUNT(1) FROM HOGARES WHERE BARRIO85 is NOT NULL;