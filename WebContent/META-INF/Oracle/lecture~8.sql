select commission, nvl(commission, 0) from employee;

select sum(salary) from employee; -- 여러셀의 합계
select avg(salary) from employee; -- 평균
select min(salary) from employee; --최소값
select max(salary) from employee; --최대값

select count(salary)from employee; --salary값이 총14개 하나의 컬럼을 넣는경우가 있지만
select count(*) from employee; -- 몇개인지 확인하는 함수

select count(commission) from employee; -- 값이 없는null값은 포함안한다.
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

--145p 최근에 입사한 사원과 가장오래 전에 입사한 사원 찾기
select max(hiredate), min(hiredate) from employee;

--145p 사원들의 커미션 총액 출력
select sum(commission)as"커미션 총액" from employee;

--146p 전체 사원의 수 구하기
select count(*) as "사원수" from employee;

--146p 커미션을 받는 사원의 수 구하기
select count(commission)as"커미션 받은수" from employee;
select count(*) as"커미션 받은수" from employee where commission is not null;

--147p직업 종류의 개수 출력하기
select count(distinct job) as"직업 종류의 개수" from employee;