

 <h1 style="text-align: center;">Dicionário de Dados - Atributos da tabela cana_de_acucar</h1>

| Nome da Coluna              | Tipo de dado|  Tamanho | Comprimento | Restrições | Valor Padrão | Descrição|
|----------------------|----------------|--------------|------------|------------|------------|------------|
| `id_cana_de_acucar` | SERIAL    |      | 22 bytes  | PK | N/D| Número de identificação da cana_de_acucar gerado automaticamente.
| `safra`|INTEGER| |   20 bytes   | NOT NULL| N/D| Ano de referência da safra da produção de cana-de-açúcar, conforme calendário anual utilizado pela Produção Agrícola Municipal (PAM) do IBGE.|
| `volume_producao`|INTEGER | | 20.61 bytes      | NOT NULL| N/D| Volume de produção de cana-de-açúcar, conforme a metodologia Produção Agrícola Municipal (PAM) do IBGE.|
| `area_plantada`  | INTEGER  |  |20.16 bytes| NOT NULL| N/D| Área total utilizada para o plantio de cana-de-açúcar no ano de referência, conforme a metodologia da Produção Agrícola Municipal (PAM) do IBGE.| 
| `area_colhida`      | INTEGER | |20.17 bytes| NOT NULL|N/D| Área total colhida de cana-de-açúcar no ano de referência, conforme a metolodogia Produção Agrícola Municipal (PAM) do IBGE.||
| `rendimento_medio`  | INTEGER | |21 bytes   |  NOT NULL| N/D| Rendimento médio da produção de cana-de-açúcar no ano de referência, conforme a metodologia Produção Agrícola Municipal (PAM) do IBGE.|
| `valor_producao`    | INTEGER  | |  21.54 bytes  |  NOT NULL|N/D| Valor monetário total da produção de cana-de-açúcar no ano de referência, conforme a metodologia Produção Agrícola Municipal (PAM) do IBGE.|
| `id_municipio`      | INTEGER  | |22 bytes   | FK| N/D| Código oficial de identificação do município, conforme o identificador numérico atribuído pelo IBGE.|

 <h6 style="text-align: center;"> Tamanho de dados em cada registro: 167.48 bytes </h6>
