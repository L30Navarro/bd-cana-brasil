-- Produção de cana-de-açúcar na mesorregião de Ribeirão Preto no estado de São Paulo, durante a safra de 2022.
SELECT municipio.id_municipio AS "Código do IBGE", municipio.municipio AS "Cidade (SP)", cana_de_acucar.volume_produzido AS "Volume de produção de Cana-de-açúcar (t cana/ha)"
FROM cana_de_acucar
INNER JOIN municipio ON municipio.id_municipio = cana_de_acucar.id_municipio
INNER JOIN estado ON estado.id_estado = municipio.id_estado
INNER JOIN microrregiao ON microrregiao.id_microrregiao = municipio.id_microrregiao
INNER JOIN mesorregiao ON mesorregiao.id_mesorregiao = microrregiao.id_mesorregiao
WHERE estado.uf = 'SP'
AND mesorregiao.mesorregiao = 'Ribeirão Preto'
AND cana_de_acucar.safra = '2022';

-- Quais municípios pertencem a mesorregião de Ribeirão Preto.
SELECT municipio.id_municipio AS "Código_IBGE", municipio.municipio AS "Cidades"
FROM municipio
INNER JOIN microrregiao ON microrregiao.id_microrregiao = municipio.id_microrregiao
INNER JOIN mesorregiao ON mesorregiao.id_mesorregiao = microrregiao.id_mesorregiao
WHERE mesorregiao.mesorregiao = 'Ribeirão Preto';

-- Quantidade total de microrregiões na mesorregião de Ribeirão Preto
SELECT count(DISTINCT microrregiao.microrregiao) AS "Microrregiões da Alta Mogiana", mesorregiao.mesorregiao AS "Região da Alta Mogiana" -- "Como há repetição de período por causa da safra, usei 'Distinct para tirar a repetição. Assim, é possível saber o número exato das microrregiões.'"
FROM microrregiao
INNER JOIN municipio ON municipio.id_microrregiao = microrregiao.id_microrregiao
INNER JOIN mesorregiao ON mesorregiao.id_mesorregiao = microrregiao.id_mesorregiao 
WHERE mesorregiao.mesorregiao = 'Ribeirão Preto'
GROUP BY mesorregiao.mesorregiao;

-- Os cinco maiores municípios produtores de cana-de-açúcar na mesorregião de Ribeirão Preto
SELECT SUM(cana_de_acucar.volume_produzido) AS "Produção de cana de 2009 a 2022", municipio.municipio AS "Cidades da Alta Mogiana"
FROM cana_de_acucar
JOIN municipio ON municipio.id_municipio = cana_de_acucar.id_municipio
JOIN microrregiao ON microrregiao.id_microrregiao = municipio.id_microrregiao
JOIN mesorregiao ON mesorregiao.id_mesorregiao = microrregiao.id_mesorregiao
WHERE mesorregiao.mesorregiao = 'Ribeirão Preto'
GROUP BY municipio.municipio
ORDER BY municipio.municipio LIMIT 5;

-- Os cinco maiores municípios produtores de cana-de-açúcar, que possuem as cinco maiores capacidades de moagem dessa cultura das usinas na mesorregião de Ribeirão Preto.
SELECT SUM(cana_de_acucar.volume_produzido) AS "Produção de cana na safra de 2020 (t cana/ha)", municipio.municipio AS "Cidades da Alta Mogiana", usina.unidade AS "Usina sucroenergética", usina.cap_moagem AS "Capacidade de moagem (1000 t/ano)"
FROM cana_de_acucar
JOIN municipio ON municipio.id_municipio = cana_de_acucar.id_municipio
JOIN microrregiao ON microrregiao.id_microrregiao = municipio.id_microrregiao
JOIN mesorregiao ON mesorregiao.id_mesorregiao = microrregiao.id_mesorregiao
JOIN usina ON usina.id_municipio = municipio.id_municipio
WHERE cana_de_acucar.safra = '2020' AND mesorregiao.mesorregiao = 'Ribeirão Preto'
GROUP BY municipio.municipio, usina.unidade, usina.cap_moagem
ORDER BY SUM(cana_de_acucar.volume_produzido) DESC, usina.cap_moagem DESC
LIMIT 5;

