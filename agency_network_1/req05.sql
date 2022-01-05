SELECT regexp_replace(country, '[^A-Za-z]', '', 'g') AS country, regexp_replace(city, '[^A-Za-z]', '', 'g') AS city FROM destination
ORDER BY country, city;
