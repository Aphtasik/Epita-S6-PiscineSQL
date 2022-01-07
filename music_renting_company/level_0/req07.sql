DELETE FROM album
WHERE name LIKE '%p%p%' OR name LIKE '%mm%' OR (MOD(length(name), 7) = 0) OR name LIKE '%&%';
