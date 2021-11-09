/* BARRIO85 */
INSERT INTO dim_barrio VALUES(1,'Palermo');
INSERT INTO dim_barrio VALUES(2,'Ciudad Vieja');
INSERT INTO dim_barrio VALUES(3,'Punta Carretas');
INSERT INTO dim_barrio VALUES(4,'Pocitos');
INSERT INTO dim_barrio VALUES(5,'Barrio Sur');
INSERT INTO dim_barrio VALUES(6,'Maronas');
INSERT INTO dim_barrio VALUES(7,'Prado');
INSERT INTO dim_barrio VALUES(8,'Aguada');
INSERT INTO dim_barrio VALUES(9,'Atahualpa');
INSERT INTO dim_barrio VALUES(10,'Belvedere');
INSERT INTO dim_barrio VALUES(11,'Sayago');

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
--INSERT INTO dim_material_paredes_exteriores VALUES(8,'No relevado');

/* VivDV07 */
INSERT INTO dim_medio_alumbrado_electrico VALUES(1,'UTE o red general.');
INSERT INTO dim_medio_alumbrado_electrico VALUES(2,'Cargador eolico de bateria.');
INSERT INTO dim_medio_alumbrado_electrico VALUES(3,'Cargador solar de bateria.');
INSERT INTO dim_medio_alumbrado_electrico VALUES(4,'Grupo electrogeno propio.');
INSERT INTO dim_medio_alumbrado_electrico VALUES(5,'Otro electrico.');
INSERT INTO dim_medio_alumbrado_electrico VALUES(6,'No tiene.');
--INSERT INTO dim_medio_alumbrado_electrico VALUES(8,'No relevado.');

/* TIPO_VIVIENDA */
INSERT INTO dim_tipo_vivienda_resumido VALUES(1, 'Particular');
INSERT INTO dim_tipo_vivienda_resumido VALUES(2, 'Colectiva');

/* VivDV03 */
INSERT INTO dim_material_pisos VALUES (1,'Ceramica, baldosas, piedra laja, madera, moqueta, linoleo, etc.');
INSERT INTO dim_material_pisos VALUES (2,'Arena y portland.');
INSERT INTO dim_material_pisos VALUES (3,'Solo contrapiso sin piso.');
INSERT INTO dim_material_pisos VALUES (4,'Tierra sin piso ni contrapiso.');
INSERT INTO dim_material_pisos VALUES (5,'Otro.');
--INSERT INTO dim_material_pisos VALUES (8,'No relevado.');

/* VivDV02 */
INSERT INTO dim_material_techos VALUES(1,'Planchada de hormigon o bovedilla con o sin tejas.');
INSERT INTO dim_material_techos VALUES(2,'Liviano con cielo raso.');
INSERT INTO dim_material_techos VALUES(3,'Liviano sin cielo raso.');
INSERT INTO dim_material_techos VALUES(4,'Quincha.');
INSERT INTO dim_material_techos VALUES(5,'Materiales de desecho.');
INSERT INTO dim_material_techos VALUES(6,'Otro.');
--INSERT INTO dim_material_techos VALUES(8,'No relevado.');

/* VivDV05 */
INSERT INTO dim_origen_de_agua VALUES(1,'OSE o red general.');
INSERT INTO dim_origen_de_agua VALUES(2,'Pozo surgente protegido.');
INSERT INTO dim_origen_de_agua VALUES(3,'Pozo surgente no protegido.');
INSERT INTO dim_origen_de_agua VALUES(4,'Aljibe.');
INSERT INTO dim_origen_de_agua VALUES(5,'Cachimba.');
INSERT INTO dim_origen_de_agua VALUES(6,'Arroyo, rio.');
INSERT INTO dim_origen_de_agua VALUES(7,'Otro.');
INSERT INTO dim_origen_de_agua VALUES(8,'No relevado.');
