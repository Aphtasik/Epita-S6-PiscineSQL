SELECT title, name FROM books, authors
WHERE books.release > authors.death_date AND books.author = authors.name
ORDER BY title, name;


