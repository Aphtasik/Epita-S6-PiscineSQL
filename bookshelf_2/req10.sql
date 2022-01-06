SELECT title, author FROM books, authors
WHERE genre = 'Poem' AND authors.country = 'France' AND authors.name = books.author
ORDER BY title, author;
