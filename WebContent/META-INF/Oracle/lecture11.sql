SELECT manager FROM employee where eno = '7499';
--��ü
SELECT ename FROM employee WHERE eno = '7698';

-- eno = (SELECT  manager FROM employee WHERE eno = 7499) < ��������
SELECT ename FROM employee WHERE  eno = (SELECT  manager FROM employee WHERE eno = 7499);

SELECT ename FROM employee WHERE salary > (SELECT salary FROM employee WHERE eno= 7499);
--����Ŀ�� ���� �ϳ� �̻󿩾��� ,���³��� ���ٰų� WHERE���� �ȳ����� ���� ����.

--������ ���� ����
/*
In���� �ϳ��� ������
ANY(SOME) �ϳ��̻��� ����
ALL ��� ������
*/
--IN 
SELECT dno FROM department  WHERE dno <= 20;
SELECT ename, dno FROM employee WHERE dno IN (SELECT dno FROM department  WHERE dno <= 20);
SELECT dno, MIN(salary) FROM employee GROUP BY dno;
--ANY

-- 189p SCOTT�� ������ �μ����� ���ϴ� ��� ���
SELECT ename, dno FROM employee 
WHERE dno = (SELECT dno from employee WHERE ename='SCOTT');

--190p �ּ� �޿��� �޴� ����� �̸�, ��� ����, �޿�����ϱ�
SELECT ename, job, salary FROM employee
WHERE salary = (SELECT min(salary) FROM employee);

--190p ���� ������ HAVING�� ���
SELECT dno, min(salary) FROM employee group by dno
having min(salary) >(select min(salary) from employee where dno = 30);

--192p���� �������� IN ����ϱ� ���μ��� �������� WHERE ���θ� ���� ���߻�밡���ϴ�.
SELECT eno, ename FROM employee WHERE (dno, salary) IN (SELECT dno, min(salary) FROM employee GROUP BY dno);

--ȥ���غ��� 1 �����ȣ�� 7788�� ����� ��� ������ ���� ����� ǥ�� �Ͻÿ�.(����̸��� ������)
SELECT ename, job FROM employee WHERE JOB = (SELECT job FROM employee WHERE eno = 7788);

--ȥ���غ��� 2 �����ȣ�� 7499�� ������� �޿��� ���� ����� ǥ���Ͻÿ�.(����̸��� ������)
SELECT ename,JOB FROM employee WHERE salary > (SELECT salary FROM employee WHERE eno = 7499);

--ȥ���غ��� 3 �ּ� �޿��� �޴� ����� �̸�, ��� ���� �� �޿��� ǥ���Ͻÿ�(�׷��Լ� ���)
SELECT ename, JOB, salary FROM employee WHERE salary =(SELECT min(salary) FROM employee);

--ȥ���غ��� 4 ��ձ޿��� ���� ���� ����� ��� ������ ã�� ���ް� ����� ���Ͻÿ�.
SELECT JOB, round(avg(salary),1) FROM employee GROUP BY JOB
HAVING round(avg(salary),1) = (SELECT MIN(round(avg(salary),1)) FROM employee GROUP BY JOB);

--ȥ���غ��� 5 �� �μ��� �ּ� �޿��� �޴� ����� �̸�, �޿�, �μ���ȣ�� ���Ͻÿ�.
SELECT ename, salary, dno FROM employee  WHERE salary IN(SELECT MIN(salary)FROM employee GROUP BY JOB);