CREATE OR REPLACE FUNCTION duration_to_string(duration INT)
    RETURNS VARCHAR(16) AS
$$
DECLARE
    sec INT;
BEGIN
    sec := MOD(duration, 60);
    RETURN QUERY;

    SELECT concat(duration/60, ':', 
        CASE WHEN sec > 9 THEN sec
             ELSE concat('0', sec)
        END);
END;
$$ language plpgsql;

SELECT duration_to_string(123);
