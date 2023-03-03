SELECT
    (u.usuario) pessoa_usuaria,
    IF(YEAR(MAX(h.data_reproducao)) >= 2021,
        'Ativa',
        'Inativa') status_pessoa_usuaria
FROM
    users u
        INNER JOIN
    historico h ON h.usuario_id = u.id
GROUP BY u.usuario
ORDER BY u.usuario;
