--  DROP VIEW IF EXISTS view_artists;

CREATE VIEW view_artists AS
    SELECT name AS artist, birth_date AS birthdate, (SELECT count(title) FROM music WHERE music.art_id = artist.id) AS songs FROM artist
    ORDER BY name;

--  CREATE VIEW view_albums AS
--      SELECT name AS album,
--          (SELECT count(title) FROM music JOIN music_album ON music_album.music_id = music.id) AS songs,
--          (SELECT sum(duration) FROM music WHERE )

--  SELECT * from view_artists;
