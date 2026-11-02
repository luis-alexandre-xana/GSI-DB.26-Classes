CREATE SCHEMA discog;
GO

SELECT * FROM INFORMATION_SCHEMA.SCHEMATA;
/*
 * INFORMATION_SCHEMA é um objecto de sistema que contém os objectos principais do schema
 */

-- Exemplo de criação de uma tabela
-- comando CREATE
-- As tabelas são sempre criadas num SCHEMA, default 'DBO' se omitido no CREATE
CREATE TABLE discog.musica(
    id          INT             NOT NULL,           --> NOT NULL significa preenchimento obrigatório 
    nome        NVARCHAR(255)   NOT NULL,
    duracao     NUMERIC(4)      NULL DEFAULT 0,     --> DEFAULT define um valor de preenchimento qd não for indicado um explicitamente
    original    INT             NULL                --> a ultima linha não tem ,
);

SELECT * FROM INFORMATION_SCHEMA.TABLES t WHERE t.TABLE_NAME = 'musica';
SELECT * FROM INFORMATION_SCHEMA.COLUMNS c WHERE c.TABLE_NAME = 'musica';
