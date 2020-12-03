-- 01
SELECT ename, e.dno, dname
FROM employee e, department d
WHERE e.dno = d.dno
AND ename = 'SCOTT';

-- 02
SELECT ename, dname, loc
FROM employee e JOIN department d
ON e.dno = d.dno;

-- 03
SELECT dno, job, loc
FROM employee e JOIN department d
USING(dno)
WHERE dno = 10;

-- 04
SELECT ename, dname, loc
FROM empLoyee e NATURAL JOIN department d
WHERE commission > 0;

-- 05
SELECT ename, dname
FROM employee e, department d
WHERE e.dno = d.dno
AND ename LIKE '%A%';

-- 06
SELECT ename, job, dno, dname
FROM employee e NATURAL JOIN department d
WHERE loc = 'NEW YORK';

-- 07
SELECT e.ename "Employee", e.eno "Emp#", m.ename "Manager", m.eno "Mrg#"
FROM employee e, employee m
WHERE e.manager = m.eno;

-- 08
SELECT e.ename "Employee", e.eno "Emp#", m.ename "Manager", m.eno "Mrg#"
FROM employee e LEFT OUTER JOIN employee m
ON e.manager = m.eno
ORDER BY e.eno DESC;

SELECT e.ename "Employee", e.eno "Emp#", m.ename "Manager", m.eno "Mrg#"
FROM employee e, employee m
WHERE e.manager = m.eno(+)
ORDER BY e.eno DESC;

-- 09
SELECT e.ename 이름, e.dno 부서번호, d.ename 동료
FROM employee e, employee d
WHERE e.dno = d.dno
AND e.ename = 'SCOTT'
AND d.ename != 'SCOTT';

-- 10
SELECT e.ename, e.hiredate
FROM employee w, employee e
WHERE w.ename = 'WARD'
AND w.hiredate < e.hiredate
ORDER BY hiredate;

-- 11
SELECT e.ename ename, e.hiredate hiredate, m.ename ename, m.hiredate hiredate
FROM employee e, employee m
WHERE e.manager = m.eno
AND e.hiredate <= m.hiredate;