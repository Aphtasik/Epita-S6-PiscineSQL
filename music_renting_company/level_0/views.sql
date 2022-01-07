DROP VIEW IF EXISTS view_artists;
DROP VIEW IF EXISTS view_albums;
DROP VIEW IF EXISTS view_songs;

CREATE VIEW view_artists AS
    SELECT name AS artist, birth_date AS birthdate, (SELECT count(title) FROM music WHERE music.art_id = artist.id) AS songs FROM artist
    ORDER BY name;

CREATE VIEW view_albums AS
    SELECT name AS album, count(title) AS songs, duration_to_string(CAST(sum(duration) AS INT)) AS duration FROM album
    LEFT JOIN music_album ON music_album.alb_id = album.id
    LEFT JOIN music ON music.id = music_album.music_id
    GROUP BY album.name
    ORDER BY album.name;

CREATE VIEW view_songs AS
    SELECT music.title AS music, artist.name AS artist, duration_to_string(music.duration) AS duration FROM music
    JOIN artist ON music.art_id = artist.id
    ORDER BY music.title, artist.name, duration;

SELECT * from view_artists;
SELECT * from view_albums;
SELECT * from view_songs;
