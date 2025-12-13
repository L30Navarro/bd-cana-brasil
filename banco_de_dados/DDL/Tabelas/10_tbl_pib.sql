-- |===================================================================| 
-- | Tabela: pib                                                       |
-- | Descrição: armazena o histórico do pib a nível municipal, estadual|
-- | e nacional.                                                       | 
-- | Ordem de criação: décima tabela a ser criada.                     |                   
-- |===================================================================| 

CREATE TABLE pib ( id_pib SERIAL PRIMARY KEY,  pib_municipio INT NOT NULL, pib_estado INT NOT NULL,
pib_pais INT NOT NULL, periodo INT NOT NULL, id_municipio INT NOT NULL, id_estado INT NOT NULL,
id_pais INT NOT NULL,
FOREIGN KEY (id_municipio) REFERENCES municipio (id_municipio),
FOREIGN KEY (id_estado) REFERENCES estado (id_estado),
FOREIGN KEY (id_pais) REFERENCES pais (id_pais)
);
