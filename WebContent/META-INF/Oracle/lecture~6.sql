select to_char(sysdate) from dual; -- 국가마다 달름 한굴로 깔려있어서 연도별로 나온다는 보장 X
select to_char(sysdate, 'yyyy') from dual; --년도
select to_char(sysdate, 'yy') from dual; --년도 2글자
select to_char(sysdate, 'mm') from dual; --달
select to_char(sysdate, 'dd') from dual; --일
select to_char(sysdate, 'mon') from dual; --달
select to_char(sysdate, 'yyyy-mm-dd') from dual; --날짜 풀

select to_char(sysdate, 'hh') from dual; --시간
select to_char(sysdate, 'hh24') from dual; -- 오후
select to_char(sysdate, 'mi') from dual; -- 분
select to_char(sysdate, 'ss') from dual; --초
select to_char(sysdate, 'hh:mi:ss') from dual; --합체 진화 한거

select to_char(sysdate, 'yyyy-mm-dd hh:mi:ss') from dual; -- 듀얼 

--number to char
select to_char(56789) from dual;
select to_char(456789456, '999,999,999')from dual; --9개의 숫자
select to_char(456789456, '000,000,000,000')from dual; --앞자리를 0으로 채움
select to_char(456789456, 'L999,999,999')from dual; --통화기호 표시
select to_char(456789456, 'L999,999,999.999')from dual; --소수점자리를 0으로 표시 

--char to date
select to_date('2020-11-13', 'yyyy-mm-dd')from dual;
select to_date('20201113', 'yyyymmdd')from dual;
select to_date('2020/11/13', 'yyyy-mm-dd')from dual; --가능하면 맞춰서 써야함
select to_char(to_date('2020-11-13 01:31:20', 'yyyy-mm-dd hh:mi:ss'), 'yyyy-mm-dd hh:mi:ss')from dual;

--char to date
select to_number('200000')from dual;
select to_number('200,000', '999,999') from dual;




--125p 날짜함수 사용하기
select ename, hiredate, to_char(hiredate,'yy-mm'), to_char(hiredate,'yyyy/mm/dd day') from employee;--시간과 날짜를 케릭터로 변환하여 표현함

--126p 현재 날짜와 시간 출력하기
select to_char(sysdate, 'yyyy/mm/dd, hh24:mi:ss') from dual;

--127p 급여를 출력하면서 통화 기호 덧붙히기
select ename, to_char(salary,'l999,9999')from employee;

--128p 1981년 2월 20일에 입사한 사원 검색하기 원래 안됨 개같은거 혼자 뻘짓함
select ename, hiredate 
from employee
where hiredate = 19810220;

--128p 날짜형으로 변환하기
select ename, hiredate
from employee
where hiredate = to_date(19810220,'yyyy-mm-dd');

--129p 숫자형태의 문자 빼기
select to_number('100,000', '999,999')
- to_number('50,000', '999,999') 
from dual;


--혼자 해보기 1번입사년도와 달출력 하시오.
select substr(hiredate, 1,2)년도, substr(hiredate, 4,2)달 from employee;

--혼자해보기 2번 substr 함수를 사용하여 4월에 입사한 사원을 출력하시오.
select * from employee where substr(hiredate, 4,2)='04';

--혼자해보기 3번 mod함수를 사용하여 사원번호가 짝수인 사람만 출력하시오.
select * from employee where mod(eno , 2)=0;

--혼자해보기 4번 입사일 연도는 2자리 월은 숫자로 표시히고 요일은 약어로 지정하여 출력 하시오.
select hiredate, to_char(hiredate,'yy/mon/dd/dy') from employee;

--혼자해보기 5번 올해 몇일이 지났는지 출력하시오.
select trunc(sysdate- to_date('2020/01/01','yyyy/mm/dd')) from dual;

--혼자해복 6번 사원들의 상관 사번을 출력하되 상관이 없는 사원에 대해서는 null 값대신 0으로 출력
select eno, ename, nvl2(manager, manager, 0) as manager from employee;

--혼자해보기 7번 decode 함수로 직급에 따라 급여를 인상하도록 하시오. 직급이 anaityst인 사원은 200 salesman인사원....
SELECT eno, ename, JOB, salary, decode(JOB, 'ANALYST', salary +200, 'SALESMAN', salary+180,
'MANAGER', salary+150, 'CLERK',salary +100, salary)AS update_salary FROM employee;