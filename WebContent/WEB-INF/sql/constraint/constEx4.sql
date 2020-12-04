-- NOT NULL
-- CHECK
-- UNIQUE
-- POREIGN KEY
-- PRIMARY KEY

CREATE TABLE customer (
    id VARCHAR2(20) CONSTRAINT cutomer_id_uk UNIQUE,
    pwd VARCHAR2(20) CONSTRAINT customer_pwd_nn NOT NULL,
    name VARCHAR2(20) CONSTRAINT cutomer_name_nn NOT NULL,
    phone VARCHAR2(30),
    address VARCHAR2(100)
);

SELECT * FROM user_constraints
WHERE table_name = 'CUSTOMER';

DROP TABLE customer;

-- INSERT, UPDATE, DELETE (DML)은 COMMIT 하거나 DDL, DCL 실행해야 COMMIT됨 !

CREATE TABLE customer (
    id VARCHAR2(20),
    pwd VARCHAR2(20) CONSTRAINT customer_pwd_nn NOT NULL,
    name VARCHAR2(20) CONSTRAINT customer_name_nn NOT NULL,
    phone VARCHAR2(30),
    address VARCHAR2(100),
    CONSTRAINT customer_id_pk PRIMARY KEY (id) -- 같은 값에 대해 PRIMARY KEY, UNIQUE 동시 적용 X : 중복!!!
);

SELECT * FROM all_tables
WHERE owner = 'C##MYDBMS';

SELECT * FROM user_tables;
SELECT * FROM user_sequences;
SELECT * FROM user_indexes;-- PK OR UNIQUE
SELECT * FROM user_views;
