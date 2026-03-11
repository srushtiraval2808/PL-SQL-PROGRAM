--program to demonstrate the user of zero divide named exception 
set serveroutput on
declare 
	no1 number:=&no1;
	no2 number:=&no2;
	ans number;
begin
	dbms_output.put_line('entereds no1='||no1);
	dbms_output.put_line('entereds no2='||no2);	
	ans:=no1/no2;
	dbms_output.put_line('no1/no2='||ans);
		exception
			when zero_divide then
			dbms_output.put_line('you cant divide number by zero');
			dbms_output.put_line('enter no2s value>0');
end;
/