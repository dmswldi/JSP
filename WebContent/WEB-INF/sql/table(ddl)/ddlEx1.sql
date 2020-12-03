-- table 만들기
-- CREATE TABLE

CREATE TABLE table1(
    col1 NUMBER(3, 1), 
    col2 VARCHAR2(6), -- 가변 길이 문자열 6byte까지
    col3 CHAR(4), -- 고정 길이 문자열 4byte까지
    col4 DATE
);
DESC table1;
SELECT * FROM table1;

-- DATA TYPE
-- 수, 문자열, 날짜시간
-- NUMBER(n1 , n2), VARCHAR2(byte수), CHAR(고정길이, 작은 값 넣으면 space 채워짐), DATE

    INSERT INTO table1 VALUES (27, 'eunji', 'abcd', to_date('1994-07-24', 'YYYY-MM-DD'));

CREATE TABLE dept (
    dno NUMBER(2),
    dname VARCHAR2(14),
    loc VARCHAR2(13)
);
DESC dept;

-- 이미 있는 테이블 복사
-- 1. 같은 구조의 table 만들기
-- 2. 옛 table을 select -> 신 table insert
CREATE TABLE new_table
AS
SELECT * FROM old_table;

CREATE TABLE dept_second
AS
SELECT * FROM department;
DESC dept_second;
SELECT * FROM dept_second;

CREATE TABLE dept20
AS
SELECT eno, ename, salary*12 annsal -- annsal은 그대로 복사 X, NUMBER 타입됨
FROM employee
WHERE dno = 20;
SELECT * FROM dept20;
DESC dept20;

CREATE TABLE dept_fourth
AS
SELECT dno, dname
FROM department
WHERE 0 = 1;-- 띄어쓰기 상관 X?
SELECT * FROM dept_third;
SELECT * FROM dept_fourth;
