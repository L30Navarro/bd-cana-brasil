-- |===================================================================| 
-- | Tabela: mesorregiao                                               |
-- | Descrição: armazena mesorregiões para organização geográfica      |
-- | e suporte a análises a nível região intermediária.                | 
-- | Ordem de criação: terceira tabela a ser criada.                   |                                                               
-- |===================================================================| 

CREATE TABLE mesorregiao ( id_mesorregiao INT PRIMARY KEY, mesorregiao VARCHAR (35) NOT NULL,
area_mesorregiao NUMERIC (9,3) NOT NULL);