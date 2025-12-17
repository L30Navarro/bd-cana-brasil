
<h1 style="text-align: center;">Dicionário de Dados - Atributos da tabela usina</h1>

| Nome da Coluna              | Tipo de dado|  Comprimento | Restrições | Valor Padrão | Descrição|
|----------------------|----------------|-------------|------------|------------|------------|
| `id_usina`|INTEGER|   4 bytes      | PK| N/D| Identificador único da usina, gerado automaticamente por sequence (SERIAL).|
| `grupo_empresarial`|VARCHAR|   até 70 caracteres   | NOT NULL| N/D| Nome do grupo empresarial que engloba a unidade industrial (usina).|
| `unidade`|VARCHAR|    até 50 caracteres   | NOT NULL| N/D|Nome da unidade industrial (usina) pertencente ao grupo empresarial.|
| `cnpj`| CHAR | 14 caracteres      | NOT NULL| N/D| Número de inscrição da unidade industrial no Cadastro Nacional da Pessoa Jurídica (CNPJ).|
| `safra`  | INTEGER |  4 bytes| NOT NULL| N/D| Ano de referência das informações produtivas da unidade industrial.|
| `cap_etanol_anidro`      | INTEGER | 4 bytes| NOT NULL | N/D| Capacidade instalada da unidade para produção de etanol anidro (m3/dia).|
| `cap_etanol_hidratado`      | INTEGER | 4 bytes| NOT NULL| N/D|  Capacidade instalada da unidade para produção de etanol hidratado (m3/dia).|
| `cap_moagem`      | INTEGER | 4 bytes| NOT NULL | N/D| Capacidade de moagem de cana-de-açúcar da unidade industrial (1000t/ano).|
| `latitude`      | NUMERIC | 9,6 | NOT NULL | N/D| Coordenada geográfica de latitude da localização da unidade industrial.|
| `longitude`      | NUMERIC | 9,6 | NOT NULL| N/D| Coordenada geográfica de longitude da localização da unidade industrial.|
| `id_municipio`      | INTEGER | 4 bytes| FK, NOT NULL |N/D| Código oficial de identificação do município, conforme o identificador numérico atribuído pelo IBGE.|

 <h6 style="text-align: center;"> Tamanho de dados em cada registro: 24 bytes </h6>
