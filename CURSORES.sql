--CURSORES
declare
    cursor cursor_pf is
        select CD_PESSOA_FISICA, NM_PESSOA_FISICA from pessoa_fisica;
    
    pf_teste cursor_pf%rowtype;   
begin
   open cursor_pf;
   loop
   fetch cursor_pf into pf_teste;
   exit when cursor_pf%notfound;
        DBMS_OUTPUT.PUT_LINE('Código: ' || pf_teste.cd_pessoa_fisica || 
                            ' Pessoa: ' || pf_teste.nm_pessoa_fisica);
   end loop;
end;

--MALHANDO 
DESC PEDIDOS_CURSO;
DECLARE
    CURSOR CURSOR_PED IS
        SELECT P.NR_PEDIDO, P.CD_CNPJ, PJ.DS_RAZAO_SOCIAL FROM PEDIDOS_CURSO P 
            INNER JOIN PESSOA_JURIDICA_CURSO PJ ON P.CD_CNPJ=PJ.CD_CNPJ;
    
    PJ CURSOR_PED%ROWTYPE;
BEGIN
    OPEN CURSOR_PED;
    LOOP
    FETCH CURSOR_PED INTO PJ;
    EXIT WHEN CURSOR_PED%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE('Nº PEDIDO: ' || PJ.NR_PEDIDO);
        IF PJ.NR_PEDIDO > '35502' THEN
            DBMS_OUTPUT.PUT_LINE('PAGAMENTO REALIZADO COM SUCESSO');
        ELSE 
            DBMS_OUTPUT.PUT_LINE('PAGAMENTO PENDENTE');
            DBMS_OUTPUT.PUT_LINE('CNPJ - '|| PJ.CD_CNPJ || ' / ' ||
                    'RAZÃO SOCIAL - ' || PJ.DS_RAZAO_SOCIAL);
        END IF;
    END LOOP;

END;
            
            
