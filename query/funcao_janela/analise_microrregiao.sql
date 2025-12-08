-- PARTICIPAÇÃO (%) DA PRODUÇÃO DOS MUNICÍPIOS DO ESTADO DE SÃO PAULO NO VOLUME DE PRODUÇÃO DE CANA-DE-AÇÚCAR
-- NAS MICRORREGIÕES NAS QUAIS ESTÃO INSERIDOS, DURANTE A SAFRA DE 2022:
SELECT microrregiao.microrregiao, municipio.municipio, SUM(volume_produzido) AS produção_de_cana,
ROUND(SUM(volume_produzido) * 100 / SUM(SUM(volume_produzido)) 
OVER (PARTITION BY microrregiao.microrregiao),2) AS percentual_microrregiao
FROM cana_de_acucar
JOIN municipio ON municipio.id_municipio = cana_de_acucar.id_municipio
JOIN microrregiao ON microrregiao.id_microrregiao = municipio.id_microrregiao
WHERE municipio.id_estado = '35' AND cana_de_acucar.safra = '2022' -- "35" é o id do Estado de São Paulo
GROUP BY microrregiao.microrregiao, municipio
ORDER BY microrregiao.microrregiao, percentual_microrregiao DESC


-- PARTICIPAÇÃO (%) DA PRODUÇÃO DOS MUNICÍPIOS DO ESTADO DE SÃO PAULO NO VOLUME DE PRODUÇÃO DE CANA-DE-AÇÚCAR
-- NAS MICRORREGIÕES E NAS MESORREGIÕES NAS QUAIS ESTÃO INSERIDOS, DURANTE A SAFRA DE 2022:
SELECT microrregiao.microrregiao, mesorregiao.mesorregiao, municipio.municipio, 
SUM(volume_produzido) AS produção_de_cana,
ROUND(SUM(volume_produzido) * 100 / SUM(SUM(volume_produzido)) 
OVER (PARTITION BY microrregiao.microrregiao),2) AS percentual_microrregiao,
ROUND(SUM(volume_produzido) * 100 / SUM(SUM(volume_produzido)) 
OVER (PARTITION BY mesorregiao.mesorregiao),2) AS percentual_mesorregiao
FROM cana_de_acucar
JOIN municipio ON municipio.id_municipio = cana_de_acucar.id_municipio
JOIN microrregiao ON microrregiao.id_microrregiao = municipio.id_microrregiao
JOIN mesorregiao ON mesorregiao.id_mesorregiao = microrregiao.id_mesorregiao
JOIN estado ON estado.id_estado = municipio.id_estado
WHERE estado.uf = 'SP'
GROUP BY microrregiao.microrregiao, mesorregiao.mesorregiao, municipio
ORDER BY microrregiao.microrregiao, mesorregiao.mesorregiao, 
percentual_microrregiao DESC, percentual_mesorregiao DESC


-- RANKING DE PERCENTUAL DE CONTRIBUIÇÃO NA PRODUÇÃO DE CANA-DE-AÇÚCAR DOS MUNICÍPIOS DO ESTADO DE SÃO PAULO
-- NAS MICRORREGIÕES NAS QUAIS ESTÃO INSERIDOS, DURANTE A SAFRA 2022:
SELECT microrregiao.microrregiao, municipio.municipio, 
SUM(volume_produzido) AS produção_de_cana,
ROUND(SUM(volume_produzido) * 100 / SUM(SUM(volume_produzido)) 
OVER (PARTITION BY microrregiao.microrregiao),2) AS percentual_microrregiao
FROM cana_de_acucar
JOIN municipio ON municipio.id_municipio = cana_de_acucar.id_municipio
JOIN microrregiao ON microrregiao.id_microrregiao = municipio.id_microrregiao
JOIN estado ON estado.id_estado = municipio.id_estado
WHERE estado.uf = 'SP'AND cana_de_acucar.safra = '2022' 
GROUP BY microrregiao.microrregiao, municipio.municipio
ORDER BY percentual_microrregiao DESC

-- PERCENTUAL (%) DE CONTRIBUIÇÃO DA PRODUÇÃO DE CANA-DE-AÇÚCAR DOS MUNICÍPIOS EM RELAÇÃO À
-- SUA MICRORREGIÃO ORDENADO DA MAIOR PARA A MENOR PRODUÇÃO DESSA CULTURA, DURANTE A SAFRA 2022:
SELECT microrregiao.microrregiao, municipio.municipio, 
SUM(volume_produzido) AS produção_de_cana,
ROUND(SUM(volume_produzido) * 100 / SUM(SUM(volume_produzido)) 
OVER (PARTITION BY microrregiao.microrregiao),2) AS percentual_microrregiao
FROM cana_de_acucar
JOIN municipio ON municipio.id_municipio = cana_de_acucar.id_municipio
JOIN microrregiao ON microrregiao.id_microrregiao = municipio.id_microrregiao
JOIN estado ON estado.id_estado = municipio.id_estado
WHERE estado.uf = 'SP'AND cana_de_acucar.safra = '2022'
GROUP BY microrregiao.microrregiao, municipio.municipio
ORDER BY produção_de_cana DESC


-- PARTICIPAÇÃO (%)  DO VOLUME DE CANA-DE-AÇÚCAR PRODUZIDO NAS MICRORREGIÕES DO ESTADO DE SÃO PAULO  
-- NAS MESORREGIÕES DO MESMO ESTADO E NO PRÓPRIO ESTADO, DURANTE A SAFRA DE 2022:
SELECT microrregiao.microrregiao, mesorregiao.mesorregiao,
SUM(cana_de_acucar.volume_produzido) AS produção_microrregiao_total,
SUM(SUM(cana_de_acucar.volume_produzido)) OVER(PARTITION BY mesorregiao.mesorregiao) AS produção_mesorregiao_total,
SUM(SUM(cana_de_acucar.volume_produzido)) OVER () AS produção_total_estado,
ROUND(SUM(cana_de_acucar.volume_produzido) * 100/
      SUM(SUM(cana_de_acucar.volume_produzido)) OVER(PARTITION BY mesorregiao.mesorregiao),2) AS participação_na_mesorregiao,
ROUND(SUM(cana_de_acucar.volume_produzido) *100 /
      SUM(SUM(cana_de_acucar.volume_produzido)) OVER(), 2) AS participação_no_estado
FROM cana_de_acucar
JOIN municipio ON municipio.id_municipio = cana_de_acucar.id_municipio
JOIN microrregiao ON microrregiao.id_microrregiao = municipio.id_microrregiao
JOIN mesorregiao ON mesorregiao.id_mesorregiao = microrregiao.id_mesorregiao
WHERE municipio.id_estado = '35' AND cana_de_acucar.safra = '2022'
GROUP BY mesorregiao.mesorregiao, microrregiao.microrregiao
ORDER BY mesorregiao.mesorregiao, participação_na_mesorregiao DESC;















