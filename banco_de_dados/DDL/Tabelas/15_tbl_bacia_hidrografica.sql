-- |===================================================================| 
-- | Tabela: bacia_municipio                                           |
-- | Descrição: tabela associativa que armazena as chaves primárias e  |
-- | das tabelas municipio e bacia_hidrografica                        |
-- | Ordem de criação: décima quinta a ser criada.                     |                   
-- |===================================================================|

CREATE TABLE bacia_municipio ( id_municipio INT NOT NULL, 
id_bacia_hidrografica INT NOT NULL,
PRIMARY KEY (id_municipio, id_bacia_hidrografica),
FOREIGN KEY (id_municipio) REFERENCES municipio (id_municipio),
FOREIGN KEY (id_bacia_hidrografica) REFERENCES bacia_hidrografica (id_bacia_hidrografica)
);