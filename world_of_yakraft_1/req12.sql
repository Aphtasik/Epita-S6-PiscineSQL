SELECT DISTINCT name FROM quest, creature, creature_template
WHERE quest.creature_start = quest.creature_end AND quest.creature_start = creature.id AND creature.gid = creature_template.id
ORDER BY name;
