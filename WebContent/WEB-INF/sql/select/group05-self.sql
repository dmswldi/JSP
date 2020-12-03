-- 01
SELECT MAX(salary) "Maximum", MIN(salary) "Minimum", SUM(salary) "Sum", ROUND(AVG(salary)) "Average"
FROM employee;

-- 02
SELECT job, MAX(salary) "Maximum", MIN(salary) "Minimum", SUM(salary) "Sum", ROUND(AVG(salary)) "Average"
FROM employee
GROUP BY job;

-- 03
SELECT job, COUNT(*)
FROM employee
GROUP BY job;

-- 04
SELECT COUNT(*) "COUNT(MANAGER)"
FROM employee
WHERE manager is not null;

SELECT COUNT(manager)-- 아하!
FROM employee;

-- 05
SELECT MAX(salary)-MIN(salary) DIFFERENCE
FROM employee;

-- 06
SELECT job, MIN(salary)
FROM employee
WHERE manager is not null
GROUP BY job
HAVING not MIN(salary) < 2000
ORDER BY MIN(salary) DESC;
 
 
-- 07
SELECT dno, COUNT(*) "Number of People", ROUND(AVG(salary), 2) Salary
FROM employee
GROUP BY dno
ORDER BY dno;

-- 08
SELECT DECODE(dno, 10, 'ACCOUNTING',
                   20, 'RESEARCH',
                   30, 'SALES',
                   40, 'OPERATIONS') AS "dname", 
        DECODE(dno, 10, 'NEW YORK',
                   20, 'DALLAS',
                   30, 'CHICAGO',
                   40, 'BOSTON') AS "Location",
       COUNT(*) "Number of People", 
       ROUND(AVG(salary)) "Salary"
FROM employee
GROUP BY dno;

select * from department;
select * from employee;

SELECT CASE WHEN dno = 10 THEN 'ACCOUNTING'
            WHEN dno = 20 THEN 'RESEARCH'
            WHEN dno = 30 THEN 'SALES'
            WHEN dno = 40 THEN 'OPERATIONS'
       END AS "dname",
       CASE WHEN dno = 10 THEN 'NEW YORK'
            WHEN dno = 20 THEN 'DALLAS'
            WHEN dno = 30 THEN 'CHICAGO'
            WHEN dno = 40 THEN 'BOSTON'
       END AS "Location",
       COUNT(*) "Number of People", 
       ROUND(AVG(salary)) "Salary"
FROM employee
GROUP BY dno;

-- 09 -->
SELECT job, dno,
       DECODE(dno, 10, SUM(salary)) AS "부서 10",
       DECODE(dno, 20, SUM(salary)) AS "부서 20",
       DECODE(dno, 30, SUM(salary)) AS "부서 30",
        SUM(salary) AS "총액"
FROM employee
GROUP BY job, dno
ORDER BY dno;