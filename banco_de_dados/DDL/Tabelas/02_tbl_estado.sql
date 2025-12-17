-- |===================================================================| 
-- | Tabela: estado                                                    |
-- | Descrição: armazena os estados para organização geográfica        |
-- | e suporte a análises a nível estadual.                            | 
-- | Ordem de criação: segunda tabela a ser criada.                    |                                                               
-- |===================================================================| 

CREATE TABLE estado ( id_estado INT PRIMARY KEY, estado VARCHAR (23) NOT NULL, 
uf CHAR (2) NOT NULL, id_pais INT NOT NULL,
FOREIGN KEY (id_pais) REFERENCES pais (id_pais)
);