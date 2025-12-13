-- |===================================================================| 
-- | Tabela: usina_historico                                           |
-- | Descrição: armazena o histórico das usinas do setor               |
-- | sucroenergético.                                                  | 
-- | Ordem de criação: oitava tabela a ser criada.                     |                   
-- |===================================================================| 

CREATE TABLE usina_historico ( id_historico SERIAL PRIMARY KEY,
inicio_atividade DATE NOT NULL, fim_atividade DATE NULL, 
situacao_cadastral VARCHAR (20) NOT NULL CHECK (situacao_cadastral IN('Ativo', 'Inativo', 
'Cancelado', 'Suspenso', 'Recuperação Judicial', 'Falência', 'Desativado', 'Em Processo de Venda',
'Em Implementação', 'Reativado', 'Judicializado', 'Judicialização', 'Licenciamento')),
motivo TEXT NULL, id_usina INT NOT NULL,
FOREIGN KEY (id_usina) REFERENCES usina (id_usina)    
);  