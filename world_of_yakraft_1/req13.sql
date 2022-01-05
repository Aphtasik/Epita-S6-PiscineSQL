--TODO
SELECT name FROM creature_template, creature
WHERE creature.gid = creature_template.id AND creature_template.id NOT IN (creature.gid)
ORDER BY name;
