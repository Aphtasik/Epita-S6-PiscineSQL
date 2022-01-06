CREATE FUNCTION add_author(name VARCHAR(64), birth_date DATE, death_date DATE, country VARCHAR(64))
    RETURNS BOOLEAN AS
$$
BEGIN
    INSERT INTO authors
    VALUES (name, birth_date, death_date, country);
    RETURN TRUE;
END
$$ LANGUAGE plpgsql;
