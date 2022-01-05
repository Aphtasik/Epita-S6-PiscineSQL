SELECT
    CASE WHEN acronym LIKE '__[0-9]' THEN REPLACE(acronym, '[0-9]')
    END AS acronym
FROM destination
ORDER BY acronym;

