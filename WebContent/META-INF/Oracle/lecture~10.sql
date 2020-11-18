-- 14�� 8��
SELECT * FROM employee;
-- 4�� 3��
SELECT * FROM department;
-- �ΰ��� ���̺� ���ս�  14�� * 4��
SELECT * FROM employee, department;

SELECT eno, ename, dname FROM employee, department;
SELECT eno, ename, employee.dno edno, department.dno ddno, dname
FROM employee, department;

SELECT eno, ename, employee.dno edno, department.dno ddno, dname
FROM employee, department 
WHERE eno = 7369;

SELECT eno, ename, employee.dno edno, department.dno ddno, dname
FROM employee, department 
WHERE eno = 7369 AND employee.dno = department.dno;

-- equi join
SELECT * FROM employee, department
WHERE employee.dno = department.dno;

SELECT * FROM employee, department
WHERE employee.dno = department.dno
AND eno = 7369;

-- natural join
SELECT * FROM employee e, department d
WHERE e.dno = d.dno
AND e.eno = 7788;

SELECT e.eno, e.ename, e.dno, d.dname 
FROM employee e, department d
WHERE e.dno = d.dno;

--join using
select * from employee join department using(dno);

select * from employee join department using(dno)
where eno = 7788;

--join on
select * from employee e join department d on e.dno = d.dno;
select * from employee e join department d on e.dno = d.dno
where eno = 7788;

--join ���  ���� �÷����� �м��ؼ� �� ���Ƴ���. 
select * from employee NATURAL join department; 
--7782�����ȣ�� ���� ��� ���
select * from employee NATURAL join department
where eno = 7782; 

-- 5���� �� 
select * from salgrade; 
--5 *14��ŭ�� ���� ����
select * from employee e , salgrade s;

-- 14 * 4 *5  /3������.
select * from employee e , department d, salgrade s; 

--3���� ������ �ϸ� ������ �°� ���ϼ� �ִ�.
select * from employee e , department d, salgrade s
where e.dno = d.dno and e.salary between s.losal and s.hisal and e.eno = 7788;

--������ ������ �� 
select * from employee e , salgrade s 
where e.salary between s.losal and s.hisal;

SELECT e.ename FROM employee e, salgrade s 
WHERE e.salary BETWEEN s.losal AND s.hisal
AND s.grade = 4;

--self join 
select * from employee e, department d;

select * from employee e1, employee e2;

select * from employee where eno = 7369;
select * from employee where eno = 7902;

select * from employee e, department d
where e.dno = d.dno;

select e1.eno, e1.ename, e1.manager, e2.eno, e2.ename
from employee e1, employee e2 where e1.manager = 7788;

--���� ���̺� ���������� null�ų� ������ ���̺��� null�̸� ������ ���ܵȴ�. 
--inner join out jon  Ư���� ������ ������ inner ���� 
--null���� ���� �ȵȳ�
select e1.eno, e1.manager, e2.eno from employee e1, employee e2
where e1.manager = e2.eno; 
--null���� ���� �ȳ� join�� on�������� �� ǥ���Ҳ��� �������

--inner join
select e1.eno, e1.manager, e2.eno 
from employee e1 left OUTER join employee e2 on e1.manager = e2.eno;

--inner join
select e1.eno, e1.ename, e1.manager, e2.eno, e2.ename
from employee e1 join employee e2
on e1.manager = e2.eno; 

--left join ���ʿ� ���ԾȽ�Ų���� ���Խ�Ŵ
select e1.eno, e1.ename, e1.manager, e2.eno, e2.ename
from employee e1 left outer join employee e2
on e1.manager = e2.eno; 
--left join Oracle ����.
SELECT e1.eno, e1.ename, e1.manager, e2.eno, e2.ename
FROM employee e1, employee e2
WHERE e1.manager = e2.eno(+); 

--right outer �����ʿ� ���ԾȽ�Ų���� ���Խ�Ŵ
select e1.eno, e1.ename, e1.manager, e2.eno, e2.ename
from employee e1 right outer join employee e2
on e1.manager = e2.eno; 

--right outer������  Oracle ����
SELECT e1.eno, e1.ename, e1.manager, e2.eno, e2.ename
FROM employee e1, employee e2
WHERE e1.manager(+) = e2.eno;

--full out �Ѵ� ���Խ�Ű�°� (���� ������ ��ü ��ȭ ��Ų��) oracle ������ ����
select e1.eno, e1.ename, e1.manager, e2.eno, e2.ename
from employee e1 full outer join employee e2
on e1.manager = e2.eno; 

--165p ������� �Ҽӵ� �μ����� ���
select * from employee, department where employee.dno= department.dno;

--166p �����ȣ,����̸�, �ҼӺμ� �̸�ã�� ���� 
select eno, ename, dname from employee, department
where employee.dno = department.dno and eno = 7788;

--167p Į���� �տ� ���̺� ����ϱ�
select employee.eno , employee.ename, department.dname, employee.dno
from employee, department where employee.dno = department.dno
and employee.eno=7788;

--168p ���
select eno, ename, dname, employee.dno from employee, department
where employee.dno = department.dno and eno = 7788;

--168p ���̺� ���
select e.eno, e.ename, d.dname, d.dno from employee e , department d
where e.dno = d.dno and e.eno = 7788;

--169p ���� Į���� ���̺� ��Ī�� ������� ���� ����� ��
select e.eno, e.ename, d.dname, dno from employee  e natural join department d
where e.eno = 7788;

--170p using �� ����ϱ�
select e.eno, e.ename, d.dname, dno from employee e join department d using(dno)
where e.eno = 7788;

--170p on�� ����ϱ�
select e.eno, e.ename, d.dname, e.dno from employee e join department d
on e.dno = d.dno where e.eno = 7788;

--171p �޿� ��� ���̺� ����ϱ�
select * from salgrade;

--171p ������� �޿���� ����ϱ�
select ename, salary, grade from employee, salgrade
where salary between losal and hisal;

--172p 3���� ���̺� �����ϱ�
select e.ename, d.dname, e.salary, s.grade from employee e, department d, salgrade s
where e.dno = d.dno and salary between losal and hisal;

--173p where ���� ����� self  join
select employees.ename as "����̸�", manager.ename as"���ӻ�� �̸�"
from employee employees, employee manager 
where employees.manager = manager.eno;

--174p join ~on���� ����� self join
select employees.ename ||'�� ���ӻ����'|| manager.ename
from employee employees join employee manager
on employees.manager = manager.eno;

--176p (+)��ȣ�� ����� OUTER JOIN
select employees.ename ||'�� ���ӻ���� '|| manager.ename
from employee employees join employee manager
on employees.manager = manager.eno(+);

--176p ANSI OUTER JOIN  ����ϱ�
select employees.ename ||'�� ���ӻ����'|| manager.ename
from employee employees left outer join employee manager
on employees.manager = manager.eno;

--ȥ���غ��� 1
select e.ename, e.dno, d.dname from employee e, department d
where e.dno = d.dno and e.ename ='SCOTT';

--ȥ���غ��� 2
select ename, dname, loc from employee e join department d
on e.dno = d.dno;

--ȥ���غ��� 3 
select dno, job, loc
from employee inner join department using(dno) where dno = 10;

--ȥ���غ��� 4
select ename, dname, loc from employee natural join department
where commission>0;

--ȥ���غ��� 5
select e.ename, d.dname from employee e, department d
where e.dno = d.dno and e.ename like '%A%';

--ȥ���غ��� 6
select ename, job, dno, dname from employee natural join department
where loc ='NEW YORK';

--ȥ���غ��� 7
select emp.ename as "Employee", emp.manager as "Emp#", mgr.eno as "Manager",
mgr.ename as"Mgr#" from employee emp, employee mgr
where emp.manager = mgr.eno;

--ȥ���غ��� 8
select emp.ename as "Employee", emp.manager as "Emp#", mgr.eno as "Manager", mgr.ename as "Mgr#"
from employee emp, employee mgr where emp.manager =mgr.eno(+) order by emp.eno desc;

--ȥ���غ��� 9
select me.ename as �̸�, me.dno as �μ���ȣ, other.ename as ���� from employee me, employee other
where me.dno = other.dno and me.ename='SCOTT' and other.ename!='SCOTT';

--ȥ���غ��� 10
select other.ename, other.hiredate from employee ward, employee other 
where other.hiredate>ward.hiredate and ward.ename='WARD' order by hiredate;

--ȥ���غ��� 11
select other.ename, other.hiredate, mgr.ename, mgr.hiredate from employee mgr,employee other
where other.manager=mgr.eno and other.hiredate <= mgr.hiredate;