SELECT * FROM employee;

SELECT ename, salary, commission, salay + commission AS SUM --�ȵ� ;
FROM employee;

SELECT ename, commission, nvl(commission, 0) FROM employee; --null�ΰ��� ������ ǥ��

SELECT nullif('a', 'a') FROM dual; --���� ������ null
SELECT nullif('a', 'b') FROM dual;

SELECT COALESCE('a','b',NULL,'c') FROM dual; --null���� �������� �������°��� ã�´�
SELECT COALESCE(NULL,'b',NULL,'c') FROM dual;
SELECT COALESCE(NULL,NULL,'d','c') FROM dual;

SELECT ename, salary, CASE WHEN salary >= 3000 THEN 'HIGH' --���ǹ�
WHEN salary >= 0 THEN 'LOW' ELSE '0' END FROM employee;

SELECT ename, salary, commission, COALESCE(commission, salary, 0)
FROM employee
ORDER BY job;
select * from employee where eno = 7499;

SELECT salary * 12 + NVL(commission, 0) AS sal, ename
             FROM employee 
             WHERE eno = 7499;

SELECT ename, dno, DECODE(dno, 10, 'ACC', 20, 'RES', 'DEF')
FROM employee;


--131p �ΰ� ó��
nvl(commission, 0 ) nvl(hiredate, '2011/5/10') nvl(JOB,'MANAGER');

--132p nvl null�� ó���ϱ�
SELECT ename, salary, commission, nvl(commission, 0), salary * 12 + nvl(commission, 0) FROM employee ORDER BY JOB;

--131p nvl2�� null�� ó���ϱ�
SELECT ename , salary, commission, nvl2(commission, salary*12 +commission, salary*12) FROM employee ORDER BY JOB;

--132 nullif ���� null�� ó��
SELECT nullif('a','a'),nullif('a','b') FROM dual;

--133 coalesce�� null�� ó���ϱ� 
select ename, salary, commission, coalesce(commission, salary, 0) from employee order by job;

--134p DECOD�� �μ��̸� ����ϱ�
SELECT ename, dno, decode(dno, 10, 'ACCOUNTING', 20, 'research', 30, 'sales', 40, 'operations' , 'default') as dname
from employee order by dno;

--136p CASE�� �μ��̸� ����ϱ�
SELECT ename, dno,
CASE WHEN dno = 10 THEN 'ACCOUNTING'
WHEN dno = 20 THEN 'RESEARCH'
WHEN dno = 30 THEN 'SALES'
WHEN dno = 40 THEN 'OPERATIONS'
ELSE'DEFAULT'
END AS DNAME FROM employee order by dno;