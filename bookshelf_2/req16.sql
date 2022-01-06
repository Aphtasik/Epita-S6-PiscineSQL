SELECT title, author, release FROM books
WHERE release NOT BETWEEN '1900-01-01' AND '2000-01-01'
ORDER BY release DESC, title, author;
