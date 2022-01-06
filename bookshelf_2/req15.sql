SELECT author AS name, count(title) AS stocks FROM books
GROUP BY author
ORDER BY author;
