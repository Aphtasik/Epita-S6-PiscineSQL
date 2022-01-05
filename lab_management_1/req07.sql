SELECT assistant, sum(price) AS price FROM transaction, can
WHERE transaction.can = can.name
GROUP BY assistant
ORDER BY price DESC
LIMIT 3;
