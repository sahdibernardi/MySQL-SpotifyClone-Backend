SELECT
    u.username AS "usuario",
    IF (MAX(r.reproduction_date) > '2021-01-01 00:00:00', 'Usuário ativo', 'Usuário inativo') AS "status_usuario"
FROM SpotifyClone.users AS u
    INNER JOIN SpotifyClone.reproductions AS r
        ON r.user_id = u.user_id
GROUP BY u.username
ORDER BY usuario ASC;