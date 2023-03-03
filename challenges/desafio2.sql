SELECT
    COUNT(DISTINCT musicas.id) cancoes,
    COUNT(DISTINCT artistas.id) artistas,
    COUNT(DISTINCT albuns.id) albuns
FROM
    albuns
        INNER JOIN
    musicas
        INNER JOIN
    artistas;
