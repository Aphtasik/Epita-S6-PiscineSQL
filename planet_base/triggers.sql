--  DROP VIEW view_earth_population_evolution;
--  DROP FUNCTION population_table_add;
--  DROP TRIGGER store_earth_population_update;
--  DROP TABLE population_table;


CREATE TABLE population_table (
    id SERIAL,
    date TIMESTAMP,
    "old population" BIGINT,
    "new population" BIGINT
);


CREATE VIEW view_earth_population_evolution AS
    SELECT * FROM population_table
    ORDER BY date;


CREATE FUNCTION population_table_add()
    RETURNS TRIGGER AS
$$
BEGIN
    INSERT INTO population_table
    VALUES (DEFAULT, now(), OLD.population, NEW.population);
    RETURN NULL;
END
$$ LANGUAGE plpgsql;


CREATE TRIGGER store_earth_population_update
AFTER UPDATE ON planet
FOR EACH ROW 
WHEN (OLD.name = 'Earth' AND OLD.population <> NEW.population)
EXECUTE PROCEDURE population_table_add();

--
--  SELECT space_travel(3, 1, 5);
--  SELECT space_travel(3, 1, 5);
--  SELECT space_travel(3, 1, 5);
--  SELECT space_travel(3, 1, 5);
--  SELECT space_travel(3, 1, 5);
--  SELECT * FROM view_earth_population_evolution;
