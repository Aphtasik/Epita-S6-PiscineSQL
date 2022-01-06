--  DROP VIEW view_nearest_planet_to_sun;
--  DROP VIEW view_nb_satellite_per_planet;
--  DROP VIEW view_average_period;
--  DROP VIEW view_biggest_entities;

CREATE VIEW view_nearest_planet_to_sun AS
    SELECT planet.name as planet FROM planet, planetary_system
    WHERE upper(planetary_system.star) = 'SUN' AND planetary_system.id = planet.id_system 
    ORDER BY period
    LIMIT 3;

CREATE VIEW view_nb_satellite_per_planet AS
    SELECT planet.name as planet, count(satellite.id_planet) AS "number of satellites" FROM planet
    LEFT OUTER JOIN satellite ON planet.id = satellite.id_planet AND satellite.radius > 499
    GROUP BY planet.name
    ORDER BY "number of satellites", planet.name;

CREATE VIEW view_average_period AS
    SELECT planetary_system.name as system, coalesce(round(avg(period), 2), 0) AS average_period FROM planetary_system
    LEFT OUTER JOIN planet ON planet.id_system = planetary_system.id
    GROUP BY planetary_system.name
    ORDER BY average_period, planetary_system.name;

CREATE VIEW view_biggest_entities AS
    SELECT type, system, name, radius FROM
        (SELECT 'planet' AS type, planetary_system.name AS system, planet.name, planet.radius FROM planet, planetary_system WHERE planetary_system.id = planet.id_system
        UNION SELECT 'satellite' AS type, planetary_system.name AS system, satellite.name, satellite.radius FROM satellite, planet, planetary_system WHERE planetary_system.id = planet.id_system AND planet.id = satellite.id_planet)
    AS rad_names
    ORDER BY radius DESC, name
    LIMIT 10;

--  SELECT * from view_nearest_planet_to_sun;
--  SELECT * from view_nb_satellite_per_planet;
--  SELECT * from view_average_period;
--  SELECT * from view_biggest_entities;
