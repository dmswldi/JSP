-- 1
CREATE SEQUENCE emp_seq
    MAXVALUE 100000;

-- 2
CREATE TABLE emp_01 (
    eno NUMBER(4) PRIMARY KEY,
    ename VARCHAR(10),
    hiredate DATE
);

INSERT INTO emp_01
VALUES (emp_seq.nextVal, 'eun', sysdate);

SELECT * FROM emp_01;
DROP TABLE emp_01;
