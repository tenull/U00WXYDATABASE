DECLARE
    n number := 10;
BEGIN
    FOR i IN 1..10 LOOP
        dbms_output.put_line(TO_CHAR(i));
    END LOOP;
END;



DECLARE
    TYPE tomb is VARRAY(3) of NUMBER;
    
    arak tomb := tomb(1500000, 2200000, 1800000);
BEGIN
 FOR i IN 1..arak.COUNT LOOP
 dbms_output.put_line(arak(i));
 END LOOP;
END;


