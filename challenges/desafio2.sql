SELECT COUNT(songs.song_id) AS "cancoes", COUNT(artists.artist_id) AS "artistas", COUNT(albuns.album_id) AS "albuns"
FROM SpotifyClone.Songs AS songs
LEFT JOIN SpotifyClone.Artists AS artists
ON songs.song_id = artists.artist_id
LEFT JOIN SpotifyClone.Albuns AS albuns
ON songs.song_id = albuns.album_id;