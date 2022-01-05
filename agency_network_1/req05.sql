SELECT regexp_replace(country, '[^A-Za-z]', '', 'g'), regexp_replace(city, '[^A-Za-z]', '', 'g') FROM destination
ORDER BY country, city;
