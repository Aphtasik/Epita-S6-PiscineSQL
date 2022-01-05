SELECT title FROM books
WHERE (genre = 'Poem' OR genre = 'Fantasy') AND author = 'JK Rowling'
ORDER BY title;
