--desbloqueando o usuario
ALTER USER exemplo identified by oracle123 account unlock;
--dando privilégios
GRANT create session,create table,create view TO exemplo;
--dando privilégios com opção de ADMIN
GRANT create session,create table,create view TO exemplo WITH ADMIN OPTION;

SELECT 
*
FROM  
  dba_users
  
select * from v$session where username='EXEMPLO';

alter system kill session '10, 35';
alter system kill session '49, 533';
alter system kill session '93, 175';
alter system kill session '95, 169';
alter system kill session '139, 217';

drop user EXEMPLO;

--verifica as sessões e processos deste usuário
select s.sid, s.serial#, s.status, p.spid 
from v$session s, v$process p 
where s.username = 'exemplo' 
and p.addr (+) = s.paddr; 

--se for o caso matar a sessão
 alter system kill session '<sid>,<serial#>';
 
select job from dba_jobs where log_user='exemplo';

select 
queue_table, 
qid 
from 
dba_queues 
where owner='exemplo';

select 
apply_name 
from 
dba_apply 
where 
queue_owner='exemplo'; 

select 
capture_name, 
queue_name 
from 
dba_capture 
where 
queue_owner='exemplo'; 

select 
propagation_name 
from 
dba_propagation 
where 
source_queue_owner='exemplo' 
or 
destination_queue_owner='exemplo'; 
