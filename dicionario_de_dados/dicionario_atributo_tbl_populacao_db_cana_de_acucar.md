
h1 style="text-align: center;">Dicionário de Dados - Atributos da tabela populacao</h1>

| Nome da Coluna              | Tipo de dado|  Tamanho | Comprimento | Restrições | Valor Padrão | Descrição|
|----------------------|----------------|--------------|------------|------------|------------|------------|
| `id_populacao`|INTEGER|  | 20 bytes      | PK, NOT NULL| N/D| Número de identificação da cana_de_acucar gerado automaticamente.|
| `periodo`|INTEGER|  |   20  bytes   | NOT NULL| N/D| Ano de referência da atualização populacional do município, conforme a fonte oficial de dados demográficos do país.|
| `populacao_total`|BIGINT| |   21.10 bytes   | NOT NULL| N/D| Quantidade total de habitantes do município no ano de referência, conforme a fonte oficial de dados demográficos do país.|
| `quantidade_urbana`| BIGINT | | 20.78 bytes      | NOT NULL| N/D| Quantidade de habitantes residentes na área urbana do município no ano de referência, conforme a fonte oficial de dados demográficos do país.|
| `quantidade_rural`  | BIGINT  |  |20.20 bytes| NOT NULL| N/D|Quantidade de habitantes residentes na área rural do município no ano de referência, conforme a fonte oficial de dados demográficos do país.| 
| `id_municipio`      | INTEGER | |22 bytes| FK |N/D| Código oficial de identificação do município, conforme o identificador numérico atribuído pelo IBGE.|


 <h6 style="text-align: center;"> Tamanho de dados em cada registro: 124.08 bytes </h6>
