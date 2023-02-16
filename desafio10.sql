SELECT
    s.song AS "nome",
    COUNT(r.song_id) AS "reproducoes"

FROM SpotifyClone.reproductions AS r
    INNER JOIN SpotifyClone.songs as s
        ON s.song_id = r.song_id
     INNER JOIN SpotifyClone.users as u
        ON u.user_id = r.user_id

WHERE u.plan_id IN (1, 3)
GROUP BY s.song
ORDER BY nome ASC;