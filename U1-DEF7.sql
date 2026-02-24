--result calculating

set serveroutput on

declare
	xrollno number(10):=&xrollno;
	xm1 number(10);
	xm2 number(10);
	xm3 number(10);
	xm4 number(10);
	xm5 number(10);
	t number(10);
	p number(10);
	
begin
	
	select sub1,sub2,sub3,sub4,sub5 into xm1,xm2,xm3,xm4,xm5 from marks where rollno=xrollno;

t:=xm1+xm2+xm3+xm4+xm5;
p:=t/5;
	
if(xm1<40 or xm2<40 or xm3<40 or xm4<40 or xm5<40)
then
	update marks set 
	total=0,per=0,result='fail',grade='f'where rollno=xrollno;

elsif p>=40 and p<50
then
update marks set 
total=t,per=p,result='pass',grade='d' where rollno=xrollno;

elsif p>=50 and p<60
then
update marks set
total=t,per=p,result='pass',grade='c' where rollno=xrollno;

elsif p>=60 and p<70
then
update marks set
total=t,per=p,result='pass',grade='b' where rollno=xrollno; 

elsif p>=70 and p<100
then
update marks set
total=t,per=p,result='pass',grade='a' where rollno=xrollno;

else
	update marks set
	total=0,per=0,result='fail',grade='f' where rollno=xrollno;

end if;


dbms_output.put_line('success');

end;
/