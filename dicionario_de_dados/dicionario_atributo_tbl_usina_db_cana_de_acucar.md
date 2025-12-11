
h1 style="text-align: center;">Dicionário de Dados - Atributos da tabela usina</h1>

| Nome da Coluna              | Tipo de dado|  Tamanho | Comprimento | Restrições | Valor Padrão | Descrição|
|----------------------|----------------|--------------|------------|------------|------------|------------|
| `id_usina`|INTEGER|  | 20 bytes      | PK, NOT NULL| N/D| Número de identificação da usina gerado automaticamente.|
| `grupo_empresarial`|VARCHAR| 120 |   31.68  bytes   | NOT NULL| N/D| Nome do grupo empresarial que engloba a unidade industrial (usina).|

| `unidade`|VARCHAR| 70 |   28.87 bytes   | NOT NULL| N/D|Nome da unidade industrial (usina) pertencente ao grupo empresarial.|
|
| `cnpj`| CHAR | 14| 26 bytes      | NOT NULL| N/DNúmero de inscrição da unidade industrial no Cadastro Nacional da Pessoa Jurídica (CNPJ).|
.|
| `safra`  | BIGINT  |  |20 bytes| NOT NULL| NAno de referência das informações produtivas da unidade industrial.|
.| 
| `cap_etanol_anidro`      | INTEGER | |19.46 bytes| FK |NCapacidade instalada da unidade para produção de etanol anidro (m3/dia).
G|E.|
| `cap_etanol_hidratado`      | INTEGER | |20 bytes| FK Capacidade instalada da unidade para produção de etanol hidratado (m3/dia).|
IBGE.|
| `cap_moagem`      | INTEGER | |19.02 bytes| FKCapacidade de moagem de cana-de-açúcar da unidade industrial (1000t/ano).|
 IBGE.|
| `latitude`      | NUMERIC | 9,6 |22.90 bytes| FCoordenada geográfica de latitude da localização da unidade industrial.|
o IBGE.|
| `longitude`      | NUMERIC | 9,6 | 23.05 bytes| Coordenada geográfica de longitude da localização da unidade industrial.|
lo IBGE.|
| `id_municipio`      | INTEGER | |22 bytes| FK |N/D| Código oficial de identificação do município, conforme o identificador numérico atribuído pelo IBGE.|

 <h6 style="text-align: center;"> Tamanho de dados em cada registro: 252.98 bytes </h6>
