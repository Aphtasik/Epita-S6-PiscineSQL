SELECT name FROM creature, creature_template
WHERE creature_template.id = creature.gid AND creature.id = 6;
