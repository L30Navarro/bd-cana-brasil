-- RECUPERAR O ID_MUNICIPIO E O ID_MICRORREGIAO DO MUNICÍPIO DE BARRETOS:
SELECT id_municipio, id_microrregiao
FROM municipio
WHERE id_municipio = (
SELECT id_municipio
FROM municipio
WHERE municipio = 'Barretos'
)

-- RETORNO DO MAIOR VOLUME DE PRODUÇÃO DE CANA-DE-AÇÚCAR:
SELECT volume_produzido
FROM cana_de_acucar
WHERE volume_produzido = (SELECT MAX (volume_produzido)
FROM cana_de_acucar)


-- RECUPERAR O NOME DA USINA QUE ESTÁ LOCALIZADA EM GOIANÉSIA:
SELECT unidade
FROM usina
WHERE id_municipio =(SELECT id_municipio 
FROM municipio
WHERE municipio = 'Goianésia'
)
