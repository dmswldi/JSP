-- 1
DROP TABLE dept;
CREATE TABLE dept(
    dno NUMBER(2),
    dname VARCHAR2(14),
    loc VARCHAR2(13)
);
DESC dept;

-- 2
CREATE TABLE emp(
    eno NUMBER(4),
    ename VARCHAR(10),
    dno NUMBER(2)
);
DESC emp;

-- 3
ALTER TABLE emp
MODIFY ename VARCHAR(25);

-- 4
CREATE TABLE employee2
AS
SELECT eno emp_id, ename name, salary sal, dno dept_id
FROM employee;
DESC employee2;

-- 정답
CREATE TABLE employee2(emp_id, name, sal, dept_id)
AS
SELECT eno, ename, salary sal, dno
FROM employee;

-- 5
DROP TABLE emp;

-- 6
RENAME employee2 TO emp; 

-- 7
ALTER TABLE dept
DROP COLUMN dname;
DESC dept;

-- 다른 방법
ALTER TABLE dept
ADD (dname VARCHAR2(10)); -- 길이 지정 꼭 해야 함
ALTER TABLE dept
DROP (dname); -- ()가 column 지칭

-- 8
ALTER TABLE dept
SET UNUSED (loc);

-- 9
ALTER TABLE dept
DROP UNUSED COLUMNS;-- 미사용 컬럼 드롭