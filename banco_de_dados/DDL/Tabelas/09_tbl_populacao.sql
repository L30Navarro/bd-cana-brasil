-- |===================================================================| 
-- | Tabela: populacao                                                 |
-- | Descrição: armazena os dados populacionais dos municípios, segundo|
-- | o IBGE.                                                           | 
-- | Ordem de criação: nova tabela a ser criada.                       |                   
-- |===================================================================| 

CREATE TABLE populacao ( id_populacao SERIAL PRIMARY KEY, periodo INT NOT NULL, 
populacao_total BIGINT NOT NULL, quantidade_urbana BIGINT NOT NULL, 
quantidade_rural BIGINT NOT NULL, id_municipio INT NOT NULL,
FOREIGN KEY (id_municipio) REFERENCES municipio (id_municipio)
);