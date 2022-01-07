DELETE FROM album
WHERE name LIKE '%P%P%' OR name LIKE '%mm%' OR (MOD(length(name), 7) = 0) OR name LIKE '%&%';
