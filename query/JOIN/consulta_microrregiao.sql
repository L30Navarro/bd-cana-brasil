-- Consulta de produção de cana-de-açúcar nas microrregiões produtoras no Brasil
SELECT cana_de_acucar.volume_produzido AS "Volume", microrregiao.id_microrregiao AS "Código da Microrregião", 
cana_de_acucar.area_plantada AS "Área produzida",microrregiao.microrregiao AS "Microrregiões do Brasil"
FROM municipio
INNER JOIN microrregiao ON municipio.id_microrregiao = microrregiao.id_microrregiao
INNER JOIN cana_de_acucar ON municipio.id_municipio = cana_de_acucar.id_municipio;


-- Soma do volume produzido e da área utilizada para plantio de cana-de-açúcar nas microrregiões do estado de São Paulo
SELECT SUM(cana_de_acucar.volume_produzido) AS "Volume de produção", microrregiao.microrregiao AS "Microrregiões de São Paulo",
SUM(cana_de_acucar.area_plantada) AS "Área de produção"
FROM municipio 
INNER JOIN microrregiao ON municipio.id_microrregiao = microrregiao.id_microrregiao
INNER JOIN cana_de_acucar ON municipio.id_municipio = cana_de_acucar.id_municipio
INNER JOIN estado ON estado.id_estado = municipio.id_estado
WHERE estado.id_estado = '35' AND cana_de_acucar.safra = '2022'
GROUP BY microrregiao.microrregiao


