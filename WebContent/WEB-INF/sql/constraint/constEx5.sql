-- 제약 사항 추가
CREATE TABLE emp_copy
AS
SELECT * FROM employee;

-- 칼럼 추가
-- ALTER TABLE
-- ADD (column_name data_type DEFULAT expr, );
ALTER TABLE emp_copy
ADD (birth DATE, rank NUMBER);
-- 제약 조건 추가
-- ALTER TABLE
-- ADD [CONSTRAINT contstraint_name] constraint_type (column_name)
ALTER TABLE emp_copy
ADD PRIMARY KEY(eno);

ALTER TABLE emp_copy
ADD UNIQUE(ename);

SELECT * FROM user_constraints
WHERE table_name = 'EMP_COPY';

CREATE TABLE dept_copy
AS
SELECT *  FROM department;

ALTER TABLE dept_copy
ADD CONSTRAINT dept_copy_dno_pk PRIMARY KEY(dno);

SELECT * FROM user_constraints
WHERE table_name = 'DEPT_COPY';

ALTER TABLE emp_copy-- dept의 dno를 참조하는 외래키 emp의 dno
ADD CONSTRAINT emp_copy_dno_fk
FOREIGN KEY(dno) REFERENCES dept_copy(dno);

-- test
CREATE TABLE const1 (
    id NUMBER(5) DEFAULT 5 PRIMARY KEY ,-- 작성 순서 유의...... DEFAULT 먼저 작성!!! 그 다음 CONSTRAINT
    name VARCHAR2(20) DEFAULT 'HELLO' NOT NULL,
    money NUMBER(20) CHECK (money > 0),
    happy CHAR(1) NOT NULL,-- 여기서 Y/N 체크 XXX : Column check constraint cannot reference other columns
    email VARCHAR2(30),
    CONSTRAINT happy CHECK (happy IN ('Y', 'N'))-- Boolean 이렇게 삽입 혹은 0/1
);

CREATE TABLE const1_copy
AS
SELECT * FROM const1;

SELECT * FROM user_constraints
WHERE table_name = 'CONST1';

SELECT * FROM user_constraints
WHERE table_name = 'CONST1_COPY';

Select * From USER_TAB_COLUMNS where TABLE_NAME ='CONST1';
Select * From USER_TAB_COLUMNS where TABLE_NAME ='CONST1_COPY';

INSERT INTO const1 (id, name, happy)
VALUES (1, 'e', 'y');
INSERT INTO const1 (id, name, happy)
VALUES (2, 'h', 'Y');
INSERT INTO const1 (id, name)
VALUES (3, 'a');

SELECT * FROM const1_copy;
-- NOT NULL만(!!!) 복사되고, 기본키, 외래키, DEFAULT, CHECK 복사 안 됨 !!!!!
DROP TABLE const1;
DROP TABLE const1_copy;


-- 제약 사항 수정
ALTER TABLE emp_copy
MODIFY ename CONSTRAINTS emp_copy_ename_nn NOT NULL;


-- 제약 사항 삭제
ALTER TABLE emp_copy
DROP CONSTRAINT emp_copy_ename_nn;

SELECT * FROM user_constraints
WHERE table_name = 'EMP_COPY';

ALTER TABLE emp_copy
DROP CONSTRAINT SYS_C007439;

SELECT * FROM user_constraints
WHERE table_name = 'DEPT_COPY';

ALTER TABLE dept_copy
DROP CONSTRAINT DEPT_COPY_DNO_PK CASCADE;-- 자식의 FOREIGN KEY까지 삭제

DROP TABLE dept_copy;
DROP TABLE emp_copy;

ALTER TABLE emp_copy
DROP PRIMARY KEY;

ALTER TABLE emp_copy
DROP UNIQUE (ename);

DROP TABLE emp_copy;
DROP TABLE dept_copy;