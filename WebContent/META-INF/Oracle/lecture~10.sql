-- 14행 8열
SELECT * FROM employee;
-- 4행 3열
SELECT * FROM department;
-- 두개의 테이블 융합식  14행 * 4행
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

--join 사용  같은 컬럼명을 분석해서 잘 볶아낸다. 
select * from employee NATURAL join department; 
--7782사원번호를 가진 사람 출력
select * from employee NATURAL join department
where eno = 7782; 

-- 5개의 행 
select * from salgrade; 
--5 *14만큼의 행이 생김
select * from employee e , salgrade s;

-- 14 * 4 *5  /3개융합.
select * from employee e , department d, salgrade s; 

--3개의 조인을 하면 조건을 맞게 줄일수 있다.
select * from employee e , department d, salgrade s
where e.dno = d.dno and e.salary between s.losal and s.hisal and e.eno = 7788;

--범위를 지정할 때 
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

--왼쪽 테이블에 조인조건이 null거나 오른쪽 테이블이 null이면 무조건 제외된다. 
--inner join out jon  특별히 말하지 않으면 inner 조인 
--null값이 포함 안된놈
select e1.eno, e1.manager, e2.eno from employee e1, employee e2
where e1.manager = e2.eno; 
--null값이 포함 된놈 join은 on기준으로 뭘 표시할껀지 명시해줌

--inner join
select e1.eno, e1.manager, e2.eno 
from employee e1 left OUTER join employee e2 on e1.manager = e2.eno;

--inner join
select e1.eno, e1.ename, e1.manager, e2.eno, e2.ename
from employee e1 join employee e2
on e1.manager = e2.eno; 

--left join 왼쪽에 포함안시킨것을 포함시킴
select e1.eno, e1.ename, e1.manager, e2.eno, e2.ename
from employee e1 left outer join employee e2
on e1.manager = e2.eno; 
--left join Oracle 문법.
SELECT e1.eno, e1.ename, e1.manager, e2.eno, e2.ename
FROM employee e1, employee e2
WHERE e1.manager = e2.eno(+); 

--right outer 오른쪽에 포함안시킨것을 포함시킴
select e1.eno, e1.ename, e1.manager, e2.eno, e2.ename
from employee e1 right outer join employee e2
on e1.manager = e2.eno; 

--right outer오른쪽  Oracle 문법
SELECT e1.eno, e1.ename, e1.manager, e2.eno, e2.ename
FROM employee e1, employee e2
WHERE e1.manager(+) = e2.eno;

--full out 둘다 포함시키는거 (왼쪽 오른쪽 합체 진화 시킨것) oracle 문법이 포함
select e1.eno, e1.ename, e1.manager, e2.eno, e2.ename
from employee e1 full outer join employee e2
on e1.manager = e2.eno; 

--165p 각사원들 소속된 부서정보 얻기
select * from employee, department where employee.dno= department.dno;

--166p 사원번호,사원이름, 소속부서 이름찾기 오류 
select eno, ename, dname from employee, department
where employee.dno = department.dno and eno = 7788;

--167p 칼럼명 앞에 테이블 명시하기
select employee.eno , employee.ename, department.dname, employee.dno
from employee, department where employee.dno = department.dno
and employee.eno=7788;

--168p 요약
select eno, ename, dname, employee.dno from employee, department
where employee.dno = department.dno and eno = 7788;

--168p 테이블 요약
select e.eno, e.ename, d.dname, d.dno from employee e , department d
where e.dno = d.dno and e.eno = 7788;

--169p 조인 칼럼에 테이블 별칭을 사용하지 않은 경우의 예
select e.eno, e.ename, d.dname, dno from employee  e natural join department d
where e.eno = 7788;

--170p using 절 사용하기
select e.eno, e.ename, d.dname, dno from employee e join department d using(dno)
where e.eno = 7788;

--170p on절 사용하기
select e.eno, e.ename, d.dname, e.dno from employee e join department d
on e.dno = d.dno where e.eno = 7788;

--171p 급여 등급 테이블 출력하기
select * from salgrade;

--171p 사원별로 급여등급 출력하기
select ename, salary, grade from employee, salgrade
where salary between losal and hisal;

--172p 3개의 테이블 조인하기
select e.ename, d.dname, e.salary, s.grade from employee e, department d, salgrade s
where e.dno = d.dno and salary between losal and hisal;

--173p where 절을 사용한 self  join
select employees.ename as "사원이름", manager.ename as"직속상관 이름"
from employee employees, employee manager 
where employees.manager = manager.eno;

--174p join ~on절을 사용한 self join
select employees.ename ||'의 직속상관은'|| manager.ename
from employee employees join employee manager
on employees.manager = manager.eno;

--176p (+)기호를 사용한 OUTER JOIN
select employees.ename ||'의 직속상관은 '|| manager.ename
from employee employees join employee manager
on employees.manager = manager.eno(+);

--176p ANSI OUTER JOIN  사용하기
select employees.ename ||'의 직속상관은'|| manager.ename
from employee employees left outer join employee manager
on employees.manager = manager.eno;

--혼자해보기 1
select e.ename, e.dno, d.dname from employee e, department d
where e.dno = d.dno and e.ename ='SCOTT';

--혼자해보기 2
select ename, dname, loc from employee e join department d
on e.dno = d.dno;

--혼자해보기 3 
select dno, job, loc
from employee inner join department using(dno) where dno = 10;

--혼자해보기 4
select ename, dname, loc from employee natural join department
where commission>0;

--혼자해보기 5
select e.ename, d.dname from employee e, department d
where e.dno = d.dno and e.ename like '%A%';

--혼자해보기 6
select ename, job, dno, dname from employee natural join department
where loc ='NEW YORK';

--혼자해보기 7
select emp.ename as "Employee", emp.manager as "Emp#", mgr.eno as "Manager",
mgr.ename as"Mgr#" from employee emp, employee mgr
where emp.manager = mgr.eno;

--혼자해보기 8
select emp.ename as "Employee", emp.manager as "Emp#", mgr.eno as "Manager", mgr.ename as "Mgr#"
from employee emp, employee mgr where emp.manager =mgr.eno(+) order by emp.eno desc;

--혼자해보기 9
select me.ename as 이름, me.dno as 부서번호, other.ename as 동료 from employee me, employee other
where me.dno = other.dno and me.ename='SCOTT' and other.ename!='SCOTT';

--혼자해보기 10
select other.ename, other.hiredate from employee ward, employee other 
where other.hiredate>ward.hiredate and ward.ename='WARD' order by hiredate;

--혼자해보기 11
select other.ename, other.hiredate, mgr.ename, mgr.hiredate from employee mgr,employee other
where other.manager=mgr.eno and other.hiredate <= mgr.hiredate;