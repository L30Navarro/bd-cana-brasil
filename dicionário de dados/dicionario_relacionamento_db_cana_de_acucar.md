
 
 <h1 style="text-align: center;">Dicionário de Dados - Relacionamentos do db_cana_de_acucar</h1>

| Relacionamento               | Tabela 1 - FK |         Tabela 2 - PK                         | Descrição |
|----------------------|----------------|---------------------------------------------|--------------------------------------------|
| `Cultiva` | municipio        | cana_de_acucar     | Relacionamento que associa cada registro das variáveis relacionadas à produção de cana-de-açúcar ao município correspondente, identificando onde a produção ocorreu.|
| `Inclui` |microrregiao|municipio | Relacionamento que associa o município à sua microrregião correspondente, conforme a divisão territorial do IBGE.|
| `Inclui`      | mesorregiao          | microrregiao      | Relacionamento que agrupa a microrregião à mesorregião a que pertencem, conforme a divisão territorial do IBGE. |
| `Inclui`      | pais         | estado     | Relacionamento que vincula o estado ao país correspondente, de acordo com a divisão territorial oficial adotada.|
| `Inclui`      | estado          | municipio      | Relacionamento que liga o município ao estado correspondente, de acordo com a divisão territorial do IBGE.|
| `Abriga`      | municipio          | populacao     | Relacionamento que vincula cada registro de população ao município em que está associado.  |
| `Registra`      | municipio          | pib     | Relacionamento que vincula o PIB municipal ao respectivo município.  |
| `Registra`      | estado          | pib     | Relacionamento que associa o PIB estadual ao estado correspondente. |
| `Registra`      | pais         | pib     | Relacionamento que vincula o PIB nacional ao país correspondente.  |
| `Registra`      | municipio          | idh_municipal     |Relacionamento que vincula o IDH municipal ao município correspondente.|
| `Registra`      | estado          | idh_estadual     | Relacionamento que associa o IDH estadual ao respectivo estado. |
| `Registra`      | pais         | idh_pais    | Relacionamento que vincula o IDH nacional ao país correspondente. |
| `Possui`      | usina          | usina_historico     | Relacionamento que liga cada usina ao seu histórico cadastral e operacional.| 
| `Abriga`     | municipio| usina| Relacionamento que vincula a usina ao município onde está localizada.  |
| `Abrange`     | bacia_hidrografica| bacia_municipio| Relacionamento que associa cada bacia hidrográfica ao município que ela abrange.  |
| `Abrange`     | municipio| bacia_municipio| Relacionamento que vincula cada município à bacia hidrográfica correspondente. |
