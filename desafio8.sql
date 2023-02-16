SELECT
    art.artist AS "artista",
    a.album AS "album"

FROM SpotifyClone.albuns AS a

    INNER JOIN SpotifyClone.artists as art
        ON art.artist_id = a.artist_id

WHERE art.artist LIKE "Elis Regina"

ORDER BY album ASC;