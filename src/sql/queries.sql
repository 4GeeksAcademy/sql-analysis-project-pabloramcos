-- PLEASE READ THIS BEFORE RUNNING THE EXERCISE

-- ⚠️ IMPORTANT: This SQL file may crash due to two common issues: comments and missing semicolons.

-- ✅ Suggestions:
-- 1) Always end each SQL query with a semicolon `;`
-- 2) Ensure comments are well-formed:
--    - Use `--` for single-line comments only
--    - Avoid inline comments after queries
--    - Do not use `/* */` multi-line comments, as they may break execution

-- -----------------------------------------------
-- queries.sql
-- Complete each mission by writing your SQL query
-- directly below the corresponding instruction
-- -----------------------------------------------

SELECT * FROM regions;
SELECT * FROM species;
SELECT * FROM observations;

-- MISSION 1
-- Your query here;
SELECT * FROM observations LIMIT 10;
SELECT DISTINCT region_id FROM observations;
SELECT COUNT (DISTINCT species_id) FROM observations;
SELECT * FROM observations WHERE region_id = 2;
SELECT * FROM observations WHERE observation_date = "1998-08-08";

-- MISSION 2
-- Your query here;

SELECT * FROM observations ORDER BY region_id DESC;
SELECT region_id, COUNT(*) as contador_de_regiones  FROM observations GROUP BY region_id ORDER BY contador_de_regiones DESC;
SELECT species_id, COUNT(species_id) as total_species FROM observations GROUP BY species_id ORDER BY total_species DESC LIMIT 5;
SELECT species_id, COUNT(*) as total_species FROM observations GROUP BY species_id HAVING total_species < 5;
SELECT observer, COUNT(*) as total_observations FROM observations GROUP BY observer ORDER BY total_observations DESC;


-- MISSION 3
-- Your query here;
SELECT region.name, observations.id FROM observations JOIN region ON observations.region_id = region.region_id;

-- MISSION 4
-- Your query here;

Nivel 3 – Relaciones entre tablas (JOIN)
Muestra el nombre de la región (regions.name) para cada observación.
Relaciona observations con regions usando region_id.

Muestra el nombre científico de cada especie registrada (species.scientific_name).
Relaciona observations con species usando species_id.

¿Cuál es la especie más observada por cada región?
Agrupa por región y especie, y ordena por cantidad.

Nivel 4 (opcional) – Manipulación de datos
Este bloque es opcional y solo si deseas practicar operaciones que modifican los datos. (INSERT, UPDATE, DELETE) Como analista, normalmente trabajarás con bases de solo lectura.

Inserta una nueva observación ficticia en la tabla observations.
Asegúrate de incluir todos los campos requeridos por el esquema.

Corrige el nombre científico de una especie con error tipográfico.
Busca primero el nombre incorrecto y luego actualízalo.

Elimina una observación de prueba (usa su id).
Asegúrate de no borrar datos importantes.

-- MISSION 5
-- Your query here;


-- MISSION 6
-- Your query here;


-- MISSION 7
-- Your query here;


-- MISSION 8
-- Your query here;
