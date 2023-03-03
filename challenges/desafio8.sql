SELECT
    (ar.nome) artista, (al.title) album
FROM
    artistas ar
        INNER JOIN
    albuns al ON al.artista_id = ar.id
WHERE
    ar.nome = 'Elis Regina'
ORDER BY al.title;
