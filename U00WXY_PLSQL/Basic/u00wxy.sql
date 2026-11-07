DECLARE
    Sugar Number:=1;
    Terulet Number;
BEGIN
    Terulet:= POWER(Sugar,2) *PI();
    DBMS_OUTPUT.PUT_LINE(
        'Sugar: '  || Sugar || ' Terület: ' ||Terulet
        );
END;



DECLARE
    Kerület number;
    x number:=1;
    y number:=5;
BEGIN
    FOR i IN x..y LOOP
        Kerület:= 2*1*PI();
        DBMS_OUTPUT.put_line('Sugar: ' '||i||' Kerület: '
         || Kerület);
END;

CREATE OR REPLACE Procedure Kor (x in number, y in number) IS
     Kerület number;
BEGIN
    FOR i IN x..y LOOP
    Kerület := 2*i*PI();
    DBMS__OUTPUT.PUT_LINE('Sugar: ' ||i||' Kerület: '
    ||Kerület);
    END LOOP;
END;    

CREATE OR REPLACE Procedure Circler (x in number,y in number) IS
    Circumference number;
    Area number;
BEGIN
    For i IN x..y LOOP
    Circumference:=2*i*PI();
    Area :=POWER(i,2)*PI();
    DBMS_OUTPUT.PUT_LINE('Radius: ' ||i||' Circumference: '
    ||Circumference||' Area: '||Area);
    END LOOP;
END;

CREATE TABLE Korok (
    Sugar NUMBER,
    Kerulet NUMBER,
    Terulet NUMBER
);

CREATE or REPLACE Procedure Circler (x in number, y in number) IS
    Kerulet number;
    Terulet number;
BEGIN
 FOR i IN x..y LOOP
 Kerulet :=2*i*PI();
 Terulet := POWER(i,2)*PI();
 INSERT INTO Korok VALUES(i,Kerulet, Terulet);
 END LOOP;
 DBMS.OUTPUT.PUT_LINE('A kör táblába berkerültek az adatok.');
 END;


Select * From Korok;


