select max(salary) from employee;
select max(salary) from employee;
select job, max(salary) from employee group by job; 

select job, avg(salary) from employee
group by job having avg(salary) >= 3000;

--149p 소속 부서별 급여를 부서번호와 함께 출력하기
select dno as"부서번호" , avg(salary) as"급여 평군" from employee group by dno;

--150p 소속 부서별 평균 급여 구하기
select avg(salary) as"급여평균" from employee group by dno;

--151p 다중 칼럼을 이용하여 그룹별로 검색하기
select dno, job, count(*), sum(salary) from employee group by dno, job order by dno, job;

--152p 부서별 급여 총액이 3000이상인 부서의 번호와 부서별 급여 총액 구하기
select dno, max(salary) from employee group by dno having max(salary) >=3000;

--152p 메니저를 재외하고 급여 총액이 5000이상인 직급별 급여 총액구하기
select job, count(*), sum(salary) from employee
where job not like '%MANAGER%'
group by job having sum(salary) >= 5000 order by sum(salary);

--153p 최고급여 출력하기
select max(avg(salary)) from employee group by dno;

--혼자해보기 1 모든사원의 급여 최고 액 최저액 총액 평균을 구하시오.
SELECT MAX(salary) as "Maximum",
MIN(salary) as "Minimum",
SUM(salary) as "Sum",
round(AVG(salary)) as "Average" FROM employee;

--혼자해보기 2 각담당업무 유형별로 최고액 최저액 퐁액 평균액을 출력하시오. 오류
select job as "job", max(salary) as " Maximum",
min(salary) as"Minimum", sum(salary) as"Sum",
round(avg(salary)) as"Average" from employee
group by job;

--혼자해보기 3 count(*) 함수를 이용하여 담당업무가 동일한 사원 수를 출력 하시오
select job , count(*) from employee group by job;

--혼자해보기 4 관지자 수를 나열하시오.
select count(manager) from employee;

--혼자해보기 5 최고금액, 급여 최저금액 차액을 출력
select max(salary) - min(salary) as difference from employee;

--혼자해보기 6 직급별 사원의 최저급여를 출력하시오.
select job, min(salary) from employee
group by job having not min(salary)<2000
order by min(salary) desc;

--혼자해보기 7 각부서 부서번호 사원수 부서내 모든사원의 평균 급여를 출력하시오
select dno, count(*) as "Number of People", round(avg(salary),2) as "Salary"
from employee group by dno order by dno asc;

--혼자해보기 8 각부서에 대해 부서번호 이름, 지역명, 사원수, 부서내 모든 사원의 평균급여를 구하시오 
select decode(dno, 10, 'ACCOUNTING', 20 ,'RESEARCH' , 30 ,'SALES' , 40,'OPERATIONS') as "dname",
decode(dno, 10, 'NEW YORK', 20, 'DALLAS', 30, 'CHICAGO', 40, 'BOSTON')as "LOCATION" ,
count(*) as "Number of People", round(avg(salary)) as "Salary" from employee group by dno;

--혼자해보기 9업무를 표시한 다음 해당 업무에 대해 부서별 급여 및 부서 10,20,30의 급여 총액을 구하시오. 오류
select job, dno,
decode(dno, 10 ,sum(salary)) as "부서 10",
decode(dno, 20, sum(salary)) as "부서 20",
decode(dno, 30, sum(salary)) as "부서 30",
sum(salary) as "총액"
from employee group by job ,dno order by dno;
