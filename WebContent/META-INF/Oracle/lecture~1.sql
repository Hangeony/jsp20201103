SELECT * FROM employee;    --
SELECT * FROM bonus;       -- 
SELECT * FROM department;  --�μ�
SELECT * FROM salgrade;    --

SELECT ename FROM employee;
SELECT eno, ename FROM employee;
SELECT ename, eno FROM employee;
SELECT ename, salary FROM employee;
SELECT ename, salary, salary*12 FROM employee;
SELECT ename, salary / 100 FROM employee;
SELECT ename, salary + 100 FROM employee;
SELECT ename, salary - 100 FROM employee;
SELECT ename, salary, salary*12 AS ����� FROM employee;
SELECT ename, salary, salary*12 ����� FROM employee; --as �������� 
-- �� �� �ּ� /��ҹ��ڸ� �������� ����
/*
  ������ �ּ�
*/
SELECT * FROM employee;
SELECT ename, salary, commission, salary + commission FROM employee;
SELECT ename, salary, commission, NVL(commission, 0) FROM employee;
SELECT ename, salary + NVL(commission, 0) FROM employee;
SELECT ename, salary + NVL(commission, 0) �� FROM employee;

SELECT DISTINCT (dno) FROM employee; --� �����ʹ� ���� �ߺ��ؼ� �����°�찡 ����
SELECT DISTINCT dno FROM employee; -- () ���� ����


