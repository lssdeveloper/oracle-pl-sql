DROP TABLE TITULO_PAGAR_CLONE;
--É POSSÍVEL COLOCAR UM WHERE NA TABELA QUE SERÁ COPIADA 
CREATE TABLE TITULO_PAGAR_CLONE AS (SELECT NR_TITULO, CD_PESSOA_FISICA, VL_TITULO, VL_SALDO, DT_VENCIMENTO FROM TITULO_RECEBER);

SELECT * FROM TITULO_PAGAR_CLONE;

DESC TITULO_RECEBER;

DESC PESSOA_FISICA;