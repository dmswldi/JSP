SELECT sysdate ���� FROM dual;
SELECT sysdate + 1 ���� FROM dual;
SELECT sysdate - 1 ���� FROM dual;


SELECT TO_DATE('2020-11-13', 'yyyy-mm-dd') + 24/24 FROM dual;

SELECT ename, hiredate, sysdate - hiredate �ٹ��ϼ� FROM employee;-- �� �� ��ŭ �� �� �ž�
SELECT ename, hiredate, sysdate - TO_DATE('2020/11/12', 'yyyy-mm-dd') FROM employee;
SELECT ename, hiredate, ROUND(sysdate - hiredate) FROM employee;

SELECT ROUND(sysdate, 'Q') FROM dual;
SELECT ROUND(TO_DATE('2020-11-16', 'yyyy-mm-dd'), 'Q') FROM dual;
SELECT ROUND(sysdate, 'DAY') FROM dual;-- ������ ����, �ݿø��� �Ͽ����� ����
SELECT ROUND(TO_DATE('2020-11-19', 'yyyy-mm-dd'), 'DAY') FROM dual;
SELECT ROUND(sysdate, 'DDD') FROM dual;-- ���Ķ� ���� ����

SELECT ROUND(sysdate) FROM dual;-- ������ �ݿø��ؼ� ����(���Ķ�)
SELECT ROUND(sysdate, 'YEAR') FROM dual;
SELECT ROUND(sysdate, 'MONTH') FROM dual;

SELECT TRUNC(sysdate, 'YEAR') FROM dual;-- �⵵�� ����
SELECT TRUNC(sysdate, 'MONTH') FROM dual;-- ���� ����

SELECT hiredate, TRUNC(hiredate, 'MONTH') FROM employee;

SELECT MONTHS_BETWEEN(sysdate, hiredate) FROM employee;-- �� ���� ����
SELECT MONTHS_BETWEEN(sysdate, TO_DATE('2020-10-13', 'yyyy-mm-dd')) �Ѵ����� FROM dual;
SELECT MONTHS_BETWEEN(TO_DATE('2019-10-13', 'yy-mm-dd'), sysdate) �Ѵ����� FROM dual;

SELECT ename, sysdate, hiredate,
       TRUNC(MONTHS_BETWEEN(sysdate, hiredate))
FROM employee;
SELECT TRUNC(MONTHS_BETWEEN(sysdate, TO_DATE('2020-10-13', 'yyyy-mm-dd'))) FROM dual;

SELECT ADD_MONTHS(sysdate, 12) FROM dual;
SELECT ADD_MONTHS(sysdate, 6) FROM dual;
SELECT ADD_MONTHS(sysdate, -12) FROM dual;
SELECT ename, hiredate, ADD_MONTHS(hiredate, 6) FROM employee;

SELECT NEXT_DAY(sysdate, '�����') FROM dual;-- ��� �� �ȴ�
SELECT NEXT_DAY(sysdate, 6) FROM dual;-- �Ͽ��Ϻ��� 1, �ݿ����� 6
SELECT sysdate, NEXT_DAY(sysdate, '�ݿ���') FROM dual;

SELECT LAST_DAY(sysdate) FROM dual;
SELECT LAST_DAY(ADD_MONTHS(sysdate, -9)) FROM dual;-- 2�� ������ ��¥
SELECT ename, hiredate, LAST_DAY(hiredate) FROM employee;
