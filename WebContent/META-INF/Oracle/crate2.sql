--������� �߰�
CREATE TABLE emp_copy
AS
SELECT *FROM employee;

SELECT * FROM emp_copy;

SELECT * FROM  user_constraints
WHERE table_name='EMPLOYEE';

SELECT * FROM  user_constraints
WHERE table_name='EMP_COPY';
--���� ������ copy�ȵ�
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

--������� ����
ALTER TABLE emp_copy
DROP CONSTRAINT emp_copy_ename_nn;

ALTER TABLE emp_copy
DROP CONSTRAINT SYS_C007380;

ALTER TABLE dept_copy
DROP CONSTRAINT DEPT_COPY_DNO_PK;

ALTER TABLE emp_copy
DROP CONSTRAINT EMP_COPY_DNO_PK;
--�����̸Ӹ� Ű�� �����ϴµ� �����Ұ��� �������� �ȵǱ� ������ �������� ���� ���������.


ALTER TABLE dept_copy
DROP PRIMARY KEY CASCADE;
--���� �������� �����ϰ��ִ� ���� ����� ���������� �������� ����ȴ�.

--ȥ���غ���1 
CREATE TABLE emp_sample
AS SELECT * FROM employee WHERE 1=0;
ALTER TABLE emp_sample
ADD CONSTRAINT my_emp_copy PRIMARY KEY(eno);

SELECT * FROM  user_constraints
WHERE table_name='EMP_SAMPLE';

--ȥ���غ���2
CREATE TABLE dept_sample
AS SELECT * FROM department WHERE 1=0;
ALTER TABLE dept_sample
ADD CONSTRAINT my_dept_pk PRIMARY KEY(dno);
SELECT * FROM user_constraints
WHERE table_name='DEPT_SAMPLE';

--ȥ���غ���3
ALTER table emp_sample
ADD CONSTRAINT my_emp_dept_fk
FOREIGN KEY(dno) REFERENCES department(dno);
SELECT * FROM user_constraints
WHERE table_name='EMP_SAMPLE';

--ȥ���غ���4
ALTER TABLE emp_sample
ADD CONSTRAINT emp_commission_min CHECK (commission > 0);
SELECT * FROM user_constraints
WHERE table_name='EMP_SAMPLE';

select * from emp_sample;