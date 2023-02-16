SELECT
    s.song AS "cancao",
    COUNT(*) AS "reproducoes"

FROM
    SpotifyClone.songs AS s
    INNER JOIN SpotifyClone.reproductions AS r
        ON r.song_id = s.song_id
GROUP BY song
ORDER BY
    reproducoes DESC,  cancao ASC
LIMIT 2;