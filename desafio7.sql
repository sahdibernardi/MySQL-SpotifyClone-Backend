SELECT
    art.artist AS "artista",
    a.album AS "album",
    COUNT(f.user_id) AS "seguidores"

FROM SpotifyClone.albuns AS a

    INNER JOIN SpotifyClone.artists as art
        ON art.artist_id = a.artist_id

    INNER JOIN SpotifyClone.followers as f
        ON f.artist_id = a.artist_id

GROUP BY album, artista
ORDER BY seguidores DESC, artista ASC, album ASC;