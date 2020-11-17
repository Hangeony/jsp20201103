select max(salary) from employee;
select max(salary) from employee;
select job, max(salary) from employee group by job; 

select job, avg(salary) from employee
group by job having avg(salary) >= 3000;

--149p �Ҽ� �μ��� �޿��� �μ���ȣ�� �Բ� ����ϱ�
select dno as"�μ���ȣ" , avg(salary) as"�޿� ��" from employee group by dno;

--150p �Ҽ� �μ��� ��� �޿� ���ϱ�
select avg(salary) as"�޿����" from employee group by dno;

--151p ���� Į���� �̿��Ͽ� �׷캰�� �˻��ϱ�
select dno, job, count(*), sum(salary) from employee group by dno, job order by dno, job;

--152p �μ��� �޿� �Ѿ��� 3000�̻��� �μ��� ��ȣ�� �μ��� �޿� �Ѿ� ���ϱ�
select dno, max(salary) from employee group by dno having max(salary) >=3000;

--152p �޴����� ����ϰ� �޿� �Ѿ��� 5000�̻��� ���޺� �޿� �Ѿױ��ϱ�
select job, count(*), sum(salary) from employee
where job not like '%MANAGER%'
group by job having sum(salary) >= 5000 order by sum(salary);

--153p �ְ�޿� ����ϱ�
select max(avg(salary)) from employee group by dno;

--ȥ���غ��� 1 ������� �޿� �ְ� �� ������ �Ѿ� ����� ���Ͻÿ�.
SELECT MAX(salary) as "Maximum",
MIN(salary) as "Minimum",
SUM(salary) as "Sum",
round(AVG(salary)) as "Average" FROM employee;

--ȥ���غ��� 2 �������� �������� �ְ�� ������ ���� ��վ��� ����Ͻÿ�. ����
select job as "job", max(salary) as " Maximum",
min(salary) as"Minimum", sum(salary) as"Sum",
round(avg(salary)) as"Average" from employee
group by job;

--ȥ���غ��� 3 count(*) �Լ��� �̿��Ͽ� �������� ������ ��� ���� ��� �Ͻÿ�
select job , count(*) from employee group by job;

--ȥ���غ��� 4 ������ ���� �����Ͻÿ�.
select count(manager) from employee;

--ȥ���غ��� 5 �ְ�ݾ�, �޿� �����ݾ� ������ ���
select max(salary) - min(salary) as difference from employee;

--ȥ���غ��� 6 ���޺� ����� �����޿��� ����Ͻÿ�.
select job, min(salary) from employee
group by job having not min(salary)<2000
order by min(salary) desc;

--ȥ���غ��� 7 ���μ� �μ���ȣ ����� �μ��� ������� ��� �޿��� ����Ͻÿ�
select dno, count(*) as "Number of People", round(avg(salary),2) as "Salary"
from employee group by dno order by dno asc;

--ȥ���غ��� 8 ���μ��� ���� �μ���ȣ �̸�, ������, �����, �μ��� ��� ����� ��ձ޿��� ���Ͻÿ� 
select decode(dno, 10, 'ACCOUNTING', 20 ,'RESEARCH' , 30 ,'SALES' , 40,'OPERATIONS') as "dname",
decode(dno, 10, 'NEW YORK', 20, 'DALLAS', 30, 'CHICAGO', 40, 'BOSTON')as "LOCATION" ,
count(*) as "Number of People", round(avg(salary)) as "Salary" from employee group by dno;

--ȥ���غ��� 9������ ǥ���� ���� �ش� ������ ���� �μ��� �޿� �� �μ� 10,20,30�� �޿� �Ѿ��� ���Ͻÿ�. ����
select job, dno,
decode(dno, 10 ,sum(salary)) as "�μ� 10",
decode(dno, 20, sum(salary)) as "�μ� 20",
decode(dno, 30, sum(salary)) as "�μ� 30",
sum(salary) as "�Ѿ�"
from employee group by job ,dno order by dno;
