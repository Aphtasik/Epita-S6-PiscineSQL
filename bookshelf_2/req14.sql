SELECT name,
    CASE WHEN death_date IS NULL THEN CAST('2000-01-01' - birth_date AS INTEGER)
         ELSE CAST(death_date - birth_date AS INTEGER) 
    END AS days
FROM authors
ORDER BY name;
