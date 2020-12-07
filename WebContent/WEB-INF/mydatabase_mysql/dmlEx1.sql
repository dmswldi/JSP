CREATE TABLE dept_copy
AS
SELECT * FROM DEPARTMENT
WHERE 0=1;

DESC dept_copy;

INSERT INTO dept_copy -- (dno, dname, loc)
VALUES (10, 'ACCOUNTING', 'NEW YORK');

SELECT * FROM dept_copy;

INSERT INTO dept_copy (dno, loc, dname)
VALUES (20, 'DALLAS', 'RESERACH');
COMMIT;

-- NULL
-- 값을 안 넣는 경우
INSERT INTO dept_copy (dno, dname)
VALUES (30, 'SALES');

INSERT INTO dept_copy
VALUES (40, 'OPERATIONS', NULL);

-- ORACLE에서 : NULL ''
INSERT INTO dept_copy
VALUES (50, 'COMPUTING', '');
COMMIT;

