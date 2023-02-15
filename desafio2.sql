SELECT
    COUNT(DISTINCT songs.song) AS "cancoes",
    COUNT(DISTINCT artists.artist) AS "artistas",
    COUNT(DISTINCT albuns.album) AS "albuns"
FROM SpotifyClone.songs
	INNER JOIN SpotifyClone.artists
	INNER JOIN SpotifyClone.albuns;