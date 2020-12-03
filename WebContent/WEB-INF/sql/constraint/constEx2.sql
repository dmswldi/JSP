-- KEY

-- PRIMARY KEY
-- 변하지 않는 값일수록 좋다! 
--  -> KEY COLUMN 새로 만들기 추천
--     ex) 자동으로 늘어나는 정수

CREATE TABLE const05 (
    email VARCHAR(30),
    name VARCHAR(30),
    ssn VARCHAR(30),
    address VARCHAR(30),
    birth DATE
);

CREATE TABLE const06 (
    id NUMBER PRIMARY KEY,
    name VARCHAR2(30)
);

INSERT INTO const06
VALUES (1, 'a');
INSERT INTO const06
VALUES (NULL, 'b');-- X
INSERT INTO const06
VALUES (1, 'b');-- X

CREATE TABLE const07_emp
AS
SELECT * FROM employee;
SELECT eno, ename, dno FROM const07_emp;
INSERT INTO const07_emp (eno, ename, dno)
VALUES (8787, 'ABC', 50);
COMMIT;

CREATE TABLE const08_dep
(
dno NUMBER(2) PRIMARY KEY,
dname VARCHAR2(14),
loc VARCHAR2(13)
);
INSERT INTO const08_dep
SELECT * FROM department;
COMMIT;
SELECT * FROM const08_dep;

CREATE TABLE const08_emp
(
name VARCHAR2(30),
dno NUMBER(2) REFERENCES const08_dep -- dep 테이블의 primary key 참조!!
);

INSERT INTO const08_emp
VALUES ('a', 10);
INSERT INTO const08_emp
VALUES ('b', 50);-- X
INSERT INTO const08_emp
VALUES ('c', null);-- O 부모(primary key니까)한테 null key가 없군 그렇군 그래도 되는군

CREATE TABLE customer (
    id VARCHAR(20),
    pwd VARCHAR(20) CONSTRAINT customer_pwd_nn NOT NULL,
    name VARCHAR(20) CONSTRAINT customer_name_nn NOT NULL,
    phone VARCHAR(30),
    address VARCHAR(100),
    CONSTRAINT customer_id_pk PRIMARY KEY(id)
);

INSERT INTO customer
VALUES ('greentea', '1234', '녹차아가씨', NULL, NULL);

INSERT INTO customer
VALUES ('greentea', '11223344', '그린티', NULL, NULL);-- X

INSERT INTO customer
VALUES (NULL, '4321', '커피', NULL, NULL);-- X

INSERT INTO customer
VALUES (NULL, '111', '그린티', NULL, NULL);-- X



------ 삭제
DROP TABLE emp_second;
DROP TABLE const08_dep;
DROP TABLE customer;
