DECLARE 
	empn empll.empno%TYPE;
    empna empll.empname%TYPE;
    sal empll.salary%TYPE;
    grde empll.grade%TYPE;
    mins salgrade.minsal%TYPE;
    maxs salgrade.maxsal%TYPE;--yaha pe empno column ka name
 
  
  
  BEGIN
	dbms_output.put_line('Enter employee number :') ;
  empn := &empno ;
  --getDetails(consumerno,unitsconsumed);
  select e.empno, e.empname, e.salary, e.grade, s.minsal, s.maxsal into empn, empna, sal, grde, mins, maxs  
  from empll e, salgrade s where e.grade = s.grade and e.empno = empn;
  
  
--  dbms_output.put_line('Your total bill is '||ressum);
 -- insert into electricity_bill values (billid_seq.NEXTVAL,consumern,ressum,to_date(sysdate,'dd-mon-yyyy'));
  
EXCEPTION
  WHEN OTHERS THEN
  DBMS_OUTPUT.PUT_LINE('Employee DOESNOT EXIST');

END;
  
  
 -- create sequence billid_seq start with 111 increment by 1;

create table empll
(empno number primary key,
ename varchar2(20),
doj date,
salary number,
grade char(2));

insert into empll values(1001,Preetham,2001-01-01,1800,A);