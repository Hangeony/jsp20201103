SELECT sysdate FROM dual; --오늘날자
SELECT sysdate FROM employee; --현재 날짜

SELECT LOWER(ename) AS ename FROM employee;  --소문자
SELECT UPPER(ename) AS ename FROM employee;  --대문자
SELECT initcap(ename) AS ename FROM employee; --첫번쨰 대글자 그뒤 소문자 
SELECT initcap('oracle mania') AS FROM dual; --첫번쨰 글짜 대문자

select * from employee where ename like '%A%'; --A가 들어간 사람 찾기
select ename, length(ename) length from employee; --글자수

select ename, lengthb(ename) len from employee; -- 이름글자수
select lengthb('웹프로그래밍') from dual; --바이트

select Length('웹프로그래밍') from dual;-- 글자수

select concat (ename, job) from employee; --문자열 이어주는거 
select ename || job from employee; --문자열 이어주는거 2
select ename || '     ,    ' || job from employee; -- 보기좋은 이어주는거

select ename, substr(ename, 1,2) from employee; --java랑 다르게 첫번째 파라미터는 1이다. 1시작위치 2몇개 이런게 있다고 생각하고 검색하면됨 
select ename, substr(ename, -2,2) from employee; --뒤에서부터 2개 외울필요 x

select * from employee where substr(hiredate, 1, 2) = '87';
SELECT * FROM employee WHERE substr(to_char(hiredate,'YYYY-MM-DD'), 1, 4) = '1987'; --1987을 문자열로 받아서 사용해야 안전함

select ename, instr(ename, 'AL') from employee; --AL의 문자열을 가져옴 없는경우 0으로 표시
select ename ,instr(ename, 'T',2,2)from employee; -- T가 2번쨰문자열부터 두번쨰 t에 위치를 첫번째 인덱스부터 찾는다. 설명하기도 힘들다 !
select instr('Tiger Tea Tire Ton ', 'T',2,2)from dual; -- 위랑 동일 

select ename, lpad(ename, 10, '#') from employee; --10개의 앞자리를 #으로 채워둠 10글자에 맞춰서 #이 들어감
select ename, rpad(ename, 10, '*') from employee; -- 이건 뒤에자리를 *로 채움

select trim('   abc   ') from dual; --회사에서 많이씀 자기테이프에 공간에 끊어져서 나누워짐 문자열이 항상 다차있는게 아니여서 빈공간이 많이 남았음
select rtrim('    abc   ')from dual; --오른쪽 여백재거
select ltrim('    abc     ')from dual; --왼쪽 공백제거

--102p 대소문자 변환 함수
select 'oracle mania', upper('oracle'), lower('oracle'), initcap('oracle') from dual;

--103p 대소문자 변환 함수를 칼럼에 사용
select ename ,lower(ename),job, initcap(job) from employee;

--103p scott 사원검색
select eno, ename, dno from employee where lower(ename) ='scott';

--104p  사원 검색 검색결과 안나옴 ? ;;
select eno, ename, dno from employee where initcap(ename)='Scott';

--105p 영문과 한글의 길이 구하기
select length ('OracleMania'), length('오라클매니아') from dual;
--105p 영문과 한글의 바이트 수 구하기
select lengthb('OracleMania'), lengthb('오라클매니아') from dual;

--106p 문자 결합하기
select 'oracle' , 'mania', concat ('orcle','mania') from dual;

--106p 문자열의 일부만 추출하기
select substr('oracle mania', 4, 3), substr('oracle mania', -4,3) from dual;

--107p 이름이n자로 끝나는 사원 찾기
select * from employee where substr(ename, -1, 1) = 'N';

--107p 87년도에 입사한 사원 표시하기
select *from employee where substr(hiredate, 1, 2) = '87';

--108p substrb 함수로 영문 추출하기 
select substr ('oracle maina', 4,3), substrb('oracle maina',4,3) from dual;

--109p 문자 위치 찾기
select instr('Oracle maina' , 'a') from dual;

--109p 특정위치 이후의 문자 위치 찾기
select instr('Oracle maina', 'a',5,2) from dual;

--109p instrb함수로 위치잦기 ?? 이상함;; ㅅㅂ  왜만든거야 시발아
select instr('오라클매니아', '라'), instrb('오라클매니아', '라') from dual;

--110p 사원 검색하기
select * from employee where instr(ename, 'R' , 3, 1)=3;

--110p 왼쪽 자리를 특정기호로 채우기
select LPAD (salary, 10, '*') from employee;

--111p 오른쪽자리를 특정기호로 채우기
select rpad (salary, 10, '*') from employee;

--112p 한쪽 공백제거
select 'Oracle maina', 
ltrim('  Oracle maina  '), 
rtrim('   Oracle maina   ') from dual;

--112p 특정 문자제거
select 'Oracle Maina', trim('O' from 'Oraclemaina') from dual; --앞뒤 똑같은 문자열이 있으면  같이 지워짐

--앞뒤 공백제거
select trim ('     Oracle  maina        ')from dual;
