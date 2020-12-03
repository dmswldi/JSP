-- UPDATE
-- 데이터를 변경하는  명령문
-- UPDATE tname SET col1=val1, col2=val2, , WHERE
DROP TABLE dept_copy;
CREATE TABLE dept_copy
AS
SELECT * FROM department;

SELECT * FROM dept_copy;

UPDATE dept_copy
SET dname = 'PROGRAMMING'
WHERE dno = 10;

UPDATE dept_copy
SET dname = 'HR';

UPDATE dept_copy
SET dname = 'PROGRAMMING', loc = 'SEOUL'
WHERE dno = 10;

-- 20부서랑 같게 10부서 loc 설정
UPDATE dept_copy
SET loc = (SELECT loc
           FROM dept_copy
           WHERE dno = 20)
WHERE dno = 10;

COMMIT;


-- 30부서를 10부서에 복사
UPDATE dept_copy
SET dname = (SELECT dname
             FROM dept_copy
             WHERE dno = 30),
    loc = (SELECT loc
           FROM dept_copy
           WHERE dno = 30)
WHERE dno = 10; 

-- DELETE
-- DELETE FROM tname WHERE
DROP TABLE dept_copy;
CREATE TABLE dept_copy
AS
SELECT * FROM department;

DELETE FROM dept_copy
WHERE dno = 10;

SELECT * FROM dept_copy;

DELETE FROM dept_copy;
COMMIT;

DROP TABLE emp_copy;
CREATE TABLE emp_copy
AS
SELECT * FROM employee;

DELETE emp_copy
WHERE dno = (SELECT dno
             FROM department
             WHERE dname = 'SALES');

SELECT * FROM emp_copy;

COMMIT;
---- 테이블 정리
DROP TABLE data_type_ex0;
DROP TABLE data_type_ex1;
DROP TABLE data_type_ex2;
DROP TABLE data_type_ex3;
DROP TABLE dept;
DROP TABLE dept_copy;
DROP TABLE dept_fourth;
DROP TABLE dept_second;
DROP TABLE dept_third;
DROP TABLE emp_copy;
DROP TABLE emp_insert;
DROP TABLE table1;
DROP TABLE emp;

COMMIT;