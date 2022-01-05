SELECT
    CASE
        WHEN length(acronym) < 4 THEN substring(acronym from '^..') || 0 || substring(acronym from '.$')
    END
FROM destination
ORDER BY acronym;

