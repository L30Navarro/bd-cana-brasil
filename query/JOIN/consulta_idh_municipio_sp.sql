-- Consulta dos IDHM dos municípios do estado de São Paulo em comparação com o IDH-E do mesmo estado,
-- além do volume total de produção de cana-de-açúcar entre as safras de 2019 a 2022.

SELECT idh_municipal.municipio_idh_geral, municipio.municipio AS municipio, 
idh_estadual.estado_idh_geral, SUM(cana_de_acucar.volume_produzido) AS total_volume_produzido
FROM cana_de_acucar
INNER JOIN municipio ON cana_de_acucar.id_municipio = municipio.id_municipio
INNER JOIN idh_municipal ON municipio.id_municipio = idh_municipal.id_municipio
INNER JOIN estado ON municipio.id_estado = estado.id_estado
INNER JOIN  idh_estadual ON estado.id_estado = idh_estadual.id_estado
WHERE estado.estado = 'São Paulo'
AND cana_de_acucar.safra BETWEEN '2019' AND '2022'
AND idh_municipal.periodo = '1991'
AND idh_estadual.periodo = '1991'
GROUP BY idh_municipal.municipio_idh_geral, municipio.municipio,  idh_estadual.estado_idh_geral;
