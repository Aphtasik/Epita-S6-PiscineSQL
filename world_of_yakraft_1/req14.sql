SELECT title FROM character_quests, quest, "character" 
WHERE "character".name = 'Kuro' AND "character".id = character_quests.character_id AND character_quests.quest_id = quest.id
ORDER BY title
