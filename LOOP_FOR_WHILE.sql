--FOR LOOP
begin
    for i in 1..10 loop
        DBMS_OUTPUT.PUT_LINE('10 x '||i||' = '||(10*i));
    end loop;    
end;

--LOOP Aninhado

begin
    for x in 2..4 loop
        DBMS_OUTPUT.PUT_LINE('Tabuada de :' || x);
        DBMS_OUTPUT.PUT_LINE('******************');
        
        for y in 1..12 loop
            DBMS_OUTPUT.PUT_LINE(x || ' X ' || y || ' = ' || (x*y));        
        end loop;    
        DBMS_OUTPUT.PUT_LINE('******************');
    end loop;
end;

--WHILE LOOP
declare 
    num1 number(2) :=10;

begin
    while num1 <= 20 loop
        DBMS_OUTPUT.PUT_LINE('Valor: ' || num1);
        num1 := num1 + 1;
    end loop;
end;

begin
    for x in 2..10 loop
        DBMS_OUTPUT.PUT_LINE('Valor: ' || x);
        
        if x = 6 then
            DBMS_OUTPUT.PUT_LINE('Finalizando o loop no ' || x);
            exit;
        end if;
    end loop;
end;