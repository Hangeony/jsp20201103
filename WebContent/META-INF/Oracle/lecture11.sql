SELECT manager FROM employee where eno = '7499';
--합체
SELECT ename FROM employee WHERE eno = '7698';

-- eno = (SELECT  manager FROM employee WHERE eno = 7499) < 서브쿼리
SELECT ename FROM employee WHERE  eno = (SELECT  manager FROM employee WHERE eno = 7499);

SELECT ename FROM employee WHERE salary > (SELECT salary FROM employee WHERE eno= 7499);
--서브커리 값이 하나 이상여야함 ,없는놈을 쓴다거나 WHERE절을 안넣으면 오류 생김.

--다중행 서브 쿼리
/*
In값이 하나라도 있으면
ANY(SOME) 하나이상이 만족
ALL 모두 만족함
*/
--IN 
SELECT dno FROM department  WHERE dno <= 20;
SELECT ename, dno FROM employee WHERE dno IN (SELECT dno FROM department  WHERE dno <= 20);
SELECT dno, MIN(salary) FROM employee GROUP BY dno;
--ANY

-- 189p SCOTT와 동일한 부서에서 일하는 사원 출력
SELECT ename, dno FROM employee 
WHERE dno = (SELECT dno from employee WHERE ename='SCOTT');

--190p 최소 급여를 받는 사원의 이름, 담당 업무, 급여출력하기
SELECT ename, job, salary FROM employee
WHERE salary = (SELECT min(salary) FROM employee);

--190p 메인 쿼리에 HAVING절 사용
SELECT dno, min(salary) FROM employee group by dno
having min(salary) >(select min(salary) from employee where dno = 30);

--192p다중 연산자인 IN 사용하기 각부서의 최저월급 WHERE 가로를 쓰면 다중사용가능하다.
SELECT eno, ename FROM employee WHERE (dno, salary) IN (SELECT dno, min(salary) FROM employee GROUP BY dno);

--혼자해보기 1 사원번호가 7788인 사원과 담당 업무가 같은 사원을 표시 하시오.(사원이름과 담당업무)
SELECT ename, job FROM employee WHERE JOB = (SELECT job FROM employee WHERE eno = 7788);

--혼자해보기 2 사원번호가 7499인 사원보다 급여가 많은 사원을 표시하시오.(사원이름과 담당업무)
SELECT ename,JOB FROM employee WHERE salary > (SELECT salary FROM employee WHERE eno = 7499);

--혼자해보기 3 최소 급여를 받는 사원의 이름, 담당 업무 및 급여를 표시하시오(그룹함수 사용)
SELECT ename, JOB, salary FROM employee WHERE salary =(SELECT min(salary) FROM employee);

--혼자해보기 4 평균급여가 가장 적은 사원의 담당 업무를 찾아 직급과 평균을 구하시오.
SELECT JOB, round(avg(salary),1) FROM employee GROUP BY JOB
HAVING round(avg(salary),1) = (SELECT MIN(round(avg(salary),1)) FROM employee GROUP BY JOB);

--혼자해보기 5 각 부서의 최소 급여를 받는 사원의 이름, 급여, 부서번호를 구하시오.
SELECT ename, salary, dno FROM employee  WHERE salary IN(SELECT MIN(salary)FROM employee GROUP BY JOB);