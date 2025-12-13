-- |===================================================================| 
-- | Tabela: idh_municipal                                             |
-- | Descrição: armazena o histórico IDH dos municípios.               |
-- | Ordem de criação: décima primeira tabela a ser criada.            |                   
-- |===================================================================| 

CREATE TABLE idh_municipal ( id_idh_municipal SERIAL PRIMARY KEY, periodo INT NOT NULL,
municipio_idh_geral NUMERIC (4,3) NOT NULL, idh_municipio_renda NUMERIC (4,3) NOT NULL,
idh_municipio_educacao NUMERIC (4,3) NOT NULL, idh_municipio_longevidade NUMERIC (4,3) NOT NULL,
id_municipio INT NOT NULL, 
FOREIGN KEY (id_municipio) REFERENCES municipio (id_municipio)
);