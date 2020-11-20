-- 01
SELECT eno, ename, job
FROM employee
WHERE job = (SELECT job
             FROM employee 
             WHERE eno = 7788);

-- 02
SELECT eno, ename, job, salary
FROM employee
WHERE salary > (SELECT salary
                FROM employee
                WHERE eno = 7499);

-- 03
SELECT ename, job, salary
FROM employee
WHERE salary = (SELECT MIN(salary)
                FROM employee);

-- 04 책 쓴 사람 한글 못 함
SELECT job, AVG(salary)
FROM employee
GROUP BY job-- SELECT job하려면 얘로 묶어야 함
HAVING AVG(salary) IN (SELECT MIN(AVG(salary))
                FROM employee
                GROUP BY job);
SELECT AVG(salary)
                FROM employee
                GROUP BY job;
-- 05
SELECT ename, salary, dno
FROM employee
WHERE salary IN (SELECT MIN(salary)
                FROM employee
                GROUP BY dno);
                
-- 06


-- 07


-- 08

-- 09

-- 10

-- 11

-- 12

-- 13

-- 14

-- 15

-- 16

-- 17
