SELECT users.username AS "pessoa_usuaria", COUNT(ph.song_id) AS "musicas_ouvidas", SUM(ROUND(songs.duration_seconds / 60, 2)) AS "total_minutos"
FROM SpotifyClone.Users AS users
LEFT JOIN SpotifyClone.Playbacks_History AS ph
ON users.user_id = ph.user_id
LEFT JOIN SpotifyClone.Songs AS songs
ON songs.song_id = ph.song_id
GROUP BY users.username
ORDER BY users.username;