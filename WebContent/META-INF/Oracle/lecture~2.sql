SELECT * FROM employee;
SELECT * FROM employee WHERE ename = 'SMITH';-- ���̸����� �Ȼ���� ã��ʹ�.
SELECT * FROM employee WHERE salary > 1000; -- ������ õ���� �̻� �λ��
SELECT * FROM employee WHERE commission <500;  --�Ĺ̼��� 500 �̸��λ��
SELECT * FROM employee WHERE salary >= 3000;   --�������� 3000 ���� ���ų� ū���
SELECT * FROM employee WHERE salary <= 2000;     -- �������� 2000õ���� �������
SELECT * FROM employee WHERE ename <= 'G'; -- g ���� f���� �� ������� �̸�
SELECT * FROM employee WHERE ename != 'SMITH'; -- 8,9,10 not ������
SELECT * FROM employee WHERE ename <> 'SMITH';
SELECT * FROM employee WHERE ename ^= 'SMITH';
SELECT * FROM employee WHERE hiredate = '1981/02/20'; --��¥ ������ ��ȸ
SELECT * FROM employee WHERE hiredate = '81/02/20'; --�⵵�� 4�ڸ��� ���°� ���򰥸�

SELECT * FROM employee WHERE hiredate >= '1981/01/01' AND salary > 3000; --�ΰ��� ������ ��� �����ؾ߸� �˻� ���� 
SELECT * FROM employee WHERE hiredate >= '1981/01/01' OR  salary > 3000; --�ΰ��� ������ �ϳ���  �����ϸ� �˻�����

SELECT * FROM employee
WHERE NOT salary > 3000;

SELECT * FROM employee
WHERE ename > 'C' AND salary >2000 AND dno <>30;

Select * From employee
Where Salary >= 3000 And Salary <= 5000;

select * From employee
WHERE salary BETWEEN 3000 and 5000;

SELECT * FROM employee
WHERE hiredate BETWEEN '1982/01/01' AND '1982/12/31';

SELECT * FROM employee
WHERE salary NOT BETWEEN 3000 AND 5000;

SELECT * FROM employee
WHERE salary <3000 OR salary >5000;

SELECT * FROM employee
WHERE salary NOT BETWEEN 3000 AND 5000;

SELECT * FROM Employee
WHERE Dno =10 Or Dno = 20;

SELECT * FROM Employee
WHERE dno IN(10, 20);

SELECT * FROM Employee
WHERE Dno NOT IN (20);

--65p 1 
SELECT ename, salary + 300 FROM employee;
--65 4
SELECT ename,dno FROM employee
WHERE eno = 7788;
--65p 5
SELECT ename, salary FROM employee
WHERE salary NOT BETWEEN 2000 AND 3000;
--65p 6 
SELECT ename, JOB,hiredate FROM employee
WHERE hiredate BETWEEN '1981/02/20' AND '1982/05/01'
--65p 7
select ename, dno from employee
where dno in(20,30)
order by ename;


--������ Ű����� �빮�� , ���̺�, Ŭ������ �ҹ��ڷ�
--���ڵ����� ������ ���ڸ� ���
-- ���ϴ� ���ڵ带 �̾Ƴ������� ��������
-- ���ٺ��� ��Ʈ�� ����Ʈ D
-- ���ٻ��� ��Ʈ ����Ʈ  D
-- ��Ʈ ' Ű���� �빮�� 