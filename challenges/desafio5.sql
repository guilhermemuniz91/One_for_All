SELECT table1.song_name AS "cancao", COUNT(DISTINCT table2.user_id) AS "reproducoes" 
FROM SpotifyClone.Songs AS table1
INNER JOIN SpotifyClone.Playbacks_History AS table2
ON table1.song_id = table2.song_id
GROUP BY table1.song_name
ORDER BY COUNT(table2.user_id) DESC, song_name
LIMIT 2;