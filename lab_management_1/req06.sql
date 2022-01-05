SELECT login FROM assistant
WHERE login NOT IN (SELECT assistant FROM transaction)
ORDER BY login;
