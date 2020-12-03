-- 1
DROP TABLE emp_insert;

CREATE TABLE emp_insert
AS
SELECT * FROM employee
where 0=1;

SELECT * FROM emp_insert;
DESC emp_insert;

-- 2
INSERT INTO emp_insert
VALUES (1, 'EUNJI', NULL, 1004, SYSDATE, 4000, 1000, 10);

-- 3
INSERT INTO emp_insert
VALUES (2, 'HYOJIN', NULL, 1004, to_date(SYSDATE-1, 'YYYY-MM-DD'), 4000, 1000, 20);

-- 4
DROP TABLE emp_copy;
CREATE TABLE emp_copy
AS
SELECT * FROM employee;

-- 5
UPDATE emp_copy
SET dno = 10
WHERE eno = 7788;

-- 6
UPDATE emp_copy
SET job = (SELECT job
           FROM emp_copy
           WHERE eno = 7499),
    salary = (SELECT salary
              FROM emp_copy
              WHERE eno = 7499)
WHERE eno = 7788;

UPDATE emp_copy
SET (job, salary) = (SELECT job, salary
                     FROM emp_copy
                     WHERE eno = 7499)
WHERE eno = 7788;

SELECT * FROM emp_copy
WHERE eno IN (7788, 7499);

-- 7
UPDATE emp_copy
SET dno = (SELECT dno
           FROM emp_copy
           WHERE eno = 7369)
WHERE job = (SELECT job
                 FROM emp_copy
                 WHERE eno = 7369);

SELECT * FROM emp_copy
WHERE job = (SELECT job
             FROM emp_copy
             WHERE eno = 7369);
             
-- 8
DROP TABLE dept_copy;
CREATE TABLE dept_copy
AS
SELECT * FROM department;

-- 10
DELETE dept_copy
WHERE dname = 'RESEARCH';

SELECT * FROM dept_copy;

-- 11
DELETE dept_copy
WHERE dno IN (10, 40);

COMMIT;


