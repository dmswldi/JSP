-- 01
SELECT ename, salary, salary+300 increased 
FROM employee;

-- 02
SELECT ename, salary, salary*12+100 "ANNUAL INCOM" 
FROM employee 
ORDER BY salary*12+100 DESC;

-- 03
SELECT ename, salary 
FROM employee 
WHERE salary > 2000 
ORDER BY salary DESC;

-- 04
SELECT ename, dno 
FROM employee 
WHERE eno = 7788;

-- 05
SELECT ename, salary 
FROM employee 
WHERE salary NOT BETWEEN 2000 AND 3000;

-- 06
SELECT ename, job, hiredate 
FROM employee 
WHERE hiredate BETWEEN '1981/02/20' AND '1981/05/01';

-- 07
SELECT ename, dno 
FROM employee 
WHERE dno IN (20, 30) 
ORDER BY ename;

-- 08
SELECT ename, salary, dno 
FROM employee 
WHERE salary 
BETWEEN 2000 
AND 3000 AND dno IN (20, 30) 
ORDER BY ename;

-- 09
SELECT ename, to_char(hiredate, 'yyyy-mm-dd') AS hiredate FROM employee WHERE hiredate LIKE '81%'; -- DATE TO STRING해서 사용
SELECT ename, to_char(hiredate, 'yyyy-mm-dd') AS hiredate FROM employee WHERE to_char(hiredate, 'yyyy-mm-dd') LIKE '1981%';

-- 10
SELECT ename, job FROM employee WHERE manager IS NULL;

-- 11
SELECT ename, salary, commission
FROM employee
WHERE commission
IS NOT NULL ORDER BY salary, commission;

-- 12
SELECT ename FROM employee WHERE ename LIKE '__R%';

-- 13
SELECT ename FROM employee WHERE ename LIKE '%A%' AND ename LIKE '%E%';

-- 14
SELECT ename, job, salary 
FROM employee 
WHERE job IN ('CLERK','SALESMAN') 
AND salary NOT IN (1600, 950, 1300);

-- 15
SELECT ename, salary, commission FROM employee WHERE commission >= 500;
