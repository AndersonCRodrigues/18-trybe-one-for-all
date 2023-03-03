SELECT
    a.nome artista,
    CASE
        WHEN COUNT(f.musica_id) >= 5 THEN 'A'
        WHEN COUNT(f.musica_id) >= 3 THEN 'B'
        WHEN COUNT(f.musica_id) >= 1 THEN 'C'
        ELSE '-'
    END AS ranking
FROM
    artistas a
        INNER JOIN
    albuns al ON al.artista_id = a.id
        INNER JOIN
    musicas m ON m.album_id = al.id
        LEFT JOIN
    favoritas f ON f.musica_id = m.id
GROUP BY a.nome
ORDER BY COUNT(f.musica_id) DESC , artista;

