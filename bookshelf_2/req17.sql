SELECT title, author, EXTRACT(YEAR FROM release) AS release_year FROM books
ORDER BY release_year DESC, title, author;
