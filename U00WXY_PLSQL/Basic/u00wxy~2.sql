DECLARE
 x NUMBER:= 5;
BEGIN
    IF x < 10 THEN
    dbms_output.put_line('A Szám kisebb mint 10');
    
    ELSIF x < 20 THEN
    dbms_output.put_line('A Szám kisebb mint 20');
    
    ELSIF x < 20 THEN
    dbms_output.put_line('A Szám kisebb mint 20');
    
    ELSE 
        dbms_output.put_line(' A szám 20 vagy nagyobb');
    END IF;
END;