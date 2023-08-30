SELECT
	table1.artist_name AS "artista", 
	table2.album_name AS "album"
FROM SpotifyClone.Artists AS table1
INNER JOIN SpotifyClone.Albuns AS table2
ON table1.artist_id = table2.artist_id
WHERE table1.artist_name = 'Elis Regina'
ORDER BY table2.album_name;