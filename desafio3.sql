SELECT 
    u.username AS "usuario", 
    COUNT(DISTINCT r.song_id) AS "qt_de_musicas_ouvidas", 
    ROUND((SUM(s.duration / 60)), 2) AS "total_minutos" 
FROM 
    SpotifyClone.users AS u
    INNER JOIN SpotifyClone.reproductions as r
        ON u.user_id = r.user_id

    INNER JOIN SpotifyClone.songs as s
        ON r.song_id = s.song_id 
GROUP BY 
    username
ORDER BY 
    usuario ASC;