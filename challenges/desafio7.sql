SELECT DISTINCT
	table1.artist_name AS "artista", 
	table2.album_name AS "album",
	COUNT(table3.artist_id) AS "pessoas_seguidoras"
FROM SpotifyClone.Artists AS table1
INNER JOIN SpotifyClone.Albuns AS table2
ON table1.artist_id = table2.artist_id
INNER JOIN SpotifyClone.Followed_Artists AS table3
ON table1.artist_id = table3.artist_id
GROUP BY table2.album_name, table3.artist_id
ORDER BY COUNT(table3.artist_id) DESC, table1.artist_name, table2.album_name;