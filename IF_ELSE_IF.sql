declare
    num1 number := 10;
    num2 number := 50;
    resultado number;
    
begin
    resultado := MOD(num1, num2);  
    
    if resultado = 0 then
        DBMS_OUTPUT.PUT_LINE('O resto da divisão é zero!');
    elsif resultado > 0 then
        DBMS_OUTPUT.PUT_LINE('O resto da divisão não é zero!');
    else
        DBMS_OUTPUT.PUT_LINE('O resto da divisão é menor que zero!');
    end if; 
    
    resultado := num1 / num2; 
    DBMS_OUTPUT.PUT_LINE('O resultado do cálculo: ' || resultado);
    
end;