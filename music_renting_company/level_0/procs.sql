CREATE OR REPLACE FUNCTION duration_to_string(duration INT)
    RETURNS VARCHAR(16) AS
$$
DECLARE
    sec INT;
    minute INT;
BEGIN
    sec := 
        CASE 
            WHEN duration IS NULL THEN 0
            ELSE MOD(duration, 60)
        END;

    minute :=
        CASE 
            WHEN duration IS NULL THEN 0
            ELSE duration/60
        END;

    RETURN concat(minute/60, ':',
    CASE 
        WHEN sec < 0 THEN '00'
        WHEN sec > 9 THEN concat('', sec)
        ELSE concat('0', sec)
    END);
END;
$$ language plpgsql;
