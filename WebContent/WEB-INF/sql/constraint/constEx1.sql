-- 제약사항 Constraint
---- 도메인 무결성
-- not null
-- check 지정된 값(범위)만 가능
-- default
---- 개체 무결성 (중복행 X)
-- unique 유일
-- primary key
---- 참조 무결성
-- foreign key(외래키, 참조키)

-- not null
CREATE TABLE const01 (
name VARCHAR2(30) NOT NULL,
age NUMBER DEFAULT 0
);

INSERT INTO const01
VALUES ('abc', 30);
INSERT INTO const01
VALUES ('a', null);
INSERT INTO const01 (name) 
VALUES ('hong');
INSERT INTO const01 (age)
VALUES (50); -- X
INSERT INTO const01
VALUES ('', 30); -- X
INSERT INTO const01
VALUES (' ', 27);

SELECT * FROM const01;

CREATE TABLE customer (
    id VARCHAR(20) NOT NULL,
    pwd VARCHAR(20) NOT NULL,
    name VARCHAR(20) NOT NULL,
    phone VARCHAR(30),
    address VARCHAR(100)
);

INSERT INTO customer
VALUES (NULL, NULL, NULL, '010-111', 'seoul');

SELECT * FROM customer;

-- UNIQUE
CREATE TABLE const02 
(
    email VARCHAR2(20) UNIQUE,
    name VARCHAR2(30)
);

INSERT INTO const02
VALUES ('a', 'b');

INSERT INTO const02
VALUES ('a', 'c');-- X

INSERT INTO const02
VALUES ('c', 'b');

SELECT * FROM const02;

INSERT INTO const02 (name)
VALUES ('c');

DROP TABLE customer;

CREATE TABLE customer(
    id VARCHAR(20) UNIQUE, -- U
    pwd VARCHAR(20) NOT NULL, -- C
    name VARCHAR(20) NOT NULL, -- C
    phone VARCHAR(30),
    address VARCHAR(100)
);

INSERT INTO customer
VALUES ('greentea', '1234', '녹차아가씨', NULL, NULL);

INSERT INTO customer
VALUES ('greentea', '11223344', '그린티', NULL, NULL);-- X

INSERT INTO customer
VALUES (NULL, '4321', '커피', NULL, NULL);

INSERT INTO customer
VALUES (NULL, '111', '그린티', NULL, NULL);

SELECT * FROM customer;

SELECT * FROM user_constraints
WHERE table_name = 'CUSTOMER ';

-- CHECK
CREATE TABLE const03
(
name VARCHAR2(30),
age NUMBER CHECK (age > 0)
);

INSERT INTO const03
VALUES ('a', 30);
INSERT INTO const03
VALUES ('b', 0);-- X
INSERT INTO const03
VALUES ('a', 0.1);-- O
INSERT INTO const03 (name)
VALUES ('c');

SELECT * FROM const03;

COMMIT;

CREATE TABLE emp_second(
    eno NUMBER(4) CONSTRAINT emp_second_eno_pk PRIMARY KEY, -- P
    ename VARCHAR2(10),
    salary NUMBER(7,2) CONSTRAINT emp_second_salary_min CHECK (salary > 0)  -- C
);



INSERT INTO emp_second
VALUES (8000, '윤정화', -200);-- X

SELECT * FROM user_constraints
WHERE table_name = 'EMP_SECOND';


-- TEST : 둘 다 적용되네
CREATE TABLE con0 (
    dno NUMBER(4) CONSTRAINT con0_ck CHECK (dno > 10),
    CONSTRAINT con0_ck2 CHECK(dno > 20)
);

INSERT INTO con0
VALUES (21);

INSERT INTO con0
VALUES (15);

-- 제약사항 여러 개 사용 가능
CREATE TABLE const04
(
email VARCHAR2(30) 
    NOT NULL UNIQUE CHECK(email LIKE '%@%'),
name VARCHAR2(30)
);

INSERT INTO const04
VALUES (NULL, 'a');-- X
INSERT INTO const04
VALUES ('a', 'b');-- X
INSERT INTO const04
VALUES (NULL, 'a');-- X
INSERT INTO const04
VALUES ('a@g', 'c');
INSERT INTO const04
VALUES ('a@g', 'd');-- X

COMMIT;