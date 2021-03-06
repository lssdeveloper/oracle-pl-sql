--EXPRESSÕES COM OPERADORES ARITIMÉTICOS

SELECT
    first_name,
    salary,
    SALARY + 100        SAL_MAIS_100,
    SALARY - 100        SAL_MENOS_100,
    SALARY + (salary/100 * 10)     AS   "SAL_AUMENTADO_10%"
FROM
    employees
WHERE 
    department_id = 20;
    
--NO SQL SERVER SIMPLESMENTE FAZIA ASSIM
--SELECT 200 + 100 

--NO ORACLE PREFICA INFORMAR FROM DUAL

SELECT 200 + 100 SOMA FROM DUAL;