SELECT commission, nvl(commission, 0) FROM employee;

SELECT SUM(salary) FROM employee;
SELECT ROUND(AVG(salary), 2) FROM employee;
SELECT MIN(salary) FROM employee;
SELECT MAX(salary) FROM employee;

SELECT COUNT(salary) FROM employee;

SELECT COUNT(*) FROM employee;-- ���̺� ������ �� ��? Ȯ��

SELECT SUM(salary) AS "�޿��Ѿ�",
       TRUNC(AVG(salary),1) AS "�޿����",
       MAX(salary) AS "�ִ�޿�",
       MIN(salary) AS "�ּұ޿�"
FROM employee;

SELECT MAX(hiredate),-- ���� �ֱ�
       MIN(hiredate)-- ���� ������
FROM employee;

SELECT COUNT(commission) FROM employee;
SELECT SUM(commission) FROM employee;
SELECT MAX(commission) FROM employee;
SELECT MIN(commission) FROM employee;

SELECT COUNT(job) "������ ����" FROM employee;
SELECT COUNT(DISTINCT job) AS "���� ������ ����" FROM employee;

SELECT ename, MAX(salary) FROM employee;--  � ������ �˰� �; ��� �̰� �� �ȴٴ� �ſ���
SELECT * FROM employee;
SELECT hiredate, MAX(salary) FROM employee;
SELECT Max(hiredate), SUM(salary) FROM employee;
SELECT salary, MAX(salary) FROM employee;
SELECT MAX(ename), MIN(salary) FROM employee;

SELECT ename FROM employee-- �̷��� �������� ���
WHERE salary =(SELECT MAX(salary) FROM employee);