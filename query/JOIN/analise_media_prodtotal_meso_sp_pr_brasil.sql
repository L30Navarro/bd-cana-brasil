-- Cálculo do volume de produção total e da média da cana-de-açúcar 
-- por estado e mesorregião do Brasil:

SELECT SUM (volume_produzido) AS Produção_total, AVG(volume_produzido) AS Média_produção, mesorregiao.mesorregiao,
estado.estado, cana_de_acucar.safra FROM municipio
INNER JOIN microrregiao ON microrregiao.id_microrregiao = municipio.id_microrregiao
INNER JOIN mesorregiao ON mesorregiao.id_mesorregiao = microrregiao.id_mesorregiao
INNER JOIN estado ON municipio.id_estado = estado.id_estado
INNER JOIN cana_de_acucar ON cana_de_acucar.id_municipio = municipio.id_municipio
GROUP BY mesorregiao,estado, safra
ORDER BY safra;

-- Cálculo do volume de produção total e da média da cana-de-açúcar 
-- do estado de São Paulo em comparação com o estado do Paraná
-- entre as safras de 2020 a 2023:

SELECT SUM (volume_produzido) AS Produção_total, AVG(volume_produzido) AS Média_produção, mesorregiao.mesorregiao,
estado.estado, cana_de_acucar.safra FROM municipio
INNER JOIN microrregiao ON microrregiao.id_microrregiao = municipio.id_microrregiao
INNER JOIN mesorregiao ON mesorregiao.id_mesorregiao = microrregiao.id_mesorregiao
INNER JOIN estado ON municipio.id_estado = estado.id_estado
INNER JOIN cana_de_acucar ON cana_de_acucar.id_municipio = municipio.id_municipio
WHERE estado.estado IN ( 'São Paulo', 'Paraná') AND cana_de_acucar.safra BETWEEN 2020 AND 2023
GROUP BY mesorregiao,estado, safra
ORDER BY safra;