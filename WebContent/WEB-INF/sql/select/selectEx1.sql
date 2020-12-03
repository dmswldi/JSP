SELECT * FROM employee;
SELECT * FROM BONUS;
SELECT * FROM department;
SELECT * FROM salgrade;

SELECT ename FROM employee;
SELECT eno, ename FROM employee;
SELECT ename, eno FROM employee;
SELECT ename, salary FROM employee;
SELECT ename, salary, salary*12 FROM employee;
SELECT ename, salary / 100 FROM employee;
SELECT ename, salary + 100 FROM  employee;
SELECT ename, salary, salary*12 AS ¿¬ºÀ FROM employee;
SELECT ename, salary, salary*12 ¿¬ºÀ FROM employee;
SELECT ename, salary, salary*12 "¿¬Aa  _ºÀ" FROM employee;

/*
SELECT [DISTINCT] {*|column[alia]...} [AS]
*/
-- ÇÑ ÁÙ ÁÖ¼®

SELECT * FROM employee;
SELECT ename, salary + commission FROM employee;
SELECT ename, salary, commission, nvl(commission, 0) FROM employee;
SELECT ename, salary + nvl(commission, 0) FROM employee;

-- ºÎ¼­ Á¾·ù
SELECT distinct dno from employee;