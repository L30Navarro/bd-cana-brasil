-- |===========================================================================|
-- |Nome do arquivo: script_criacao_do_banco.sql                               |                                                    
-- |Script geral para criar todas as tabelas do banco de dados cana_de_acucar  | 
-- |na sequência correta, respeitando as chaves estrangeiras.                  |
-- |Dessa forma, permite implementar a modelagem desse banco definida          | 
-- |pela regra de negócios adotada.                                            |
-- |========================================================================== |


CREATE TABLE pais ( id_pais INT PRIMARY KEY, pais VARCHAR (80));

CREATE TABLE estado ( id_estado INT PRIMARY KEY, estado VARCHAR (50) NOT NULL, uf CHAR (2), 
id_pais INT NOT NULL,
FOREIGN KEY (id_pais) REFERENCES pais (id_pais)
);

CREATE TABLE mesorregiao ( id_mesorregiao INT PRIMARY KEY, mesorregiao VARCHAR (40),
area_mesorregiao NUMERIC (9,3));

CREATE TABLE microrregiao ( id_microrregiao INT PRIMARY KEY, microrregiao VARCHAR (40),
area_microrregiao NUMERIC (9,3), id_mesorregiao INT NOT NULL,
FOREIGN KEY (id_mesorregiao) REFERENCES mesorregiao (id_mesorregiao)
);

CREATE TABLE municipio ( id_municipio INT PRIMARY KEY, municipio VARCHAR (50), 
area_municipio NUMERIC (10,3) NOT NULL, latitude NUMERIC (9,6) NOT NULL, 
longitude NUMERIC (9,6) NOT NULL, altitude NUMERIC (12,6) NOT NULL, id_microrregiao INT NOT NULL,
id_mesorregiao INT NOT NULL, id_estado INT NOT NULL,
FOREIGN KEY (id_microrregiao) REFERENCES microrregiao (id_microrregiao),
FOREIGN KEY (id_mesorregiao)  REFERENCES mesorregiao (id_mesorregiao),
FOREIGN KEY (id_estado)  REFERENCES estado (id_estado)
);

CREATE TABLE cana_de_acucar ( id_cana_de_acucar SERIAL PRIMARY KEY, safra INT NOT NULL,
volume_produzido INT NOT NULL, area_plantada INT NOT NULL, area_colhida INT NOT NULL,
rendimento_medio INT NOT NULL, valor_producao INT NOT NULL, id_municipio INT NOT NULL,
FOREIGN KEY (id_municipio) REFERENCES municipio (id_municipio)
);

CREATE TABLE usina ( id_usina SERIAL PRIMARY KEY, grupo_empresarial VARCHAR (130) NULL,
unidade VARCHAR (70) NOT NULL, cnpj CHAR (14) NOT NULL, safra INT NOT NULL,
cap_etanol_anidro INT NOT NULL, cap_etanol_hidratado INT NOT NULL, cap_moagem INT NULL,
latitude NUMERIC (9,6) NOT NULL, Longitude NUMERIC (9,6) NOT NULL, id_municipio INT NOT NULL,
FOREIGN KEY (id_municipio) REFERENCES municipio (id_municipio)
);       

CREATE TABLE usina_historico ( id_historico SERIAL PRIMARY KEY,
inicio_atividade DATE NOT NULL, fim_atividade DATE NULL, 
situacao_cadastral VARCHAR (20) NOT NULL CHECK (situacao_cadastral IN('Ativo', 'Inativo', 
'Cancelado', 'Suspenso', 'Recuperação Judicial', 'Falência', 'Desativado', 'Em Processo de Venda',
'Em Implementação', 'Reativado', 'Judicializado', 'Judicialização', 'Licenciamento')),
motivo TEXT NULL, id_usina INT NOT NULL,
FOREIGN KEY (id_usina) REFERENCES usina (id_usina)    
);    

CREATE TABLE populacao ( id_populacao SERIAL PRIMARY KEY, periodo INT NOT NULL, 
populacao_total BIGINT NOT NULL, quantidade_urbana BIGINT NOT NULL, 
quantidade_rural BIGINT NOT NULL, id_municipio INT NOT NULL,
FOREIGN KEY (id_municipio) REFERENCES municipio (id_municipio)
);

CREATE TABLE pib ( id_pib SERIAL PRIMARY KEY,  pib_municipio INT NOT NULL, pib_estado INT NOT NULL,
pib_pais INT NOT NULL, periodo INT NOT NULL, id_municipio INT NOT NULL, id_estado INT NOT NULL,
id_pais INT NOT NULL,
FOREIGN KEY (id_municipio) REFERENCES municipio (id_municipio),
FOREIGN KEY (id_estado) REFERENCES estado (id_estado),
FOREIGN KEY (id_pais) REFERENCES pais (id_pais)
);

CREATE TABLE idh_municipal ( id_idh_municipal SERIAL PRIMARY KEY, periodo INT NOT NULL,
municipio_idh_geral NUMERIC (4,3) NOT NULL, idh_municipio_renda NUMERIC (4,3) NOT NULL,
idh_municipio_educacao NUMERIC (4,3) NOT NULL, idh_municipio_longevidade NUMERIC (4,3) NOT NULL,
id_municipio INT NOT NULL, 
FOREIGN KEY (id_municipio) REFERENCES municipio (id_municipio)
);

CREATE TABLE idh_estadual ( id_idh_estadual INT PRIMARY KEY, periodo INT NOT NULL,
estado_idh_geral NUMERIC (4,3) NOT NULL, idh_estado_renda NUMERIC (4,3) NOT NULL,
idh_estado_educacao NUMERIC (4,3) NOT NULL, idh_estado_longevidade NUMERIC (4,3) NOT NULL,
id_estado INT NOT NULL,
FOREIGN KEY (id_estado) REFERENCES estado (id_estado)
);

CREATE TABLE idh_pais ( id_idh_pais SERIAL PRIMARY KEY,  periodo INT NOT NULL,
pais_idh_geral NUMERIC (4,3) NOT NULL, idh_pais_renda NUMERIC (4,3),
idh_pais_longevidade NUMERIC (4,3), idh_pais_educacao NUMERIC (4,3), id_pais INT NOT NULL,
FOREIGN KEY (id_pais) REFERENCES pais (id_pais)
);

CREATE TABLE bacia_hidrografica ( id_bacia_hidrografica INT PRIMARY KEY,
bacia_hidrografica VARCHAR (80) NOT NULL
);

CREATE TABLE bacia_municipio ( id_municipio INT NOT NULL, 
id_bacia_hidrografica INT NOT NULL,
PRIMARY KEY (id_municipio, id_bacia_hidrografica),
FOREIGN KEY (id_municipio) REFERENCES municipio (id_municipio),
FOREIGN KEY (id_bacia_hidrografica) REFERENCES bacia_hidrografica (id_bacia_hidrografica)
);


