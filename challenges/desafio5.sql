SELECT
    (m.title) cancao, COUNT(h.musica_id) reproducoes
FROM
    musicas m
        INNER JOIN
    historico h ON h.musica_id = m.id
GROUP BY h.musica_id
ORDER BY reproducoes DESC , cancao ASC
LIMIT 2;
