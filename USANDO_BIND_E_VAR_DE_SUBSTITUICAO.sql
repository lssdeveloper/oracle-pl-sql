SELECT 1 C FROM DUAL WHERE C = :P;

--VARIÁVEIS BIND - USO :NomeVariavel Ex: :pNR_TITULO
--SELECT * FROM TITULO_RECEBER WHERE NR_TITULO = :pNR_TITULO AND CD_PESSOA_FISICA = :pCD_PESSOA_FISICA;

SELECT * FROM TITULO_RECEBER WHERE CD_PESSOA_FISICA = 11;

--USANDO VARIÁVEL DE SUBSTITUIÇÃO
DEFINE CD_PESSOA_FISICA = 11;

SELECT * FROM TITULO_RECEBER WHERE CD_PESSOA_FISICA = &CD_PESSOA_FISICA;

--OU

DEFINE WHERE_CD_PF = 'WHERE CD_PESSOA_FISICA = 11';

SELECT * FROM TITULO_RECEBER &WHERE_CD_PF;
