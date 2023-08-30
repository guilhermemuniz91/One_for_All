SELECT DISTINCT
	COUNT(table1.song_id) AS "musicas_no_historico"
FROM SpotifyClone.Playbacks_History AS table1
INNER JOIN SpotifyClone.Users AS table2
ON table1.user_id = table2.user_id
WHERE table2.username = 'Barbara Liskov';