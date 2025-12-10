

 <h1 style="text-align: center;">Dicionário de Dados - Atributos da tabela cana_de_acucar</h1>

| Nome da Coluna              | Tipo de dado|  Tamanho | Comprimento | Restrições | Valor Padrão | Descrição|
|----------------------|----------------|--------------|------------|------------|------------|------------|
| `id_cana_de_acucar` | Integer      |      | 22 bytes  | PK, NOT NULL| N/D| Número de identificação da cana_de_acucar gerado automaticamente.
| `safra`|Integer| |   20 bytes   | NOT NULL| N/D| Ano de referência da safra da produção de cana-de-açúcar, conforme calendário anual utilizado pela Produção Agrícola Municipal (PAM) do IBGE.|
| `volume_producao`|Integer| | 20.61 bytes      | NOT NULL| N/D| Volume de produção de cana-de-açúcar, conforme a metodologia Produção Agrícola Municipal (PAM) do IBGE.|
| `area_plantada`  | Integer |  |20.16 bytes| NOT NULL| N/D| Área total utilizada para o plantio de cana-de-açúcar no ano de referência, conforme a metodologia da Produção Agrícola Municipal (PAM) do IBGE.| 
| `area_colhida`      | Integer | |20.17 bytes| NOT NULL|N/D| Área total colhida de cana-de-açúcar no ano de referência, conforme a metolodogia Produção Agrícola Municipal (PAM) do IBGE.||
| `rendimento_medio`  | Integer| |21 bytes   |  NOT NULL| N/D| Rendimento médio da produção de cana-de-açúcar no ano de referência, conforme a metodologia Produção Agrícola Municipal (PAM) do IBGE.|
| `valor_producao`    | Integer | |  21.54 bytes  |  NOT NULL|N/D| Valor monetário total da produção de cana-de-açúcar no ano de referência, conforme a metodologia Produção Agrícola Municipal (PAM) do IBGE.|
| `id_municipio`      | Integer | |22 bytes   | FK| N/D| Código oficial de identificação do município, conforme o identificador numérico atribuído pelo IBGE.|

 <h6 style="text-align: center;"> Tamanho de dados em cada registro: 167.48 bytes </h6>
