-- 1
CREATE TABLE emp_sample
AS
SELECT * FROM employee
WHERE 0=1;

ALTER TABLE emp_sample
ADD CONSTRAINT my_emp_pk PRIMARY KEY(eno); 

-- 2
CREATE TABLE dept_sample
AS
SELECT * FROM employee
WHERE 0=1;

ALTER TABLE dept_sample
ADD CONSTRAINT my_dept_pk PRIMARY KEY(dno);

-- 3
ALTER TABLE emp_sample
ADD CONSTRAINT my_emp_dept_fk
FOREIGN KEY(dno) REFERENCES dept_sample(dno);

-- 4
ALTER TABLE emp_sample
ADD CHECK (commission > 0);

SELECT * FROM user_constraints
WHERE table_name LIKE '%_SAMPLE';

SELECT * FROM user_tab_columns
WHERE table_name LIKE '%_SAMPLE';

DROP TABLE emp_sample;
DROP TABLE dept_sample;