SELECT table1.username AS "pessoa_usuaria", IF((YEAR(MAX(table2.playback_data)) >= 2021), "Ativa", "Inativa") AS "status_pessoa_usuaria"
FROM SpotifyClone.Users AS table1
INNER JOIN SpotifyClone.Playbacks_History AS table2
ON table1.user_id = table2.user_id
GROUP BY table1.username
ORDER BY table1.username;