DROP VIEW view_nearest_planet_to_sun;
DROP VIEW view_nb_satellite_per_planet;
DROP VIEW view_average_period;
DROP VIEW view_biggest_entites;

CREATE VIEW view_nearest_planet_to_sun AS
    SELECT planet.name FROM planet, planetary_system
    WHERE upper(planetary_system.star) = 'SUN' AND planetary_system.id = planet.id_system 
    ORDER BY period
    LIMIT 3;

CREATE VIEW view_nb_satellite_per_planet AS
    SELECT planet.name, count(satellite.id_planet) AS "number of satellites" FROM planet
    LEFT OUTER JOIN satellite ON planet.id = satellite.id_planet AND satellite.radius > 499
    GROUP BY planet.name
    ORDER BY "number of satellites", planet.name;

CREATE VIEW view_average_period AS
    SELECT planetary_system.name, round(avg(period), 2) AS average_period FROM planetary_system
    LEFT OUTER JOIN planet ON planet.id_system = planetary_system.id
    GROUP BY planetary_system.name
    ORDER BY average_period, planetary_system.name;

CREATE VIEW view_biggest_entites AS
    SELECT name, radius FROM (SELECT name, radius FROM planet UNION SELECT name, radius FROM satellite) AS rad_names
    ORDER BY radius DESC, name
    LIMIT 10;


SELECT * from view_nearest_planet_to_sun;
SELECT * from view_nb_satellite_per_planet;
SELECT * from view_average_period;
SELECT * from view_biggest_entites;

