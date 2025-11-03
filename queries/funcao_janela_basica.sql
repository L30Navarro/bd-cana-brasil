-- Criar um rank de produção de cana-de-açúcar por município
SELECT volume_produzido, municipio, 
       RANK() OVER(ORDER BY volume_produzido DESC) as Ranqueamento 
FROM cana_de_acucar 
JOIN municipio ON municipio.id_municipio = cana_de_acucar.id_municipio 
WHERE cana_de_acucar.safra = 2022

-- Identificar o N-ésimo maior produtor de cana-de-açúcar
SELECT * FROM(SELECT
              volume_produzido,
			  ROW_NUMBER() OVER(ORDER BY volume_produzido DESC) as posicao
FROM cana_de_acucar
) as resultado 
WHERE posicao = 2;