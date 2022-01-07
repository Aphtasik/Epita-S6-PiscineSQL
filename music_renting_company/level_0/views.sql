DROP VIEW IF EXISTS view_artists;

CREATE VIEW view_artists AS
    SELECT name, birth_date AS birthdate, count(title) FROM artist, music
    WHERE artist.id = music.id
    GROUP BY art_id
    ORDER BY name;

SELECT * from view_artists;
