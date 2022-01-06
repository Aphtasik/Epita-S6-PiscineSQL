SELECT books.title, books.author FROM books, (SELECT author, min(release) FROM books GROUP BY author) AS table_date
WHERE books.author = table_date.author AND table_date.min = books.release
ORDER BY title, author;
