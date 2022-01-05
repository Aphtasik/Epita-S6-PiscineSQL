SELECT login FROM assistant, transaction
WHERE assistant NOT IN transaction.assistant;
