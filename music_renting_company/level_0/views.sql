DROP VIEW IF EXISTS view_artists;

CREATE VIEW view_artists AS
    SELECT name, birth_date AS birthdate, count(title) FROM artist, music
    WHERE artist.id = music.id
    GROUP BY artist.name
    ORDER BY name;

select assistant, sum(price) as price from transaction, can
where transaction.can = can.name
group by assistant
order by price desc
limit 3;

SELECT * from view_artists;
