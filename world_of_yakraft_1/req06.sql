SELECT title FROM quest
WHERE (creature_start = creature_end OR gold > 100) AND level_min > 8 AND level_min < 11
ORDER BY title;
