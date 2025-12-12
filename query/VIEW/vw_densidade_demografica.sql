-- VIEW para retornar a densidade demográfica de cada município, calculada como a razão entre a 
-- população total divida pela área do município. 
CREATE OR REPLACE VIEW vw_densidade_demografica AS
SELECT municipio.municipio, municipio.area_municipio, estado.uf, populacao.populacao_total,
    ROUND(populacao.populacao_total / municipio.area_municipio, 2) AS densidade_demografica
FROM municipio
JOIN estado ON estado.id_estado = municipio.id_estado
JOIN populacao ON populacao.id_municipio = municipio.id_municipio
WHERE municipio.area_municipio > 0;