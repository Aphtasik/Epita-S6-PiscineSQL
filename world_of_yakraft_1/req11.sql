SELECT title, name FROM quest, creature_template, creature
WHERE quest.creature_start = creature.id AND creature.gid = creature_template.id 
ORDER BY title, name;
