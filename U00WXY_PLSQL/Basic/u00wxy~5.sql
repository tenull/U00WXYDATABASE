CREATE table auto1 (
 rsz char(6) primary key,
 tipus char(30),
 szin char(20),
 kor number(3),
 ar number(10)
);
 
 desc auto1;
 
 insert into auto1 values ('ABC500', 'OPEL CORSA', 'piros', 8, 8000000);
 
Select * from auto1;

  insert into auto1 values ('MCC325', 'OPEL INSIGNIA', 'fekete', 2, 68000000);
  insert into auto1 values ('BBM104', 'Suzuki Swift', 'piros', 5, 15000000);
  
  Select * from auto1;
  
declare
    x number(2) :=7;
begin
    update auto1 set ar=ar*0.9 where kor >= x;
end;

select * from auto1;


declare
    x auto1.ar%type;
begin
    select avg(ar) into x from auto1;
    dbms_output.put_line(x);
end;

select * from auto1;



declare
    a auto1.rsz%type :='RKU543';
    b auto1.tipus%type:='Kia';
    c auto1.szin%type:='barna';
    d auto1.kor%type:=7;
    e auto1.ar%type:=5000000;
begin 
    insert into auto1 values(a,b,c,d,e);
end;

select * from auto1;

declare 
    x auto1.kor%type:=7;
begin delete from auto1 where kor=x;
end;

select * from auto1;

CREATE TABLE Naplo
(
    Aadat NUMBER(10,2),
    Datum DATE,
    Szemely VARCHAR(20)
);

desc naplo;

declare 
    x auto1.ar%TYPE;
BEGIN 
    SELECT AVG(ar) INTO x FROM auto1;
    INSERT INTO Naplo VALUES (x, SYSDATE, USER);
END;

select * from Naplo;

desc naplo;