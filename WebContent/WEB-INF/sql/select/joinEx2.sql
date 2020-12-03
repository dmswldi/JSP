----------- NON-EQUI JOIN
SELECT * FROM employee;
SELECT * FROM salgrade;

SELECT eno, ename, salary, grade FROM employee e, salgrade s
WHERE salary BETWEEN losal AND hisal;

SELECT ename, dname, salary, grade
FROM employee e, department d, salgrade s
WHERE e.dno = d.dno
AND salary BETWEEN losal AND hisal;-- 각 사원의 grade 결정해주기

SELECT ename, dname, salary, grade
FROM employee e, department d, salgrade s
WHERE e.dno = d.dno
AND salary BETWEEN losal AND hisal
AND eno = 7788;