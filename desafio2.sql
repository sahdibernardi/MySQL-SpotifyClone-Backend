-- A primeira coluna deve exibir a quantidade total de canções.
-- Dê a essa coluna o alias "cancoes".

-- A segunda coluna deve exibir a quantidade total de artistas
-- e deverá ter o alias "artistas".

-- A terceira coluna deve exibir a quantidade de álbuns
-- e deverá ter o alias "albuns".

SELECT
    COUNT(DISTINCT songs.song) AS "cancoes",
    COUNT(DISTINCT artists.artist) AS "artistas",
    COUNT(DISTINCT albuns.album) AS "albuns"
FROM SpotifyClone.songs
	INNER JOIN SpotifyClone.artists
	INNER JOIN SpotifyClone.albuns;