-- PRIMARY KEY
CREATE TABLE const09 (
    id NUMBER,
    name VARCHAR2(30),
    PRIMARY KEY(id)
);
DESC const09;
INSERT INTO const09
VALUES (NULL, 'a');-- X
INSERT INTO const09
VALUES (1, 'a');-- 2번 X
COMMIT;

-- FOREIGN KEY
CREATE TABLE const10
(
name VARCHAR2(30),
dno NUMBER(2),
FOREIGN KEY (dno) REFERENCES const_08
);

-- PRIMARY KEY, FOREIGN KEY
CREATE TABLE const11
(
id NUMBER,
name VARCHAR(30),
dno NUMBER(2),
PRIMARY KEY (id),
FOREIGN KEY (dno) REFERENCES department
);


select * from user_constraints
where constraint_type = 'R';

SELECT * FROM user_cons_columns;