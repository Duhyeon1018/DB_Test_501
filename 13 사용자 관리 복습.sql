-- 15-1 
--①  , 시스템 계정, system/oracle
-- scott 계정 사용자 롤, DBA 권한을 줌. 
CREATE USER PREV_HW 
IDENTIFIED BY ORCL; 

--②  

GRANT CREATE SESSION TO PREV_HW; 

 

-- 15-2 

GRANT SELECT ON EMP TO PREV_HW;  

 

GRANT SELECT ON DEPT TO PREV_HW;  

 

GRANT SELECT ON SALGRADE TO PREV_HW;  


-- 15-3 

REVOKE SELECT ON SALGRADE FROM PREV_HW;  