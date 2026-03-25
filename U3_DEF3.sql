set serveroutput on
DECLARE
    ename VARCHAR2(50) := '&Enter_Name';
    sal NUMBER;
BEGIN
    SELECT basicsal INTO sal
    FROM emp
    WHERE ename = ename;

    DBMS_OUTPUT.PUT_LINE('Salary: ' || sal);

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Employee not found');
END;
/