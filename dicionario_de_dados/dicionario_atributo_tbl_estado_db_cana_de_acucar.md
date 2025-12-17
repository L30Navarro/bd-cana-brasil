
<h1 style="text-align: center;">Dicionário de Dados - Atributos da tabela estado</h1>

| Nome da Coluna              | Tipo de dado|  Comprimento | Restrições | Valor Padrão | Descrição|
|----------------------|----------------|-------------|------------|------------|------------|
| `id_estado`  | INTEGER   |4 bytes| PK| N/D| Código oficial de identificação único do estado, conforme o identificador numérico atribuído pelo IBGE.|
| `estado`|VARCHAR|   até 23 caracteres    | NOT NULL| N/D|Nome oficial do estado, segundo o registro administrativo do país ao qual pertence.|
| `uf`|CHAR|   2 caracteres   | NOT NULL| N/D|Sigla oficial da UF, segundo o registro administrativo do país ao qual pertence.|
| `id_pais`|INTEGER|   4 bytes      | FK, NOT NULL| N/D| Código oficial de identificação do pais, onforme o identificador numérico atribuído pelo FMI.|


 <h6 style="text-align: center;"> Tamanho de dados em cada registro: 8 bytes </h6>
