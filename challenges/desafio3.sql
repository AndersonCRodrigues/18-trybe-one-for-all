SELECT
    (u.usuario) pessoa_usuaria,
    COUNT(h.usuario_id) musicas_ouvidas,
    ROUND(SUM(m.duracao) / 60, 2) total_minutos
FROM
    users u
        INNER JOIN
    historico h ON u.id = h.usuario_id
        INNER JOIN
    musicas m ON h.musica_id = m.id
GROUP BY u.usuario
ORDER BY u.usuario;
