SELECT creature.id FROM creature, creature_template
WHERE creature.gid = creature_template.id AND creature_template.level > 10
ORDER BY creature.id;
