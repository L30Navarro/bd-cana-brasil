
 <h1 style="text-align: center;">Dicionário de Dados - Atributos da tabela municipio</h1>

| Nome da Coluna              | Tipo de dado|   Comprimento | Restrições | Valor Padrão | Descrição|
|----------------------|----------------|------------|------------|------------|------------|
| `id_municipio`      | INTEGER | 4 bytes   | PK| N/D| Código oficial de identificação do município, conforme o identificador numérico atribuído pelo IBGE.|
| `municipio`|VARCHAR|     até 50 caracteres   | NOT NULL| N/D|Nome oficial do município, segundo o registro administrativo do país ao qual pertence.|
| `area_municipio`|NUMERIC| 10,3  | NOT NULL| N/D| Área territorial oficial do município, conforme a definição administrativa do país de origem.|
| `latitude`  | NUMERIC | 9,6 | NOT NULL| N/D| Coordenada geográfica que indica a posição norte–sul do município, conforme o sistema de referência geodésico oficial do país.| 
| `longitude`      | NUMERIC | 9,6 | NOT NULL|N/D|Coordenada geográfica que indica a posição leste–oeste do município, conforme o sistema de referência geodésico oficial do país.|
| `altitude`  | NUMERIC| 12,6  |  NOT NULL| N/D| Altitude oficial do município, medida em relação ao nível médio do mar, conforme o sistema geodésico adotado pelo país de origem.|
| `id_microrregiao`    | INTEGER |   4 bytes  | FK, NOT NULL|N/D| 	Código oficial de identificação da microrregião, conforme o identificador numérico atribuído pelo IBGE.|
| `id_estado`      | INTEGER | 4 bytes   | FK, NOT NULL| N/D| 	Código oficial de identificação do estado, conforme o identificador numérico atribuído pelo IBGE.|

 <h6 style="text-align: center;"> Tamanho de dados em cada registro: 12 bytes </h6>
