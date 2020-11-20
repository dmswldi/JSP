-- GROUP BY�ϸ� ����
SELECT job, MAX(salary) FROM employee GROUP BY job;-- job���� max salary ���ϱ�

SELECT dno as "�μ� ��ȣ", TRUNC(AVG(salary)) AS "�޿� ���"
FROM employee
GROUP BY dno
ORDER BY TRUNC(AVG(salary)) DESC;-- default �׷��� ���� ��������

SELECT dno, job, COUNT(*), SUM(salary)
FROM employee
GROUP BY dno, job-- GROUP BY���� ����� Į���� SELECT ����!!!!!!!
ORDER BY dno, job;

-- where���� �׷��Լ� ��� XXX
SELECT job, AVG(salary) FROM employee
WHERE AVG(salary) >= 3000
GROUP BY job;

SELECT job, AVG(salary) FROM employee
GROUP BY job
HAVING AVG(salary) >= 3000;

SELECT dno, MAX(salary)
FROM employee
GROUP BY dno
HAVING MAX(salary) >= 3000;

SELECT job, count(*), SUM(salary)-- sum�� ���ؼ� �������� �ڵ� ����
FROM employee
WHERE job not like '%MANAGER%'
GROUP BY job
HAVING SUM(salary) >= 5000;

SELECT MAX(AVG(salary))
FROM employee
GROUP BY dno;

SELECT dno, AVG(salary)
FROM employee
GROUP BY dno;