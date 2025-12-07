-- Consulta de produção de cana-de-açúcar nas microrregiões produtoras no Brasil
SELECT 
    cana_de_acucar.volume_produzido AS "Volume", 
    microrregiao.id_microrregiao AS "Código da Microrregião", 
    cana_de_acucar.area_plantada AS "Área produzida",
	microrregiao.microrregiao as "Microrregiões do Brasil"
FROM 
    municipio
INNER JOIN 
    microrregiao 
    ON municipio.id_microrregiao = microrregiao.id_microrregiao
INNER JOIN 
    cana_de_acucar 
    ON municipio.id_municipio = cana_de_acucar.id_municipio;


-- Soma do volume produzido e da área utilizada para plantio de cana-de-açúcar nas microrregiões do estado de São Paulo
select sum(cana_de_acucar.volume_produzido) as "Volume de produção", microrregiao.microrregiao as "Microrregiões de São Paulo",
sum (cana_de_acucar.area_plantada) as "Área de produção"
from municipio 
inner join microrregiao on municipio.id_microrregiao = microrregiao.id_microrregiao
inner join
cana_de_acucar on municipio.id_municipio = cana_de_acucar.id_municipio
inner join
estado on estado.id_estado = municipio.id_estado
where estado.id_estado = '35'
and cana_de_acucar.periodo = '2022'
group by microrregiao.microrregiao


