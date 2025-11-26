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
SELECT regions.name, observations.id FROM observations JOIN regions ON observations.region_id = regions.id;
SELECT observations.id as identificador, species.scientific_name as nombre_cientifico, observations.observer as observador FROM species JOIN observations ON species.id = observations.species_id;

SELECT observations.id as identificador, COUNT(observations.id) as cantidad_observaciones, species.scientific_name as nombre_cientifico, regions.name as nombre_region 
FROM observations join species join regions on observations.species_id = species.id and observations.region_id = regions.id 
GROUP BY nombre_region, nombre_cientifico ORDER BY cantidad_observaciones DESC;

-- MISSION 4
-- Your query here;
START TRANSACTION;
SAVEPOINT antes_CRUD;
INSERT INTO observations (species_id, region_id, observer, observation_date, latitude, longitude, count) VALUES (35, 2, 'obsr1461807', '1998-01-15', -30.08333, 146.0833, 1);
SELECT * FROM observations ORDER BY id DESC LIMIT 5;
--Al ser id autoincremental se genera automaticamente y a este insert le daria el ultimo id + 1
--DELETE FROM observations where observation_date = "1998-01-15" and species_id = 35 and region_id = 2;
--SELECT * FROM observations;

UPDATE species
SET scientific_name = "Struthidea cinereus"
WHERE id = 222

DELETE FROM observations where id = 2;
ROLLBACK TO antes_CRUD;

