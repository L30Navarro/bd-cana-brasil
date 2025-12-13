-- |===================================================================| 
-- | Tabela: cana_de_acucar                                            |
-- | Descrição: armazena a entidade cana-de-açúcar que é objeto        |
-- | de estudos deste banco.                                           | 
-- | Ordem de criação: sexta tabela a ser criada.                      |                   
-- |===================================================================| 

CREATE TABLE cana_de_acucar ( id_cana_de_acucar SERIAL PRIMARY KEY, safra INT NOT NULL,
volume_produzido INT NOT NULL, area_plantada INT NOT NULL, area_colhida INT NOT NULL,
rendimento_medio INT NOT NULL, valor_producao INT NOT NULL, id_municipio INT NOT NULL,
FOREIGN KEY (id_municipio) REFERENCES municipio (id_municipio)
);