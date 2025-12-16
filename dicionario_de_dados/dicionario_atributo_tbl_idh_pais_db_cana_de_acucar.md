
<h1 style="text-align: center;">Dicionário de Dados - Atributos da tabela idh_pais</h1>

| Nome da Coluna              | Tipo de dado|  Comprimento | Restrições | Valor Padrão | Descrição|
|----------------------|----------------|-------------|------------|------------|------------|
| `id_idh_pais`|INTEGER|   4 bytes | PK| N/D| Identificador único do IDH do país, gerado automaticamente por sequence (SERIAL).|
| `periodo`|INTEGER| 4 bytes | NOT NULL| N/D| Ano de referência do cálculo do Índice de Desenvolvimento Humano (IDH).|
| `pais_idh_geral`|NUMERIC|  4,3| NOT NULL| N/D|Valor do Índice de Desenvolvimento Humano (IDH) geral por país no ano de referência.|
| `idh_pais_renda`| NUMERIC | 4,3 | NOT NULL| N/D| Componente “Renda” do Índice de Desenvolvimento Humano (IDH) do país.|
| `idh_pais_educacao`  | NUMERIC | 4,3| NOT NULL| N/D| Componente “Educação” do Índice de Desenvolvimento Humano (IDH) do país.|
| `idh_pais_longevidade` |NUMERIC |4,3| NOT NULL | N/D| Componente “Longevidade” do Índice de Desenvolvimento Humano (IDH) do país.|
| `id_pais`      | INTEGER |4 bytes| FK, NOT NULL |N/D| Código oficial de identificação do pais, conforme o identificador numérico atribuído pelo FMI.|

 <h6 style="text-align: center;"> Tamanho de dados em cada registro: 12 bytes </h6>
