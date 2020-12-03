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

-- 04 å �� ��� �ѱ� �� ��
SELECT job, AVG(salary)
FROM employee
GROUP BY job-- SELECT job�Ϸ��� ��� ����� ��
HAVING AVG(salary) = (SELECT MIN(AVG(salary))
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
SELECT eno, ename, job, salary
FROM employee
WHERE salary < ANY (SELECT salary
                    FROM employee
                    WHERE job = 'ANALYST')
AND job <> 'ANALYST';

-- 07 ���� ������ ���� ����� �̸�, manager�� null�� eno�� ename
SELECT ename
FROM employee
WHERE eno IN (SELECT eno
              FROM employee
              WHERE manager is null);

SELECT eno, ename
FROM employee
WHERE manager is null;
              
-- 08
SELECT ename
FROM employee
WHERE eno IN (SELECT eno
              FROM employee
              WHERE manager is not null);

-- 09 ������ ��������
SELECT ename, hiredate
FROM employee
WHERE dno = (SELECT dno
             FROM employee
             WHERE ename = 'BLAKE')
AND ename <> 'BLAKE';

-- 10 ������ ��������
SELECT eno, ename
FROM employee
WHERE salary > (SELECT AVG(salary)
                FROM employee)
ORDER BY salary;

-- 11
SELECT eno, ename
FROM employee
WHERE dno IN (SELECT dno
              FROM employee
              WHERE ename LIKE '%K%');

-- 12
SELECT ename, dno, job
FROM employee
WHERE dno = (SELECT dno
              FROM department
              WHERE loc = 'DALLAS');

-- 13 ������ ��������
SELECT ename, salary
FROM employee
WHERE manager = (SELECT eno
                  FROM employee
                  WHERE ename = 'KING');

-- 14 ������ ��������
SELECT dno, ename, job
FROM employee
WHERE dno = (SELECT dno
              FROM department
              WHERE dname = 'RESEARCH');

-- 15
SELECT eno, ename, salary
FROM employee
WHERE salary > (SELECT AVG(salary)
                FROM employee)
AND dno IN (SELECT dno
            FROM employee
            WHERE ename LIKE '%M%');
           
SELECT eno, ename, salary
FROM employee
WHERE salary > (SELECT AVG(salary)
                FROM employee)
AND dno = ANY (SELECT dno
               FROM employee
               WHERE ename LIKE '%M%');
           
-- 16 ��� �޿��� ���� ���� ���� ------------
SELECT job, AVG(salary)
FROM employee
GROUP BY job
HAVING AVG(salary) <= ALL (SELECT AVG(salary)
                           FROM employee
                           GROUP BY job);
                           
SELECT job, ROUND(AVG(salary))
FROM employee
GROUP BY job;

-- ����
SELECT job, AVG(salary)
FROM employee
GROUP BY job
HAVING AVG(salary) = (SELECT MIN(AVG(salary))
                      FROM employee
                      GROUP BY job);

-- 17 ����� �Ŵ����� ������ �μ��� ���
SELECT dno, ename
FROM employee
WHERE dno IN (SELECT dno
              FROM employee
              WHERE job = 'MANAGER');
              
SELECT ename, eno, manager FROM employee
ORDER BY dno;

-- ����
SELECT ename, dno
FROM employee
WHERE eno IN (SELECT manager
              FROM employee);
              
SELECT eno, manager FROM employee;