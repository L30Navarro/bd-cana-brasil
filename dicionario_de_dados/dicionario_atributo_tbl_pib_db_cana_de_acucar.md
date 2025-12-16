

<h1 style="text-align: center;">Dicionário de Dados - Atributos da tabela pib</h1>

| Nome da Coluna              | Tipo de dado| Comprimento | Restrições | Valor Padrão | Descrição|
|----------------------|----------------|------------|------------|------------|------------|
| `id_pib`|INTEGER|   4 bytes     | PK| N/D| Identificador único do PIB, gerado automaticamente por sequence (SERIAL).|
| `pib_municipio`|INTEGER| 4 bytes      | NOT NULL| N/D| Valor do Produto Interno Bruto (PIB) do município no ano de referência, conforme dados econômicos oficias.|
| `pib_estado`|INTEGER|4 bytes       | NOT NULL| N/D|Valor do Produto Interno Bruto (PIB) do estado no ano de referência, conforme dados econômicos oficias.|
| `pib_pais`| INTEGER |4 bytes       | NOT NULL| N/D| Valor do Produto Interno Bruto (PIB) do país no ano de referência, conforme dados econômicos oficias.|
| `periodo`  | INTEGER | 4 bytes  | NOT NULL| N/D| Ano de referência do cálculo dos valores do PIB.|
| `id_municipio` |INTEGER | 4 bytes | FK, NOT NULL| N/D| Código oficial de identificação do município, conforme o identificador numérico atribuído pelo IBGE.|
| `id_estado`      | INTEGER |4 bytes | FK, NOT NULL |N/D| Código oficial de identificação do estado, conforme o identificador numérico atribuído pelo IBGE.|
| `id_pais`      | INTEGER | 4 bytes| FK, NOT NULL |N/D| Código oficial de identificação do país, conforme o identificador numérico atribuído pelo FMI.|

 <h6 style="text-align: center;"> Tamanho de dados em cada registro: 32 bytes </h6>
