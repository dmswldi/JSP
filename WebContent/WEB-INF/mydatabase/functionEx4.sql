-- date to char
SELECT TO_CHAR(sysdate) FROM dual;
SELECT TO_CHAR(sysdate, 'DD-MM-YYYY') FROM dual;
SELECT TO_CHAR(sysdate, 'MON') FROM dual;-- ���� ���ڷ�
SELECT TO_CHAR(sysdate, 'DAY') FROM dual;
SELECT TO_CHAR(sysdate, 'D') FROM dual;-- ����
SELECT TO_CHAR(sysdate, 'DD') FROM dual;-- ��
SELECT TO_CHAR(sysdate, 'DY') FROM dual;-- ��

SELECT TO_CHAR(sysdate, 'HH') FROM dual;-- �ð� ������ ���ڷ�! TO_CHAR()
SELECT TO_CHAR(sysdate, 'HH24') FROM dual;-- 24�ð� ����
SELECT TO_CHAR(sysdate, 'MI') FROM dual;
SELECT TO_CHAR(sysdate, 'SS') FROM dual;
SELECT TO_CHAR(sysdate, 'HH:MI:SS') FROM dual;

SELECT TO_CHAR(sysdate, 'YYYY-MM-DD HH:MI:SS') FROM dual;

SELECT ename, hiredate,
       TO_CHAR(hiredate, 'YY-MM'),
       TO_CHAR(hiredate, 'YYYY/MM/DD DAY')
FROM employee;

SELECT TO_CHAR(sysdate, 'YYYY/MM/DD, HH24:MI:SS AM') FROM dual;


-- number to char
SELECT TO_CHAR(56789) FROM dual;
SELECT TO_CHAR(56789, '999,999') FROM dual;
SELECT TO_CHAR(56789, '999,999,999') FROM dual;
SELECT TO_CHAR(56789, '999,999,999,999') FROM dual;
SELECT TO_CHAR(56789, '000,000,000') FROM dual;
SELECT TO_CHAR(56789, 'L999,999,999') FROM dual;

SELECT ename, TO_CHAR(salary, 'L999,999') FROM employee;
SELECT TO_CHAR(23.456, 'L9') FROM dual;-- �ڸ��� ���ڶ�� #######
SELECT TO_CHAR(23.456, 'L999.9') FROM dual;-- �ݿø��� �Ҽ� �ڸ�


-- char to date
SELECT TO_DATE('2020-11-13', 'YYYY-MM-DD') FROM dual;
SELECT TO_DATE('2020/11/13', 'YYYY-MM-DD') FROM dual;-- ����� �� 20/11/13�ε�? : �Ƹ��� ����� ����
SELECT TO_DATE('2020-11-13 01:31:20', 'YYYY-MM-DD HH:MI:SS AM') FROM dual;
SELECT TO_CHAR(
    TO_DATE('2020-11-13 01:31:20', 'YYYY-MM-DD HH:MI:SS AM'), 
    'YYYY-MM-DD HH:MI:SS PM') 
FROM dual;

SELECT ename, hiredate 
FROM employee 
WHERE hiredate = TO_DATE(19810220, 'YYYYMMDD');


-- char to number
SELECT TO_NUMBER('200000') FROM dual;
SELECT TO_NUMBER('200,000', '999,999') FROM dual;-- 1st param�� �ĸ� ������ ���� ��������� ��

SELECT TO_NUMBER('100,000', '999,999') 
       - TO_NUMBER('50,000', '999999') -- �ĸ� ������ �ϰ� ������ TO_CHAR()��
FROM dual;
