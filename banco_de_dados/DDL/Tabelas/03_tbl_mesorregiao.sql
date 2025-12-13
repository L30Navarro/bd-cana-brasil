-- |===================================================================| 
-- | Tabela: mesorregiao                                               |
-- | Descrição: armazena mesorregiões para organização geográfica      |
-- | e suporte a análises a nível região intermediária.                | 
-- | Ordem de criação: terceira tabela a ser criada.                   |                                                               
-- |===================================================================| 

CREATE TABLE mesorregiao ( id_mesorregiao INT PRIMARY KEY, mesorregiao VARCHAR (40),
area_mesorregiao NUMERIC (9,3));