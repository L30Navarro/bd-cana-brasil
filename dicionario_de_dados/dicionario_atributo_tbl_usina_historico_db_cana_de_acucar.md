
<h1 style="text-align: center;">Dicionário de Dados - Atributos da tabela usina_historico</h1>

| Nome da Coluna              | Tipo de dado|  Tamanho | Comprimento | Restrições | Valor Padrão | Descrição|
|----------------------|----------------|--------------|------------|------------|------------|------------|
| `id_historico`|INTEGER|  |      | PK | N/D| Identificador único do registro histórico da usina gerado automaticamente.|
| `inicio_atividade`|DATE|  |      | NOT NULL| N/D| Data de início das atividades da usina.|
| `fim_atividade`|DATE|  |      | NULL| N/D|Data de término das atividades da usina, quando aplicável; NULL se ainda estiver em operação.|
| `situacao_cadastral`| VARCHAR | 20 |      | NOT NULL, CHECK | N/D| Situação cadastral atual ou histórica da usina. Só aceita estes valores pré-definidos pela regra de negócio: Ativo, Inativo, Cancelado, Suspenso, Recuperação Judicial, Falência, Desativado, Em Processo de Venda, Em Implementação, Reativado, Judicializado, Licenciamento. |
| `motivo`| TEXT |  |      | NULL| N/D| Motivo da alteração da situação cadastral da usina.|
| `id_usina`  | INTEGER |   || FK| N/D| Número de identificação da usina gerado automaticamente.|


 <h6 style="text-align: center;"> Tamanho de dados em cada registro: 0 bytes </h6>
