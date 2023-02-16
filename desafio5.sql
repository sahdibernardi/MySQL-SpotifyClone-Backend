SELECT
    s.song AS "cancao",
    COUNT(*) AS "reproducoes"

FROM
    SpotifyClone.songs AS s
-- tabelas usadas: songs, reproductions
    INNER JOIN SpotifyClone.reproductions AS r
        ON r.song_id = s.song_id

-- ordenado em ordem decrescente, baseando-se no número de reproduções. Em caso de empate, ordene os resultados pelo nome da canção em ordem alfabética.
GROUP BY song
ORDER BY
    reproducoes DESC,  cancao ASC

-- Queremos apenas o top 2 de músicas mais tocadas.
LIMIT 2;