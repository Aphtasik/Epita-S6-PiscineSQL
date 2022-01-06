SELECT name, 
    CASE WHEN count = 1 THEN concat(1, ' book')    
         ELSE concat(count, ' books')
    END AS stocks
FROM (SELECT author AS name, count(title) FROM books GROUP BY author) AS table_count
ORDER BY name;
