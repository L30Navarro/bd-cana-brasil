
<h1 style="text-align: center;">Dicionário de Dados - Atributos da tabela microrregiao</h1>

| Nome da Coluna              | Tipo de dado|  Tamanho | Comprimento | Restrições | Valor Padrão | Descrição|
|----------------------|----------------|--------------|------------|------------|------------|------------|
| `id_microrregiao`      | INTEGER | |22 bytes   | PK, NOT NULL| N/D| Código oficial de identificação da microrregião, conforme o identificador numérico atribuído pelo IBGE.|
| `microrregiao`|VARCHAR| 40 |   23.80  bytes   | NOT NULL| N/D|Nome oficial da microrregião, segundo o registro administrativo do país ao qual pertence.|
| `area_microrregião`|NUMERIC| 9,3 | 22.67 bytes      | NOT NULL| N/D| Área territorial oficial da microrregião, conforme a definição administrativa do país de origem.|
| `id_mesorregiao`  | INTEGER |  |20 bytes| FK| N/D| Código oficial de identificação da mesorregião, conforme o identificador numérico atribuído pelo IBGE.| 


 <h6 style="text-align: center;"> Tamanho de dados em cada registro: 87.47 bytes </h6>
