-- Volume total de cana-de-açúcar produzido, entre as safras de 2009 a 2022, nas microrregiões 
-- do Eixo Centro-Sul nos estados de São Paulo, Minas Gerais, Mato Grosso, Mato Grosso do Sul, 
-- Goiás e Paraná:
SELECT microrregiao.id_microrregiao, SUM(cana_de_acucar.volume_produzido) AS volume_producao_cana, microrregiao.microrregiao AS microrregiao_centro_sul, estado.uf
FROM cana_de_acucar
JOIN municipio ON municipio.id_municipio = cana_de_acucar.id_municipio
JOIN microrregiao ON microrregiao.id_microrregiao = municipio.id_microrregiao
JOIN estado ON estado.id_estado = municipio.id_estado
WHERE municipio.id_estado IN('35','31','51','50','52','41')
GROUP BY microrregiao.id_microrregiao,microrregiao.microrregiao, estado.uf
ORDER BY volume_producao_cana DESC;





