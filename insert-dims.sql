-- Script de inserción de datos en dims.
-- TODO: REVISAR HABITACIONES TOTALES


--------------
-- Personas --
--------------
/* BARRIO85 */
INSERT INTO dim_barrio (nombre) select distinct BARRIO85 from personas where BARRIO85 is not null;

/* PerPH02 */
INSERT into dim_sexo value (1,'1');
INSERT into dim_sexo value (2,'2');

/* PerNa01 */
INSERT into dim_rango_de_edad value (1,'0-13');
INSERT into dim_rango_de_edad value (2,'14-50');
INSERT into dim_rango_de_edad value (3,'51-70');
INSERT into dim_rango_de_edad value (4,'71 y más');

/* PerEC04 */
INSERT INTO dim_estado_civil VALUES(1,'Separado/a de unión libre');
INSERT INTO dim_estado_civil VALUES(2,'Divorciado/a');
INSERT INTO dim_estado_civil VALUES(3,'Casado/a (incluye separado y aun no se divorció)');
INSERT INTO dim_estado_civil VALUES(4,'Viudo/a de casamiento');
INSERT INTO dim_estado_civil VALUES(5,'Viudo/a de unión libre');
INSERT INTO dim_estado_civil VALUES(6,'Soltero/a (nunca se casó ni vivió en unión libre)');
-- INSERT INTO dim_estado_civil VALUES(8,'No relevado');
-- INSERT INTO dim_estado_civil VALUES(9,'Ignorado');

/* niveledu_r */
INSERT INTO dim_nivel_educativo VALUES(0, 'Menor de 4 años');
INSERT INTO dim_nivel_educativo VALUES(1, 'Preescolar');
INSERT INTO dim_nivel_educativo VALUES(2, 'Primaria común');
INSERT INTO dim_nivel_educativo VALUES(3, 'Primaria especial');
INSERT INTO dim_nivel_educativo VALUES(4, 'Ciclo Básico');
INSERT INTO dim_nivel_educativo VALUES(5, 'Bachillerato');
INSERT INTO dim_nivel_educativo VALUES(6, 'Enseñanza Técnica/Formación Profesional UTU');
INSERT INTO dim_nivel_educativo VALUES(7, 'Magisterio o Profesorado');
INSERT INTO dim_nivel_educativo VALUES(8, 'Terciario no universitario');
INSERT INTO dim_nivel_educativo VALUES(9, 'Universidad o similar');
INSERT INTO dim_nivel_educativo VALUES(10, 'Postgrado (Diploma/Maestría/Doctorado)');
INSERT INTO dim_nivel_educativo VALUES(11, 'Terciario sin especificar (Planillas)');
INSERT INTO dim_nivel_educativo VALUES(12, 'Nunca asistió');
-- INSERT INTO dim_nivel_educativo VALUES(13, 'Ignorado');
-- INSERT INTO dim_nivel_educativo VALUES(88, 'No relevado');
-- INSERT INTO dim_nivel_educativo VALUES(5555, 'Secreto Estadístico');

/* PerDi01 */
INSERT into dim_dificultad_para_ver value (1,'No tiene dificultad');
INSERT into dim_dificultad_para_ver value (2,'Sí, alguna dificultad');
INSERT into dim_dificultad_para_ver value (3,'Sí, mucha dificultad');
INSERT into dim_dificultad_para_ver value (4,'Sí, no puede hacerlo');
-- INSERT into dim_dificultad_para_ver value (8,'No relevado');
-- INSERT into dim_dificultad_para_ver value (9,'Ignorado');
-- INSERT into dim_dificultad_para_ver value (5555,'No Revelado');

/* pobpcoac */
INSERT into dim_actividad_economica value (1,'Desocupado');
INSERT into dim_actividad_economica value (2,'Ocupado');

/* PerDi04 */
INSERT into dim_dificultad_para_caminar value (1,'No tiene dificultad');
INSERT into dim_dificultad_para_caminar value (2,'Sí, alguna dificultad');
INSERT into dim_dificultad_para_caminar value (3,'Sí, mucha dificultad');
INSERT into dim_dificultad_para_caminar value (4,'Sí, no puede hacerlo');
INSERT into dim_dificultad_para_caminar value (8,'No relevado');
INSERT into dim_dificultad_para_caminar value (9,'Ignorado');
INSERT into dim_dificultad_para_caminar value (5555,'No Revelado');

/* PerEd08 */
INSERT INTO dim_sabe_leer_y_escribir VALUES(1,'Si');
INSERT INTO dim_sabe_leer_y_escribir VALUES(2,'No');
-- INSERT INTO dim_sabe_leer_y_escribir VALUES(8,'No relevado');

---------------
-- Viviendas --
---------------
/* VivVO01 */
INSERT INTO dim_tipo_de_vivienda VALUES(1,'Casa.');
INSERT INTO dim_tipo_de_vivienda VALUES(2,'Apartamento en edificio en altura con ascensor.');
INSERT INTO dim_tipo_de_vivienda VALUES(3,'Apartamento en edificio en altura sin ascensor.');
INSERT INTO dim_tipo_de_vivienda VALUES(4,'Apartamento en edificio de una planta.');
INSERT INTO dim_tipo_de_vivienda VALUES(5,'Apartamento o cuarto en local o vivienda colectiva.');
INSERT INTO dim_tipo_de_vivienda VALUES(6,'Local no construido para vivienda.');
INSERT INTO dim_tipo_de_vivienda VALUES(7,'Vivienda movil.');
INSERT INTO dim_tipo_de_vivienda VALUES(8,'Otra particular.');
INSERT INTO dim_tipo_de_vivienda VALUES(9,'Hotel, pension u otra casa de hospedaje.');
INSERT INTO dim_tipo_de_vivienda VALUES(10,'Hospital, sanatorio (con internacion).');
INSERT INTO dim_tipo_de_vivienda VALUES(11,'Residencial de ancianos.');
INSERT INTO dim_tipo_de_vivienda VALUES(12,'Residencial de estudiantes.');
INSERT INTO dim_tipo_de_vivienda VALUES(13,'Casa de peones.');
INSERT INTO dim_tipo_de_vivienda VALUES(14,'Internado religioso.');
INSERT INTO dim_tipo_de_vivienda VALUES(15,'Establecimiento de reclusion.');
INSERT INTO dim_tipo_de_vivienda VALUES(16,'Hogar de guardia o similar.');
INSERT INTO dim_tipo_de_vivienda VALUES(17,'Cuartel militar o policial.');
INSERT INTO dim_tipo_de_vivienda VALUES(18,'Otra colectiva.');
INSERT INTO dim_tipo_de_vivienda VALUES(19,'Refugios.');
INSERT INTO dim_tipo_de_vivienda VALUES(20,'Ignorado particular.');

/* VivDV01 */
INSERT INTO dim_material_paredes_exteriores VALUES(1,'Mamposteria: ladrillos, ticholos, piedras o bloques con terminacion.');
INSERT INTO dim_material_paredes_exteriores VALUES(2,'Mamposteria: ladrillos, ticholos, piedras o bloques sin terminacion.');
INSERT INTO dim_material_paredes_exteriores VALUES(3,'Materiales livianos (madera o chapa) con revestimiento.');
INSERT INTO dim_material_paredes_exteriores VALUES(4,'Materiales livianos (madera o chapa) sin revestimiento.');
INSERT INTO dim_material_paredes_exteriores VALUES(5,'Barro (terron, adobe o fajina).');
INSERT INTO dim_material_paredes_exteriores VALUES(6,'Materiales de desecho.');
INSERT INTO dim_material_paredes_exteriores VALUES(7,'Otro.');
-- INSERT INTO dim_material_paredes_exteriores VALUES(8,'No relevado');

/* VivDV07 */
INSERT INTO dim_medio_alumbrado_electrico VALUES(1,'UTE o red general.');
INSERT INTO dim_medio_alumbrado_electrico VALUES(2,'Cargador eolico de bateria.');
INSERT INTO dim_medio_alumbrado_electrico VALUES(3,'Cargador solar de bateria.');
INSERT INTO dim_medio_alumbrado_electrico VALUES(4,'Grupo electrogeno propio.');
INSERT INTO dim_medio_alumbrado_electrico VALUES(5,'Otro electrico.');
INSERT INTO dim_medio_alumbrado_electrico VALUES(6,'No tiene.');
-- INSERT INTO dim_medio_alumbrado_electrico VALUES(8,'No relevado.');

/* TIPO_VIVIENDA */
INSERT INTO dim_tipo_vivienda_resumido VALUES(1, 'Particular');
INSERT INTO dim_tipo_vivienda_resumido VALUES(2, 'Colectiva');

/* VivDV03 */
INSERT INTO dim_material_pisos VALUES (1,'Ceramica, baldosas, piedra laja, madera, moqueta, linoleo, etc.');
INSERT INTO dim_material_pisos VALUES (2,'Arena y portland.');
INSERT INTO dim_material_pisos VALUES (3,'Solo contrapiso sin piso.');
INSERT INTO dim_material_pisos VALUES (4,'Tierra sin piso ni contrapiso.');
INSERT INTO dim_material_pisos VALUES (5,'Otro.');
-- INSERT INTO dim_material_pisos VALUES (8,'No relevado.');

/* VivDV02 */
INSERT INTO dim_material_techos VALUES(1,'Planchada de hormigon o bovedilla con o sin tejas.');
INSERT INTO dim_material_techos VALUES(2,'Liviano con cielo raso.');
INSERT INTO dim_material_techos VALUES(3,'Liviano sin cielo raso.');
INSERT INTO dim_material_techos VALUES(4,'Quincha.');
INSERT INTO dim_material_techos VALUES(5,'Materiales de desecho.');
INSERT INTO dim_material_techos VALUES(6,'Otro.');
-- INSERT INTO dim_material_techos VALUES(8,'No relevado.');

/* VivDV05 */
INSERT INTO dim_origen_de_agua VALUES(1,'OSE o red general.');
INSERT INTO dim_origen_de_agua VALUES(2,'Pozo surgente protegido.');
INSERT INTO dim_origen_de_agua VALUES(3,'Pozo surgente no protegido.');
INSERT INTO dim_origen_de_agua VALUES(4,'Aljibe.');
INSERT INTO dim_origen_de_agua VALUES(5,'Cachimba.');
INSERT INTO dim_origen_de_agua VALUES(6,'Arroyo, rio.');
INSERT INTO dim_origen_de_agua VALUES(7,'Otro.');
-- INSERT INTO dim_origen_de_agua VALUES(8,'No relevado.');

-------------
-- Hogares --
-------------
/* NBI_CANTIDAD */
INSERT INTO dim_cantidad_de_nbi VALUES(0,'Sin NBI');
INSERT INTO dim_cantidad_de_nbi VALUES(1,'Una NBI');
INSERT INTO dim_cantidad_de_nbi VALUES(2,'Dos NBI');
INSERT INTO dim_cantidad_de_nbi VALUES(3,'Tres o más NBI');
-- INSERT INTO dim_cantidad_de_nbi VALUES(8,'No relevado');
-- INSERT INTO dim_cantidad_de_nbi VALUES(9,'No corresponde (Vivienda colectiva)');
-- INSERT INTO dim_cantidad_de_nbi VALUES(5555,'Anonimizado por secreto estadístico');

/* HogHD00 */
-- revisar
--INSERT INTO dim_habitaciones_totales VALUES(1,1);
--INSERT INTO dim_habitaciones_totales VALUES(2,4);
--INSERT INTO dim_habitaciones_totales VALUES(3,6);

/* HogSH01 */
INSERT INTO dim_disponibilidad_de_baño VALUES(1,'Sí, con cisterna');
INSERT INTO dim_disponibilidad_de_baño VALUES(2,'Sí, sin cisterna');
INSERT INTO dim_disponibilidad_de_baño VALUES(3,'No');
-- INSERT INTO dim_disponibilidad_de_baño VALUES(8,'No relevado');

/* HogCE07 */
INSERT INTO dim_telefono_fijo VALUES(1,'Si');
INSERT INTO dim_telefono_fijo VALUES(2,'No');
-- INSERT INTO dim_telefono_fijo VALUES(8,'No relevado');

/* HogCE11 */
INSERT INTO dim_acceso_a_internet VALUES(1,'Si');
INSERT INTO dim_acceso_a_internet VALUES(2,'No');
-- INSERT INTO dim_acceso_a_internet VALUES(8,'No relevado');

/* HogCE08 */
INSERT INTO dim_telefono_celular VALUES(1,'Si');
INSERT INTO dim_telefono_celular VALUES(2,'No');
-- INSERT INTO dim_telefono_celular VALUES(8,'No relevado');

/* HogCE01 */
INSERT INTO dim_calefon_o_caldera VALUES(1,'Si');
INSERT INTO dim_calefon_o_caldera VALUES(2,'No');
-- INSERT INTO dim_calefon_o_caldera VALUES(8,'No relevado');