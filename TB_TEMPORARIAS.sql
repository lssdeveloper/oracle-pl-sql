DROP TABLE TITULO_PAGAR;

CREATE GLOBAL TEMPORARY TABLE TITULO_PAGAR AS (SELECT * FROM TITULO_RECEBER);



INSERT INTO TITULO_PAGAR (NR_TITULO, CD_PESSOA_FISICA, VL_TITULO, VL_SALDO, DT_VENCIMENTO) 
VALUES ('15321', '1223', '2000', '2000', TO_DATE('2017-01-23 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

SELECT * FROM TITULO_PAGAR;

--SE COMITAR NÃO SERÁ POSSÍVEL VER OS DADOS INSERIDOS POIS SERÁ PERDIDA A SESSÃO
--COMMIT;