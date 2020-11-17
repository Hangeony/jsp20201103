SELECT sysdate FROM dual; --���ó���
SELECT sysdate FROM employee; --���� ��¥

SELECT LOWER(ename) AS ename FROM employee;  --�ҹ���
SELECT UPPER(ename) AS ename FROM employee;  --�빮��
SELECT initcap(ename) AS ename FROM employee; --ù���� ����� �׵� �ҹ��� 
SELECT initcap('oracle mania') AS FROM dual; --ù���� ��¥ �빮��

select * from employee where ename like '%A%'; --A�� �� ��� ã��
select ename, length(ename) length from employee; --���ڼ�

select ename, lengthb(ename) len from employee; -- �̸����ڼ�
select lengthb('�����α׷���') from dual; --����Ʈ

select Length('�����α׷���') from dual;-- ���ڼ�

select concat (ename, job) from employee; --���ڿ� �̾��ִ°� 
select ename || job from employee; --���ڿ� �̾��ִ°� 2
select ename || '     ,    ' || job from employee; -- �������� �̾��ִ°�

select ename, substr(ename, 1,2) from employee; --java�� �ٸ��� ù��° �Ķ���ʹ� 1�̴�. 1������ġ 2� �̷��� �ִٰ� �����ϰ� �˻��ϸ�� 
select ename, substr(ename, -2,2) from employee; --�ڿ������� 2�� �ܿ��ʿ� x

select * from employee where substr(hiredate, 1, 2) = '87';
SELECT * FROM employee WHERE substr(to_char(hiredate,'YYYY-MM-DD'), 1, 4) = '1987'; --1987�� ���ڿ��� �޾Ƽ� ����ؾ� ������

select ename, instr(ename, 'AL') from employee; --AL�� ���ڿ��� ������ ���°�� 0���� ǥ��
select ename ,instr(ename, 'T',2,2)from employee; -- T�� 2�������ڿ����� �ι��� t�� ��ġ�� ù��° �ε������� ã�´�. �����ϱ⵵ ����� !
select instr('Tiger Tea Tire Ton ', 'T',2,2)from dual; -- ���� ���� 

select ename, lpad(ename, 10, '#') from employee; --10���� ���ڸ��� #���� ä���� 10���ڿ� ���缭 #�� ��
select ename, rpad(ename, 10, '*') from employee; -- �̰� �ڿ��ڸ��� *�� ä��

select trim('   abc   ') from dual; --ȸ�翡�� ���̾� �ڱ��������� ������ �������� �������� ���ڿ��� �׻� �����ִ°� �ƴϿ��� ������� ���� ������
select rtrim('    abc   ')from dual; --������ �������
select ltrim('    abc     ')from dual; --���� ��������

--102p ��ҹ��� ��ȯ �Լ�
select 'oracle mania', upper('oracle'), lower('oracle'), initcap('oracle') from dual;

--103p ��ҹ��� ��ȯ �Լ��� Į���� ���
select ename ,lower(ename),job, initcap(job) from employee;

--103p scott ����˻�
select eno, ename, dno from employee where lower(ename) ='scott';

--104p  ��� �˻� �˻���� �ȳ��� ? ;;
select eno, ename, dno from employee where initcap(ename)='Scott';

--105p ������ �ѱ��� ���� ���ϱ�
select length ('OracleMania'), length('����Ŭ�ŴϾ�') from dual;
--105p ������ �ѱ��� ����Ʈ �� ���ϱ�
select lengthb('OracleMania'), lengthb('����Ŭ�ŴϾ�') from dual;

--106p ���� �����ϱ�
select 'oracle' , 'mania', concat ('orcle','mania') from dual;

--106p ���ڿ��� �Ϻθ� �����ϱ�
select substr('oracle mania', 4, 3), substr('oracle mania', -4,3) from dual;

--107p �̸���n�ڷ� ������ ��� ã��
select * from employee where substr(ename, -1, 1) = 'N';

--107p 87�⵵�� �Ի��� ��� ǥ���ϱ�
select *from employee where substr(hiredate, 1, 2) = '87';

--108p substrb �Լ��� ���� �����ϱ� 
select substr ('oracle maina', 4,3), substrb('oracle maina',4,3) from dual;

--109p ���� ��ġ ã��
select instr('Oracle maina' , 'a') from dual;

--109p Ư����ġ ������ ���� ��ġ ã��
select instr('Oracle maina', 'a',5,2) from dual;

--109p instrb�Լ��� ��ġ��� ?? �̻���;; ����  �ָ���ž� �ù߾�
select instr('����Ŭ�ŴϾ�', '��'), instrb('����Ŭ�ŴϾ�', '��') from dual;

--110p ��� �˻��ϱ�
select * from employee where instr(ename, 'R' , 3, 1)=3;

--110p ���� �ڸ��� Ư����ȣ�� ä���
select LPAD (salary, 10, '*') from employee;

--111p �������ڸ��� Ư����ȣ�� ä���
select rpad (salary, 10, '*') from employee;

--112p ���� ��������
select 'Oracle maina', 
ltrim('  Oracle maina  '), 
rtrim('   Oracle maina   ') from dual;

--112p Ư�� ��������
select 'Oracle Maina', trim('O' from 'Oraclemaina') from dual; --�յ� �Ȱ��� ���ڿ��� ������  ���� ������

--�յ� ��������
select trim ('     Oracle  maina        ')from dual;
