SELECT
    (ar.nome) artista,
    (al.title) album,
    COUNT(us.artista_id) pessoas_seguidoras
FROM
    artistas ar
        INNER JOIN
    albuns al ON ar.id = al.artista_id
        INNER JOIN
    usuario_segue us ON us.artista_id = ar.id
GROUP BY ar.nome , al.title
ORDER BY COUNT(us.artista_id) DESC, ar.nome, al.title;
