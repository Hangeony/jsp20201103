--제약사항 추가
CREATE TABLE emp_copy
AS
SELECT *FROM employee;

SELECT * FROM emp_copy;

SELECT * FROM  user_constraints
WHERE table_name='EMPLOYEE';

SELECT * FROM  user_constraints
WHERE table_name='EMP_COPY';
--제약 조건은 copy안됨
ALTER TABLE emp_copy
ADD PRIMARY KEY (eno);

CREATE TABLE dept_copy
AS
SELECT * FROM department;

ALTER TABLE dept_copy
ADD CONSTRAINT dept_copy_dno_pk PRIMARY KEY (dno);

SELECT * FROM  user_constraints
WHERE table_name='DEPT_COPY';

ALTER TABLE emp_copy
ADD constraint emp_copy_dno_pk
FOREIGN key(dno) references dept_copy(dno);

ALTER TABLE emp_copy
MODIFY ename CONSTRAINT emp_copy_ename_nn NOT NULL;

--제약사항 삭제
ALTER TABLE emp_copy
DROP CONSTRAINT emp_copy_ename_nn;

ALTER TABLE emp_copy
DROP CONSTRAINT SYS_C007380;

ALTER TABLE dept_copy
DROP CONSTRAINT DEPT_COPY_DNO_PK;

ALTER TABLE emp_copy
DROP CONSTRAINT EMP_COPY_DNO_PK;
--프라이머리 키를 참조하는데 참조할것이 없어지면 안되기 때문에 참조값을 먼저 지워줘야함.


ALTER TABLE dept_copy
DROP PRIMARY KEY CASCADE;
--실제 업무에서 참조하고있는 값을 지우고 싶을때에는 위에것을 쓰면된다.

--혼자해보기1 
CREATE TABLE emp_sample
AS SELECT * FROM employee WHERE 1=0;
ALTER TABLE emp_sample
ADD CONSTRAINT my_emp_copy PRIMARY KEY(eno);

SELECT * FROM  user_constraints
WHERE table_name='EMP_SAMPLE';

--혼자해보기2
CREATE TABLE dept_sample
AS SELECT * FROM department WHERE 1=0;
ALTER TABLE dept_sample
ADD CONSTRAINT my_dept_pk PRIMARY KEY(dno);
SELECT * FROM user_constraints
WHERE table_name='DEPT_SAMPLE';

--혼자해보기3
ALTER table emp_sample
ADD CONSTRAINT my_emp_dept_fk
FOREIGN KEY(dno) REFERENCES department(dno);
SELECT * FROM user_constraints
WHERE table_name='EMP_SAMPLE';

--혼자해보기4
ALTER TABLE emp_sample
ADD CONSTRAINT emp_commission_min CHECK (commission > 0);
SELECT * FROM user_constraints
WHERE table_name='EMP_SAMPLE';

select * from emp_sample;