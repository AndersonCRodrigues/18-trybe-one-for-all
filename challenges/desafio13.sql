SELECT
    CASE
        WHEN u.idade <= 30 THEN 'Até 30 anos'
        WHEN u.idade <= 60 THEN 'Entre 31 e 60 anos'
        ELSE 'Maior de 60 anos'
    END AS faixa_etaria,
    COUNT(DISTINCT u.id) total_pessoas_usuarias,
    COUNT(f.usuario_id) total_favoritadas
FROM
    users u
        LEFT JOIN
    favoritas f ON f.usuario_id = u.id
GROUP BY faixa_etaria
ORDER BY faixa_etaria;
