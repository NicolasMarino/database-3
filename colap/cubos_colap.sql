-- Viviendas --
SELECT dimba.nombre,
	   dimv.descripcion,
       dimpe.descripcion,
       dimae.descripcion,
       ditv.descripcion,
       dimp.descripcion,
       dimt.desciripcion,
       dimoa.descripcion,
       fv.cantidad_de_viviendas,
       fv.cantidad_de_hogares_en_vivienda,
       fv.cantidad_de_mujeres,
       fv.cantidad_de_hombres,
       fv.cantidad_de_personas
FROM fact_viviendas fv
LEFT JOIN dim_barrio dimba on fv.clave_barrio = dimba.clave_barrio
LEFT JOIN dim_tipo_de_vivienda dimv on fv.clave_tipo_de_vivienda = dimv.clave_tipo_de_vivienda
LEFT JOIN dim_material_paredes_exteriores dimpe on fv.clave_material_paredes_exteriores = dimpe.clave_material_paredes_exteriores
LEFT JOIN dim_medio_alumbrado_electrico dimae on fv.clave_medio_alumbrado_electrico = dimae.clave_medio_alumbrado_electrico
LEFT JOIN dim_tipo_vivienda_resumido ditv on fv.clave_tipo_vivienda_resumido = ditv.clave_tipo_vivienda_resumido
LEFT JOIN dim_material_pisos dimp on fv.clave_material_pisos = dimp.clave_material_pisos
LEFT JOIN dim_material_techos dimt on fv.clave_material_techos = dimt.clave_material_techos
LEFT JOIN dim_origen_de_agua dimoa on fv.clave_origen_de_agua = dimoa.clave_origen_de_agua


-- Hogares --
SELECT dimb.nombre,
	   dimcnbi.descripcion,
       dimlc.descripcion,
       dimba.descripcion,
       dimtf.tiene_telefono_fijo,
       dimai.tiene_acceso_a_internet,
       dimtc.tiene_telefono_celular,
       dimcc.tiene_calefon_o_caldera,
       cantidad_de_hogares,
       cantidad_de_mujeres,
       cantidad_de_hombres
FROM fact_hogares fh
LEFT JOIN dim_barrio dimb ON dimb.clave_barrio = fh.clave_barrio
LEFT JOIN dim_cantidad_de_nbi dimcnbi ON dimcnbi.clave_cantidad_de_nbi = fh.clave_cantidad_de_nbi
LEFT JOIN dim_lugar_para_cocinar dimlc ON dimlc.clave_lugar_para_cocinar = fh.clave_lugar_para_cocinar
LEFT JOIN dim_disponibilidad_de_baño dimba ON dimba.clave_disponibilidad_de_baño = fh.clave_disponibilidad_de_baño
LEFT JOIN dim_telefono_fijo dimtf ON dimtf.clave_telefono_fijo = fh.clave_telefono_fijo
LEFT JOIN dim_acceso_a_internet dimai ON dimai.clave_acceso_a_internet = fh.clave_acceso_a_internet
LEFT JOIN dim_telefono_celular dimtc ON dimtc.clave_telefono_celular = fh.clave_telefono_celular
LEFT JOIN dim_calefon_o_caldera dimcc ON dimcc.clave_calefon_o_caldera = fh.clave_calefon_o_caldera;

-- Personas --
SELECT dimb.nombre,
		dims.sexo,
        dimne.nivel_mas_alto_que_curso,
        dimre.rango,
        dimae.descripcion,
        dimec.estado_civil,
        dimdf.tiene_dificultad,
        dimdc.tiene_dificultad,
        dimle.descripcion,
        fp.cantidad_de_personas,
        fp.edad,
        fp.cantidad_de_hijos
FROM fact_personas fp
LEFT JOIN dim_barrio dimb on fp.clave_barrio = dimb.clave_barrio
LEFT JOIN dim_sexo dims on fp.clave_sexo = dims.clave_sexo
LEFT JOIN dim_nivel_educativo dimne on fp.clave_nivel_educativo = dimne.clave_nivel_educativo
LEFT JOIN dim_rango_de_edad dimre on fp.clave_rango_de_edad = dimre.clave_rango_de_edad
LEFT JOIN dim_actividad_economica dimae on fp.clave_actividad_economica = dimae.clave_actividad_economica
LEFT JOIN dim_estado_civil dimec on fp.clave_estado_civil = dimec.clave_estado_civil
LEFT JOIN dim_dificultad_para_ver dimdf on fp.clave_dificultad_para_ver = dimdf.clave_dificultad_para_ver
LEFT JOIN dim_dificultad_para_caminar dimdc on fp.clave_dificultad_para_caminar = dimdc.clave_dificultad_para_caminar
LEFT JOIN dim_sabe_leer_y_escribir dimle on fp.clave_sabe_leer_y_escribir = dimle.clave_sabe_leer_y_escribir;