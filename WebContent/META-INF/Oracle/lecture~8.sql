select commission, nvl(commission, 0) from employee;

select sum(salary) from employee; -- �������� �հ�
select avg(salary) from employee; -- ���
select min(salary) from employee; --�ּҰ�
select max(salary) from employee; --�ִ밪

select count(salary)from employee; --salary���� ��14�� �ϳ��� �÷��� �ִ°�찡 ������
select count(*) from employee; -- ����� Ȯ���ϴ� �Լ�

select count(commission) from employee; -- ���� ����null���� ���Ծ��Ѵ�.
select sum(commission) from employee;
select max(commission) from employee;
select min(commission)from employee;
select avg(commission)from employee;

select count(job) from employee;
select distinct(job)from employee;
select count(distinct(job)) from employee;

select ename, SUM (salary) from employee;
select ename, max(salary)from employee;

select ename from employee
where salary = (select max(salary) from employee);

--145p �ֱٿ� �Ի��� ����� ������� ���� �Ի��� ��� ã��
select max(hiredate), min(hiredate) from employee;

--145p ������� Ŀ�̼� �Ѿ� ���
select sum(commission)as"Ŀ�̼� �Ѿ�" from employee;

--146p ��ü ����� �� ���ϱ�
select count(*) as "�����" from employee;

--146p Ŀ�̼��� �޴� ����� �� ���ϱ�
select count(commission)as"Ŀ�̼� ������" from employee;
select count(*) as"Ŀ�̼� ������" from employee where commission is not null;

--147p���� ������ ���� ����ϱ�
select count(distinct job) as"���� ������ ����" from employee;