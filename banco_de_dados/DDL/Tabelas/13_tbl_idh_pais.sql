-- |===================================================================| 
-- | Tabela: idh_pais                                                  |
-- | Descrição: armazena o histórico IDH dos países.                   |
-- | Ordem de criação: décima terceira tabela a ser criada.            |                   
-- |===================================================================| 

CREATE TABLE idh_pais ( id_idh_pais SERIAL PRIMARY KEY, periodo INT NOT NULL,
pais_idh_geral NUMERIC (4,3) NOT NULL, idh_pais_renda NUMERIC (4,3) NOT NULL,
idh_pais_longevidade NUMERIC (4,3) NOT NULL, idh_pais_educacao NUMERIC (4,3) NOT NULL, 
id_pais INT NOT NULL,
FOREIGN KEY (id_pais) REFERENCES pais (id_pais)
);