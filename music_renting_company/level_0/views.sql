CREATE VIEW view_artists AS
    SELECT name, birth_date AS birthdate, 
        count(title)
        WHERE artist.id = music.art_id
        GROUP BY name
        AS songs
    FROM artist, music;

SELECT * from view_artists;
