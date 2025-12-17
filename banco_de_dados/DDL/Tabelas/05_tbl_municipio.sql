-- |===================================================================| 
-- | Tabela: municipio                                                 |
-- | Descrição: armazena os municípios para organização geográfica     |
-- | e suporte a análises a nível local.                               | 
-- | Ordem de criação: quinta tabela a ser criada.                     |                                                               
-- |===================================================================| 

CREATE TABLE municipio ( id_municipio INT PRIMARY KEY, municipio VARCHAR (35) NOT NULL, 
area_municipio NUMERIC (10,3) NOT NULL, latitude NUMERIC (9,6) NOT NULL, 
longitude NUMERIC (9,6) NOT NULL, altitude NUMERIC (12,6) NOT NULL, id_microrregiao INT NOT NULL,
id_mesorregiao INT NOT NULL, id_estado INT NOT NULL,
FOREIGN KEY (id_microrregiao) REFERENCES microrregiao (id_microrregiao),
FOREIGN KEY (id_mesorregiao)  REFERENCES mesorregiao (id_mesorregiao),
FOREIGN KEY (id_estado)  REFERENCES estado (id_estado)
);
