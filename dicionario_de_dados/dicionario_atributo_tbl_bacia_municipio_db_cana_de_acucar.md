
<h1 style="text-align: center;">Dicionário de Dados - Atributos da tabela associativa bacia_municipio (N:N)</h1>

| Nome da Coluna              | Tipo de dado|  Comprimento | Restrições | Valor Padrão | Descrição|
|----------------------|----------------|------------|------------|------------|------------|
| `id_municipio`|INTEGER|   4 bytes     | PK, FK, NOT NULL| N/D| Código oficial de identificação do município, conforme o identificador numérico atribuído pelo IBGE. Chave estrangeira para a tabela _municipio_|
| `id_bacia_hidrografica`|INTEGER|  4 bytes   | PK, FK, NOT NULL | N/D| Identificador único da bacia hidrográfica, codificado segundo o método de Otto Pfafstetter. Chave estrangeira para a tabela _bacia_hidrografica_|


 <h6 style="text-align: center;"> Tamanho de dados em cada registro: 8 bytes </h6>
