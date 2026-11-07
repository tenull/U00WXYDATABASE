DECLARE
    t VARCHAR(20) :='Nagy TAmás';
BEGIN
    SELECT UPPER(t) INTO t FROM dual;
    dbms_output.put_line((t));
    
    SELECT LOWER(t) INTO t FROM dual;
    dbms_output.put_line((t));
end;

DECLARE
    d DATE;
BEGIN
    SELECT sysdate INTO d FROM dual;
    dbms_output.put_line(d);
END;


