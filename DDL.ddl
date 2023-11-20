-- Gerado por Oracle SQL Developer Data Modeler 23.1.0.087.0806
--   em:        2023-05-17 22:30:31 BRT
--   site:      Oracle Database 11g
--   tipo:      Oracle Database 11g



-- predefined type, no DDL - MDSYS.SDO_GEOMETRY

-- predefined type, no DDL - XMLTYPE

CREATE TABLE fabrica (
    id_unidade INTEGER NOT NULL,
    nm_unidade VARCHAR2(30) NOT NULL,
    nr_cnpj    INTEGER NOT NULL
);

ALTER TABLE fabrica ADD CONSTRAINT fabrica_pk PRIMARY KEY ( id_unidade );

CREATE TABLE fornecedor (
    id_fornecedor INTEGER NOT NULL,
    nm_fornecedor VARCHAR2(30) NOT NULL,
    nr_cnpj       INTEGER NOT NULL,
    cert_pas      VARCHAR2(10) NOT NULL
);

ALTER TABLE fornecedor ADD CONSTRAINT fornecedor_pk PRIMARY KEY ( id_fornecedor );

CREATE TABLE insumo (
    id_insumo INTEGER NOT NULL,
    nm_insumo VARCHAR2(30) NOT NULL
);

ALTER TABLE insumo ADD CONSTRAINT insumo_pk PRIMARY KEY ( id_insumo );

CREATE TABLE monitoramento (
    id_monitoramento         INTEGER NOT NULL,
    vl_percentual_pas        INTEGER NOT NULL,
    vl_percentual_fa         INTEGER NOT NULL,
    nr_lote                  INTEGER NOT NULL,
    nm_estado                VARCHAR2(30) NOT NULL,
    nm_regiao                VARCHAR2(30) NOT NULL,
    produto_id_produto       INTEGER NOT NULL,
    fabrica_id_unidade       INTEGER NOT NULL,
    fornecedor_id_fornecedor INTEGER NOT NULL,
    insumo_id_insumo         INTEGER NOT NULL
);

ALTER TABLE monitoramento ADD CONSTRAINT monitoramento_pk PRIMARY KEY ( id_monitoramento );

CREATE TABLE produto (
    id_produto INTEGER NOT NULL,
    nm_produto VARCHAR2(30) NOT NULL
);

ALTER TABLE produto ADD CONSTRAINT produto_pk PRIMARY KEY ( id_produto );

ALTER TABLE monitoramento
    ADD CONSTRAINT monitoramento_fabrica_fk FOREIGN KEY ( fabrica_id_unidade )
        REFERENCES fabrica ( id_unidade );

ALTER TABLE monitoramento
    ADD CONSTRAINT monitoramento_fornecedor_fk FOREIGN KEY ( fornecedor_id_fornecedor )
        REFERENCES fornecedor ( id_fornecedor );

ALTER TABLE monitoramento
    ADD CONSTRAINT monitoramento_insumo_fk FOREIGN KEY ( insumo_id_insumo )
        REFERENCES insumo ( id_insumo );

ALTER TABLE monitoramento
    ADD CONSTRAINT monitoramento_produto_fk FOREIGN KEY ( produto_id_produto )
        REFERENCES produto ( id_produto );



-- Relatório do Resumo do Oracle SQL Developer Data Modeler: 
-- 
-- CREATE TABLE                             5
-- CREATE INDEX                             0
-- ALTER TABLE                              9
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE MATERIALIZED VIEW LOG             0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0
