
h1 style="text-align: center;">Dicionário de Dados - Atributos da tabela estado</h1>

| Nome da Coluna              | Tipo de dado|  Tamanho | Comprimento | Restrições | Valor Padrão | Descrição|
|----------------------|----------------|--------------|------------|------------|------------|------------|
| `id_estado`  | INTEGER |  |20 bytes| PK, NOT NULL| N/D| Código oficial de identificação do estado, conforme o identificador numérico atribuído pelo IBGE.|
| `estado`|VARCHAR| 50 |   21.78  bytes   | NOT NULL| N/D|Nome oficial do estado, segundo o registro administrativo do país ao qual pertence.|
| `uf`|CHAR| 2 |   20 bytes   | NOT NULL| N/D|Sigla oficial da UF, segundo o registro administrativo do país ao qual pertence.|
| `id_pais`|INTEGER|  | 20 bytes      | FK| N/D| Código oficial de identificação do pais, onforme o identificador numérico atribuído pelo FMI.|


 <h6 style="text-align: center;"> Tamanho de dados em cada registro: 81.78 bytes </h6>
