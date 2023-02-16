SELECT
    COUNT(DISTINCT song_id) AS "quantidade_musicas_no_historico"

-- tables: user and reproduction that have in common the user_id
FROM SpotifyClone.reproductions AS r
    INNER JOIN SpotifyClone.users as u
        ON u.user_id = r.user_id

WHERE u.username LIKE "Barbara Liskov";