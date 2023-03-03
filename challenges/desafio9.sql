SELECT
    COUNT(*) musicas_no_historico
FROM
    historico
        INNER JOIN
    users ON users.id = historico.usuario_id
WHERE
    users.usuario = 'Barbara Liskov';
