SELECT
    al.title album, COUNT(m.id) favoritadas
FROM
    albuns al
        INNER JOIN
    musicas m ON m.album_id = al.id
        INNER JOIN
    favoritas f ON f.musica_id = m.id
GROUP BY al.title
ORDER BY favoritadas DESC , al.title ASC
LIMIT 3;
