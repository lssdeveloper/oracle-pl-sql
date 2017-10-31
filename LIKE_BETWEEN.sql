select * from TITULO_RECEBER where DT_VENCIMENTO BETWEEN '05/03/2017' and '19/05/2017';
--ou
select * from TITULO_RECEBER where DT_VENCIMENTO >= '05/03/2017' and DT_VENCIMENTO <='19/05/2017';
--ou
select * from TITULO_RECEBER where DT_VENCIMENTO not BETWEEN '05/03/2017' and '19/05/2017';
--like
select * from PESSOA_FISICA where NM_PESSOA_FISICA like 'M%';--MARIA
select * from PESSOA_FISICA where NM_PESSOA_FISICA like 'RI%'; --não tem retorno
select * from PESSOA_FISICA where NM_PESSOA_FISICA like 'RIA%'; --não tem retorno
select * from PESSOA_FISICA where NM_PESSOA_FISICA like '%RI%';--MARIA
select * from PESSOA_FISICA where NM_PESSOA_FISICA like '%RI';--não tem retorno
select * from PESSOA_FISICA where NM_PESSOA_FISICA like '%RIA';--MARIA

