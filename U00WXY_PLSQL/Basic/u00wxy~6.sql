CREATE TABLE Auto2 (
ID number(4) PRIMARY KEY,
Rendszam varchar2(6),
Tipus varchar2(30),
Szin varchar2(20),
Kor number(3),
Ar number(10),
Muszaki_erv date
);

desc auto2;

BEGIN
INSERT INTO Auto2 VALUES(1,'ABC123','Opel Corsa','Piros',6,3200000,TO_DATE('05.08.2024','DD-MM-YYYY'));
INSERT INTO Auto2 VALUES(2,'QWJ612','Suzuki Alto','Kék',15,3200000,TO_DATE('03.12.2024','DD-MM-YYYY'));
END;

select * from Auto2;

CREATE OR REPLACE PROCEDURE Atlag AS
    b Auto2.Ar%TYPE;
BEGIN
SELECT AVG(Ar) INTO b FROM Auto2;
END;

BEGIN
    Atlag;
END;

CREATE OR REPLACE PROCEDURE Atlag AS
x Auto2.Ar%TYPE;
 xnt varchar(30);
BEGIN
SELECT AVG(Ar) INTO x FROM Auto2;
    xnt:= TO_CHAR(x,'9G999G999G999');
    xnt:=LTRIM(REPLACE(xnt,',',' '));
    dbms_output.put_line('Eredmény: ' ||xnt||' HUF');
END;

BEGIN
    Atlag;
END;


3.

CREATE OR REPLACE Function RendszamSzin(rszbe in char) RETURN char AS
    b auto2.szin%type;
BEGIN 
    SELECT Szin INTO b  FROM Auto2 WHERE Rendszam=rszbe;
    RETURN b;
END;

SELECT RendszamSzin('ABC123') FROM Dual;

DECLARE
    b char(40);
BEGIN
    b:= RendszamSzin('ABC123');
    dbms_output.put_line(b);
END;

CREATE OR REPLACE Procedure UjRekord (idbe in number, rszbe in char,
    tipbe in char, szinbe in char, korbe in number,
    arbe in number, muszbe in date) is
BEGIN
INSERT INTO Auto2 VALUES (idbe, rszbe, tipbe, szinbe, korbe, arbe, muszbe);
END;
select * from auto2;

BEGIN 
    UjRekord (14,'RRR555','FORD KUGA','Szürke',5,5200000,TO_DATE('05.06.2017','DD-MM-YYYY'));
END;

select * from auto2;

CREATE OR REPLACE Procedure AutoModosit (idbe in number, szinbe in char) is
BEGIN
    UPDATE Auto2 SET Szin = szinbe WHERE ID= idbe;
END;

BEGIN
    AutoModosit(14, 'Szürkeee');
END;

select * from auto2;

CREATE OR REPLACE Function SzinAtlagAr (szinbe in char) RETURN int AS
    atlag int:=0;
BEGIN
 SELECT avg(Ar) INTO atlag FROM Auto2 WHERE Szin= szinbe;
 RETURN atlag;
END;

SELECT SzinAtlagAr('Kék') from dual;

