SELECT count(*) FROM transaction
GROUP BY assistant
HAVING assistant = 'julien.clement';
