SELECT title, name FROM character_quests, quest, "character" 
WHERE "character".id = character_quests.character_id AND character_quests.quest_id = quest.id AND character_quests.complete = 0
ORDER BY title, name;
