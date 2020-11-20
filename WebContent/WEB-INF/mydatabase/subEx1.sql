--------------- ���� �� ���� ����
-- �Ŵ��� �̸�
SELECT manager FROM employee
WHERE eno = 7499;-- 7698

SELECT ename FROM employee
WHERE eno = 7698;-- blake

SELECT ename FROM employee
WHERE eno = (SELECT manager
             FROM employee
             WHERE eno = 7499);
             
-- scott�� ���� �μ��� ���
SELECT ename, dno
FROM employee
WHERE dno = (SELECT dno
             FROM employee
             WHERE ename = 'SCOTT');
        
-- �޿��� �ּ��� ��� ����
SELECT ename, job, salary
FROM employee
WHERE salary = (SELECT MIN(salary)
                FROM employee);
        
SELECT dno, MIN(salary)
FROM employee
GROUP BY dno
HAVING MIN(salary) > (SELECT MIN(salary)
                      FROM employee
                      WHERE dno = 30);


-- ���� �� ���� ������ ���� �� �� �����ڸ� ����ؾ� �� : error
SELECT ename FROM employee
WHERE salary > (SELECT salary
                FROM employee);

--------------- ���� �� ���� ����
SELECT * FROM employee;
----- ���� �� �� ������ ���� : IN, ANY, SOME, ALL, EXISTS
--IN
SELECT eno, ename
FROM employee
WHERE eno IN(7839, 7499);

SELECT dno
FROM department
WHERE dno <= 20;

SELECT ename, dno
FROM employee
WHERE dno IN(SELECT dno
             FROM department
             WHERE dno <= 20);

-- �̷��� �ϸ� ����� �� ����� �� ���� �� ���� : ���� salary�� ���� salary�� ���� ����� �ٸ� �μ��� �����Ѵٸ�
SELECT eno, ename, dno, salary
FROM employee
WHERE salary IN(SELECT MIN(salary)
                    FROM employee
                    GROUP BY dno);
                    
-- ���ؿ� min(salary) �Ӹ� �ƴ϶� dno�� �߰��ؾ� ��
SELECT eno, ename, dno, salary
FROM employee
WHERE (dno, salary) IN(SELECT dno, MIN(salary)
                    FROM employee
                    GROUP BY dno);

-- ANY = SOME, IN�� �޸� �� ������ ���
SELECT eno, ename
FROM employee
WHERE eno > ANY(7839, 7499);-- OR�� �ǹ�: IN�� �ǹ̰� ����

SELECT eno, ename
FROM employee
WHERE eno > SOME(7839, 7499);

-- ALL
SELECT eno, ename
FROM employee
WHERE eno >= ALL(7839, 7499);-- AND�� �ǹ�

-- EXISTS ???? null�� �����Ѵٴµ�???
SELECT eno, ename
FROM employee
WHERE EXISTS(SELECT manager FROM employee WHERE manager is null);-- ���� ���� ���� Ȯ��
SELECT manager FROM employee WHERE manager is null;

