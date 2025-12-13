
<h1 style="text-align: center;">Dicionário de Dados - Atributos da tabela idh_municipal</h1>

| Nome da Coluna              | Tipo de dado|  Tamanho | Comprimento | Restrições | Valor Padrão | Descrição|
|----------------------|----------------|--------------|------------|------------|------------|------------|
| `id_idh_municipal`|SERIAL|  | 20.80 bytes      | PK | N/D| Número de identificação do registro do idh_municipal gerado automaticamente.|
| `periodo`|INTEGER|  |   20  bytes   | NOT NULL| N/D| Ano de referência do cálculo do Índice de Desenvolvimento Humano Municipal (IDHM).|
| `municipio_idh_geral`|NUMERIC| 4,3 |   20 bytes   | NOT NULL| N/D|Valor do Índice de Desenvolvimento Humano Municipal (IDHM) geral do município no ano de referência.|
| `idh_municipio_renda`| NUMERIC | 4,3| 20 bytes      | NOT NULL| N/D|Componente “Renda” do Índice de Desenvolvimento Humano Municipal (IDHM) do município.|
| `idh_municipio_educacao`  | NUMERIC | 4,3  |20 bytes| NOT NULL| N/D| Componente “Educação” do Índice de Desenvolvimento Humano Municipal (IDHM) do município.|
| `idh_municipio_longevidade` |NUMERIC | 4,3 |20 bytes| NOT NULL | N/D| Componente “Longevidade” do Índice de Desenvolvimento Humano Municipal (IDHM) do município.|
| `id_municipio`      | INTEGER | |22 bytes| FK |N/D| Código oficial de identificação do município, conforme o identificador numérico atribuído pelo IBGE.|

 <h6 style="text-align: center;"> Tamanho de dados em cada registro: 142.8 bytes </h6>
