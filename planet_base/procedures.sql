--  DROP FUNCTION IF EXISTS space_travel;
--  DROP FUNCTION IF EXISTS list_satellite_inf_750;

CREATE FUNCTION space_travel(origin INT, destination INT, quantity BIGINT)
    RETURNS boolean AS
$$
BEGIN
    IF quantity > (SELECT population FROM planet WHERE id = origin) THEN
        RETURN FALSE;
    END IF;

    UPDATE planet
    SET population = population - quantity
    WHERE id = origin;

    UPDATE planet
    SET population = population + quantity
    WHERE id = destination;

    RETURN TRUE;
END
$$ LANGUAGE plpgsql;


CREATE FUNCTION list_satellite_inf_750(syst INT)
    RETURNS TABLE(satellite VARCHAR(32), planet VARCHAR(32), radius INT) AS
$$
BEGIN
    RETURN QUERY
    SELECT satellite.name, planet.name, satellite.radius FROM satellite, planet
    WHERE planet.id_system = syst AND planet.id = satellite.id_planet AND satellite.radius < 751;
    ORDER BY satellite.name, planet.name, satellite.radius
END
$$ LANGUAGE plpgsql;

--  SELECT space_travel(3, 1, 5);
--  SELECT * FROM list_satellite_inf_750(1);
