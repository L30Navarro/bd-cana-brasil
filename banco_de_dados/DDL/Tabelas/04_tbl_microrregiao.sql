-- |===================================================================| 
-- | Tabela: microrregiao                                              |
-- | Descrição: armazena microrregiões para organização geográfica     |
-- | e suporte a análises a nível região imediata.                     | 
-- | Ordem de criação: quarta tabela a ser criada.                     |                                                               
-- |===================================================================| 

CREATE TABLE microrregiao ( id_microrregiao INT PRIMARY KEY, microrregiao VARCHAR (37) NOT NULL,
area_microrregiao NUMERIC (9,3) NOT NULL, id_mesorregiao INT NOT NULL,
FOREIGN KEY (id_mesorregiao) REFERENCES mesorregiao (id_mesorregiao)
);