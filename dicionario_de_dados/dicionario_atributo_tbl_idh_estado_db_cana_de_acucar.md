
h1 style="text-align: center;">Dicionário de Dados - Atributos da tabela idh_estado</h1>

| Nome da Coluna              | Tipo de dado|  Tamanho | Comprimento | Restrições | Valor Padrão | Descrição|
|----------------------|----------------|--------------|------------|------------|------------|------------|
| `id_idh_estadual`|INTEGER|  | 20 bytes      | PK, NOT NULL| N/D| Número de identificação do registro do idh_estadual gerado automaticamente.|
| `periodo`|INTEGER|  |   20  bytes   | NOT NULL| N/D| Ano de referência do cálculo do Índice de Desenvolvimento Humano Estadual (IDH-E).|
| `estado_idh_geral`|NUMERIC| 4,3 |   20 bytes   | NOT NULL| N/D|Valor do Índice de Desenvolvimento Humano Estadual (IDH-E) geral do estado no ano de referência.|
| `idh_estado_renda`| NUMERIC | 4,3| 20 bytes      | NOT NULL| N/D|Componente “Renda” do Índice de Desenvolvimento Humano Estadual (IDH-E) do estado.|
| `idh_estado_educacao`  | NUMERIC | 4,3  |20 bytes| NOT NULL| N/D| Componente “Educação” do Índice de Desenvolvimento Humano Estadual (IDH-E) do estado.|
| `idh_estado_longevidade` |NUMERIC | 4,3 |20 bytes| NOT NULL | N/D| Componente “Longevidade” do Índice de Desenvolvimento Humano Estadual (IDH-E) do estado.|
| `id_estado`      | INTEGER | |20 bytes   | FK| N/D| 	Código oficial de identificação do estado, conforme o identificador numérico atribuído pelo IBGE.|

 <h6 style="text-align: center;"> Tamanho de dados em cada registro: 140 bytes </h6>
