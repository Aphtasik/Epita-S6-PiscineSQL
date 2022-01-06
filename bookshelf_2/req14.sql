SELECT name,
    CASE WHEN death_date IS NULL THEN CAST('2000-01-01' - birth_date AS INTEGER)
         WHEN death_date > birth_date THEN CAST(death_date - birth_date AS INTEGER)
    END AS days
FROM authors
WHERE birth_date > '2000-01-01'
ORDER BY name;
