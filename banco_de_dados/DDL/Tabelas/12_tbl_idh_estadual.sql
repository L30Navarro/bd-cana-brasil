-- |===================================================================| 
-- | Tabela: idh_estadual                                              |
-- | Descrição: armazena o histórico IDH dos estados.                  |
-- | Ordem de criação: décima segunda tabela a ser criada.             |                   
-- |===================================================================| 

CREATE TABLE idh_estadual ( id_idh_estadual INT PRIMARY KEY, periodo INT NOT NULL,
estado_idh_geral NUMERIC (4,3) NOT NULL, idh_estado_renda NUMERIC (4,3) NOT NULL,
idh_estado_educacao NUMERIC (4,3) NOT NULL, idh_estado_longevidade NUMERIC (4,3) NOT NULL,
id_estado INT NOT NULL,
FOREIGN KEY (id_estado) REFERENCES estado (id_estado)
);