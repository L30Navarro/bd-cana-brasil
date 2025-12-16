

 <h1 style="text-align: center;">Dicionário de Dados - Atributos da tabela cana_de_acucar</h1>

| Nome da Coluna              | Tipo de dado|  Comprimento | Restrições | Valor Padrão | Descrição|
|----------------------|----------------|------------|------------|------------|------------|
| `id_cana_de_acucar` | INTEGER           | 4 bytes  | PK| N/D| Identificador único da cana-de-açúcar, gerado automaticamente por sequence (SERIAL).|
| `safra`|INTEGER|    4 bytes   | NOT NULL| N/D| Ano de referência da safra da produção de cana-de-açúcar, conforme calendário anual utilizado pela Produção Agrícola Municipal (PAM) do IBGE.|
| `volume_producao`|INTEGER |  4 bytes      | NOT NULL| N/D| Volume de produção de cana-de-açúcar (t cana/ha), conforme a metodologia Produção Agrícola Municipal (PAM) do IBGE.|
| `area_plantada`  | INTEGER  |  4 bytes| NOT NULL| N/D| Área total (ha) utilizada para o plantio de cana-de-açúcar no ano de referência, conforme a metodologia da Produção Agrícola Municipal (PAM) do IBGE.| 
| `area_colhida`      | INTEGER | 4 bytes| NOT NULL|N/D| Área total (ha) colhida de cana-de-açúcar no ano de referência, conforme a metolodogia Produção Agrícola Municipal (PAM) do IBGE.||
| `rendimento_medio`  | INTEGER | 4 bytes   |  NOT NULL| N/D| Rendimento médio (kg/ha) da produção de cana-de-açúcar no ano de referência, conforme a metodologia Produção Agrícola Municipal (PAM) do IBGE.|
| `valor_producao`    | INTEGER  |   4 bytes  |  NOT NULL|N/D| Valor monetário total da produção de cana-de-açúcar no ano de referência, conforme a metodologia Produção Agrícola Municipal (PAM) do IBGE.|
| `id_municipio`      | INTEGER  | 4 bytes   | FK, NOT NULL| N/D| Código oficial de identificação do município, conforme o identificador numérico atribuído pelo IBGE.|

 <h6 style="text-align: center;"> Tamanho de dados em cada registro: 32 bytes </h6>
