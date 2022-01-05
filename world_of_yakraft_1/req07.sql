UPDATE "character"
SET level = 15
WHERE name = 'Tilon';

UPDATE "character"
SET level = level + 1
WHERE name = 'Kuro';

UPDATE "character"
SET max_health = (level + 1) * 10
WHERE NOT blessed = 1;

UPDATE "character"
SET max_health = level * 10
WHERE blessed = 1;
