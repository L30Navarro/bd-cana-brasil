
<h1 style="text-align: center;">Dicionário de Dados - Atributos da tabela mesorregiao</h1>

| Nome da Coluna              | Tipo de dado| Comprimento | Restrições | Valor Padrão | Descrição|
|----------------------|----------------|------------|------------|------------|------------|
| `id_mesorregiao`  | INTEGER |  4 bytes| PK| N/D| Código oficial de identificação único da mesorregião, conforme o identificador numérico atribuído pelo IBGE.| 
| `mesorregiao`|VARCHAR|     até 35 caracteres   | NOT NULL| N/D|Nome oficial da mesorregião, segundo o registro administrativo do país ao qual pertence.|
| `area_microrregião`|NUMERIC| 9,3  | NOT NULL| N/D| Área territorial oficial da mesorregião, conforme a definição administrativa do país de origem.|


 <h6 style="text-align: center;"> Tamanho de dados em cada registro: 4 bytes </h6>
