-- |===================================================================| 
-- | Tabela: usina                                                     |
-- | Descrição: armazena as usinas do setor sucroenergético            |
-- | para associar com as análises da entidade cana-de-açúcar.         | 
-- | Ordem de criação: sétima tabela a ser criada.                     |                   
-- |===================================================================| 

CREATE TABLE usina ( id_usina SERIAL PRIMARY KEY, grupo_empresarial VARCHAR (70) NULL,
unidade VARCHAR (50) NOT NULL, cnpj CHAR (14) NOT NULL, safra INT NOT NULL,
cap_etanol_anidro INT NOT NULL, cap_etanol_hidratado INT NOT NULL, cap_moagem INT NULL,
latitude NUMERIC (9,6) NOT NULL, Longitude NUMERIC (9,6) NOT NULL, id_municipio INT NOT NULL,
FOREIGN KEY (id_municipio) REFERENCES municipio (id_municipio)
); 