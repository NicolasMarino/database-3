
-- Viviendas
DROP TABLE IF EXISTS fact_viviendas;
DROP TABLE IF EXISTS dim_barrio;
DROP TABLE IF EXISTS dim_tipo_de_vivienda;
DROP TABLE IF EXISTS dim_material_paredes_exteriores;
DROP TABLE IF EXISTS dim_medio_alumbrado_electrico;
DROP TABLE IF EXISTS dim_tipo_vivienda_resumido;
DROP TABLE IF EXISTS dim_material_pisos;
DROP TABLE IF EXISTS dim_material_techos;
DROP TABLE IF EXISTS dim_origen_de_agua;

-- Personas
DROP TABLE IF EXISTS fact_personas;
DROP TABLE IF EXISTS dim_barrio;
DROP TABLE IF EXISTS dim_rango_de_edad; 
DROP TABLE IF EXISTS dim_estado_civil;
DROP TABLE IF EXISTS dim_dificultad_para_ver;
DROP TABLE IF EXISTS dim_nivel_educativo;
DROP TABLE IF EXISTS dim_actividad_economica;
DROP TABLE IF EXISTS dim_dificultad_para_caminar;
DROP TABLE IF EXISTS dim_sabe_leer_y_escribir;

-- Hogares
DROP TABLE IF EXISTS fact_hogares;
DROP TABLE IF EXISTS dim_barrio;
DROP TABLE IF EXISTS dim_habitaciones_totales;
DROP TABLE IF EXISTS dim_disponibilidad_de_baño;
DROP TABLE IF EXISTS dim_calefon_o_caldera;
DROP TABLE IF EXISTS dim_cantidad_de_nbi;
DROP TABLE IF EXISTS dim_telefono_fijo;
DROP TABLE IF EXISTS dim_acceso_a_internet;
DROP TABLE IF EXISTS dim_telefono_celular;

-- Viviendas

CREATE TABLE dim_barrio (
    clave_barrio  INT(12) PRIMARY KEY auto_increment, /* BARRIO85 */
    nombre VARCHAR(50) NOT NULL 
);

CREATE TABLE dim_tipo_de_vivienda ( 
	clave_tipo_de_vivienda int(5) PRIMARY KEY, /* VivVO01 */
	descripcion VARCHAR(55) NOT NULL 
);

CREATE TABLE dim_material_paredes_exteriores (
	clave_material_paredes_exteriores  INT(12) PRIMARY KEY, /* VivDV01 */
	descripcion VARCHAR(70) NOT NULL 
);

CREATE TABLE dim_medio_alumbrado_electrico (
    clave_medio_alumbrado_electrico  INT(12) PRIMARY KEY, /* VivDV07 */
    descripcion VARCHAR(50) NOT NULL
);

CREATE TABLE dim_tipo_vivienda_resumido (
    clave_tipo_vivienda_resumido  INT(12) PRIMARY KEY, /* TIPO_VIVIENDA */
    descripcion VARCHAR(50) NOT NULL
);

CREATE TABLE dim_material_pisos (
    clave_material_pisos  INT(12) PRIMARY KEY, /* VivDV03 */
    descripcion VARCHAR(70) NOT NULL
);

CREATE TABLE dim_material_techos (
    clave_material_techos  INT(12) PRIMARY KEY, /* VivDV02 */
    desciripcion VARCHAR(50) NOT NULL
);

CREATE TABLE dim_origen_de_agua (
    clave_origen_de_agua  INT(12) PRIMARY KEY, /* VivDV05 */
    descripcion VARCHAR(50) NOT NULL
);

-- Hogares

CREATE TABLE dim_habitaciones_totales (
    clave_habitaciones_totales int(1) PRIMARY KEY, /* HogHD00 */
    descripcion int(50) NOT NULL 
);

CREATE TABLE dim_disponibilidad_de_baño (
    clave_disponibilidad_de_baño int(1) PRIMARY KEY, /* HogSH01 */
    descripcion varchar(50) NOT NULL
);

CREATE TABLE dim_calefon_o_caldera (
    clave_calefon_o_caldera int(1) PRIMARY KEY, /* HogCE01 */
    tiene_calefon_o_caldera varchar(50) NOT NULL
);

CREATE TABLE dim_cantidad_de_nbi (
    clave_cantidad_de_nbi  INT(12) PRIMARY KEY, /* NBI_CANTIDAD */
    descripcion varchar(50) NOT NULL
);

CREATE TABLE dim_telefono_fijo (
    clave_telefono_fijo  INT(12) PRIMARY KEY, /* HogCE07 */
    tiene_telefono_fijo varchar(50) NOT NULL
);

CREATE TABLE dim_acceso_a_internet (
    clave_acceso_a_internet  INT(12) PRIMARY KEY, /* HogCE11 */
    tiene_acceso_a_internet varchar(50) NOT NULL
);

CREATE TABLE dim_telefono_celular (
    clave_telefono_celular  INT(12) PRIMARY KEY, /* HogCE08 */
    tiene_telefono_celular varchar(50) NOT NULL
);

-- Personas

CREATE TABLE dim_rango_de_edad (
    clave_rango_de_edad  INT(12) PRIMARY KEY auto_increment, /* PerNa01 */
    rango VARCHAR(50) NOT NULL
);

CREATE TABLE dim_estado_civil(
    clave_estado_civil  INT(12) NOT NULL PRIMARY KEY, /* PerEC04 */
    estado_civil VARCHAR(50) NOT NULL 
);

CREATE TABLE dim_nivel_educativo(
    clave_nivel_educativo  INT(12) NOT NULL PRIMARY KEY, /* niveledu_r */
    nivel_mas_alto_que_curso VARCHAR(50) NOT NULL
);

CREATE TABLE dim_dificultad_para_ver(
    clave_dificultad_para_ver  INT(12) NOT NULL PRIMARY KEY, /* PerDi01 */
    tiene_dificultad VARCHAR(50) NOT NULL
);

CREATE TABLE dim_actividad_economica(
    clave_actividad_economica  INT(12) NOT NULL PRIMARY KEY, /* pobpcoac */
    tiene_dificultad VARCHAR(50) NOT NULL 
);

CREATE TABLE dim_dificultad_para_caminar(
    clave_dificultad_para_caminar INT(1) NOT NULL PRIMARY KEY, /* PerDi04 */
    tiene_dificultad VARCHAR(50) NOT NULL
);

CREATE TABLE dim_sabe_leer_y_escribir(
    clave_sabe_leer_y_escribir INT(1) NOT NULL PRIMARY KEY, /* PerEd08 */
    descripcion VARCHAR(2) NOT NULL
);


-- fact

CREATE TABLE fact_viviendas (
    clave_barrio INT(12) NOT NULL REFERENCES dim_barrio (clave_barrio),
    clave_tipo_de_vivienda INT(12) NOT NULL REFERENCES dim_tipo_de_vivienda(clave_tipo_de_vivienda),
    clave_material_paredes_exteriores INT(12) NOT NULL REFERENCES dim_material_paredes_exteriores (clave_material_paredes_exteriores),
    clave_medio_alumbrado_electrico INT(12) NOT NULL REFERENCES dim_medio_alumbrado_electrico (clave_medio_alumbrado_electrico),
    clave_tipo_vivienda_resumido INT(12) NOT NULL REFERENCES dim_tipo_vivienda_resumido (clave_tipo_vivienda_resumido),
    clave_material_pisos INT(12) NOT NULL REFERENCES dim_material_pisos (clave_material_pisos),
    clave_material_techos INT(12) NOT NULL REFERENCES dim_material_techos (clave_material_techos),
    clave_origen_de_agua INT(12) NOT NULL REFERENCES dim_origen_de_agua (clave_origen_de_agua),
    cantidad_de_viviendas INT(1) default 1, /* Constante 1 */
    cantidad_de_hogares_en_vivienda  INT(12), /* VivHV01_1 */
    cantidad_de_mujeres  INT(12), /* HOGPR03 */
    cantidad_de_hombres  INT(12), /* HOGPR02 */
    cantidad_de_personas INT(12) /* HogPR01 */
);

CREATE TABLE fact_personas (
    clave_barrio INT(11) NOT NULL REFERENCES dim_barrio (clave_barrio),
    clave_rango_de_edad INT(11) NULL REFERENCES dim_rango_de_edad (clave_rango_de_edad) ,
    clave_estado_civil INT(11) NOT NULL REFERENCES dim_estado_civil (clave_estado_civil),
    clave_nivel_educativo INT(11) NOT NULL REFERENCES dim_nivel_educativo (clave_nivel_educativo),
    clave_dificultad_para_ver INT(11) NOT NULL REFERENCES dim_dificultad_para_ver (clave_dificultad_para_ver),
    clave_actividad_economica INT(11) NOT NULL REFERENCES dim_actividad_economica (clave_actividad_economica),
    clave_dificultad_para_caminar INT(11) NOT NULL REFERENCES dim_dificultad_para_caminar (clave_dificultad_para_caminar),
    clave_sabe_leer_y_escribir INT(11) NOT NULL REFERENCES dim_sabe_leer_y_escribir (clave_sabe_leer_y_escribir),
    cantidad_de_personas INT(1) default 1, /* Constante 1 */
    edad INT(11), /* PerNa01 */
    cantidad_de_hijos INT(11) /* PerFM01_r a que hace referencia ignorado (99)*/ 
);

CREATE TABLE fact_hogares (
    clave_barrio INT(11) NOT NULL REFERENCES dim_barrio (clave_barrio),
    clave_habitaciones_totales INT(11) NOT NULL REFERENCES dim_habitaciones_totales (clave_habitaciones_totales),
    clave_disponibilidad_de_baño INT(11) NOT NULL REFERENCES dim_disponibilidad_de_baño (clave_disponibilidad_de_baño),
    clave_calefon_o_caldera INT(11) NOT NULL REFERENCES dim_calefon_o_caldera (clave_calefon_o_caldera),
    clave_cantidad_de_nbi INT(11) NOT NULL REFERENCES dim_cantidad_de_nbi (clave_cantidad_de_nbi),
    clave_telefono_fijo INT(11) NOT NULL REFERENCES dim_telefono_fijo (clave_telefono_fijo),
    clave_acceso_a_internet INT(11) NOT NULL REFERENCES dim_acceso_a_internet (clave_acceso_a_internet),
    clave_telefono_celular INT(11) NOT NULL REFERENCES dim_telefono_celular (clave_telefono_celular),
    cantidad_de_hogares INT(11) default 1, /* Constante 1 */
    cantidad_de_mujeres INT(11), /* HOGPR03 */
    cantidad_de_hombres INT(11), /* HOGPR02 */
    cantidad_de_personas INT(11) /* HogPR01 */
);