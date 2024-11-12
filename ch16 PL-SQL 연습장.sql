-- �ǽ� 16-1 

SET SERVEROUTPUT ON; -- ���� ����� ȭ�鿡 ��� 

BEGIN 
   DBMS_OUTPUT.PUT_LINE('Hello, PL/SQL!'); 
END; 

/ 

 

-- �ǽ� 16-2 
DECLARE 
   V_EMPNO NUMBER(4) := 7788; 
   V_ENAME VARCHAR2(10); 
BEGIN 
   V_ENAME := 'SCOTT'; 
   DBMS_OUTPUT.PUT_LINE('V_EMPNO : ' || V_EMPNO); 
   DBMS_OUTPUT.PUT_LINE('V_ENAME : ' || V_ENAME); 
END; 

/ 

 

-- �ǽ� 16-3 

DECLARE 

   V_EMPNO NUMBER(4) := 7788; 

   V_ENAME VARCHAR2(10); 

BEGIN 

   V_ENAME := 'SCOTT'; 

/* 

   DBMS_OUTPUT.PUT_LINE('V_EMPNO : ' || V_EMPNO); 

   DBMS_OUTPUT.PUT_LINE('V_ENAME : ' || V_ENAME); 

*/ 

END; 

/ 

 

-- �ǽ� 16-4 

DECLARE 

   V_EMPNO NUMBER(4) := 7788; 

   V_ENAME VARCHAR2(10); 

BEGIN 

   V_ENAME := 'SCOTT'; 

   DBMS_OUTPUT.PUT_LINE('V_EMPNO : ' || V_EMPNO); 

   DBMS_OUTPUT.PUT_LINE('V_ENAME : ' || V_ENAME); 

END; 

/ 

 

-- �ǽ� 16-5 

DECLARE 

   V_TAX CONSTANT NUMBER(1) := 3; 

BEGIN 

   DBMS_OUTPUT.PUT_LINE('V_TEX : ' || V_TAX); 

END; 

/ 

 

-- �ǽ� 16-6 

DECLARE 
   V_DEPTNO NUMBER(2) DEFAULT 10; 
BEGIN 
   DBMS_OUTPUT.PUT_LINE('V_DEPTNO : ' || V_DEPTNO); 

END; 

/ 

 

-- �ǽ� 16-7 

DECLARE 

   V_DEPTNO NUMBER(2) NOT NULL := 10; 

BEGIN 

   DBMS_OUTPUT.PUT_LINE('V_DEPTNO : ' || V_DEPTNO); 

END; 

/ 

 

-- �ǽ� 16-8 

DECLARE 

   V_DEPTNO NUMBER(2) NOT NULL DEFAULT 10; 

BEGIN 

   DBMS_OUTPUT.PUT_LINE('V_DEPTNO : ' || V_DEPTNO); 

END; 

/ 

 

-- �ǽ� 16-9 
DECLARE 
   V_DEPTNO DEPT.DEPTNO%TYPE := 50; 
BEGIN 
   DBMS_OUTPUT.PUT_LINE('V_DEPTNO : ' || V_DEPTNO); 
END; 

/ 

 

-- �ǽ� 16-10 

DECLARE 
   V_DEPT_ROW DEPT%ROWTYPE; 
BEGIN 
   SELECT DEPTNO, DNAME, LOC INTO V_DEPT_ROW 
     FROM DEPT 
    WHERE DEPTNO = 40; 

   DBMS_OUTPUT.PUT_LINE('DEPTNO : ' || V_DEPT_ROW.DEPTNO); 

   DBMS_OUTPUT.PUT_LINE('DNAME : ' || V_DEPT_ROW.DNAME); 
   DBMS_OUTPUT.PUT_LINE('LOC : ' || V_DEPT_ROW.LOC); 

END; 

/ 

 

-- �ǽ� 16-11 

DECLARE 
   V_NUMBER NUMBER := 13; 
BEGIN 
   IF MOD(V_NUMBER, 2) = 1 THEN 

      DBMS_OUTPUT.PUT_LINE('V_NUMBER�� Ȧ���Դϴ�!'); 

   END IF; 

END; 

/ 

 

-- �ǽ� 16-12 

DECLARE 
   V_NUMBER NUMBER := 14; 
BEGIN 
   IF MOD(V_NUMBER, 2) = 1 THEN 
      DBMS_OUTPUT.PUT_LINE('V_NUMBER�� Ȧ���Դϴ�!'); 
   END IF; 
END; 

/ 

 

-- �ǽ� 16-13 

DECLARE 
   V_NUMBER NUMBER := 14; 
BEGIN 
   IF MOD(V_NUMBER, 2) = 0 THEN 
      DBMS_OUTPUT.PUT_LINE('V_NUMBER�� Ȧ���Դϴ�!'); 
   ELSE 
      DBMS_OUTPUT.PUT_LINE('V_NUMBER�� ¦���Դϴ�!'); 
   END IF; 
END; 

/ 

 

-- �ǽ� 16-14 

DECLARE 
   V_SCORE NUMBER := 87; 
BEGIN 
   IF V_SCORE >= 90 THEN 
      DBMS_OUTPUT.PUT_LINE('A����'); 
   ELSIF V_SCORE >= 80 THEN 
      DBMS_OUTPUT.PUT_LINE('B����'); 
   ELSIF V_SCORE >= 70 THEN 
      DBMS_OUTPUT.PUT_LINE('C����'); 
   ELSIF V_SCORE >= 60 THEN 
      DBMS_OUTPUT.PUT_LINE('D����'); 
   ELSE 
      DBMS_OUTPUT.PUT_LINE('F����'); 
   END IF; 
END; 

/ 

 

-- �ǽ� 16-15 

DECLARE 
   V_SCORE NUMBER := 87; 
BEGIN 
   CASE TRUNC(V_SCORE/10) 
      WHEN 10 THEN DBMS_OUTPUT.PUT_LINE('A����'); 
      WHEN 9 THEN DBMS_OUTPUT.PUT_LINE('A����'); 
      WHEN 8 THEN DBMS_OUTPUT.PUT_LINE('B����'); 
      WHEN 7 THEN DBMS_OUTPUT.PUT_LINE('C����'); 
      WHEN 6 THEN DBMS_OUTPUT.PUT_LINE('D����'); 
      ELSE DBMS_OUTPUT.PUT_LINE('F����'); 
   END CASE; 
END; 

/ 

 

-- �ǽ� 16-16 

DECLARE 
   V_SCORE NUMBER := 87; 
BEGIN 
   CASE 
      WHEN V_SCORE >= 90 THEN DBMS_OUTPUT.PUT_LINE('A����'); 
      WHEN V_SCORE >= 80 THEN DBMS_OUTPUT.PUT_LINE('B����'); 
      WHEN V_SCORE >= 70 THEN DBMS_OUTPUT.PUT_LINE('C����'); 
      WHEN V_SCORE >= 60 THEN DBMS_OUTPUT.PUT_LINE('D����'); 

      ELSE DBMS_OUTPUT.PUT_LINE('F����'); 

   END CASE; 

END; 

/ 

 

-- �ǽ� 16-17 

DECLARE 
   V_NUM NUMBER := 0; 
BEGIN 
   LOOP 
      DBMS_OUTPUT.PUT_LINE('���� V_NUM : ' || V_NUM); 
      V_NUM := V_NUM + 1; 
      EXIT WHEN V_NUM > 4; 
   END LOOP; 

END; 

/ 

 

-- �ǽ� 16-18 

DECLARE 
   V_NUM NUMBER := 0; 
BEGIN 
   WHILE V_NUM < 4 LOOP 
      DBMS_OUTPUT.PUT_LINE('���� V_NUM : ' || V_NUM); 
      V_NUM := V_NUM + 1; 
   END LOOP; 

END; 

/ 

 

-- �ǽ� 16-19 

BEGIN 
   FOR i IN 0..4 LOOP 
      DBMS_OUTPUT.PUT_LINE('���� i�� �� : ' || i); 
   END LOOP; 

END; 

/ 

 

-- �ǽ� 16-20 

BEGIN 
   FOR i IN REVERSE 0..4 LOOP 
      DBMS_OUTPUT.PUT_LINE('���� i�� �� : ' || i); 
      END LOOP; 
END; 

/ 

 

-- �ǽ� 16-21 

BEGIN 
   FOR i IN 0..4 LOOP 
      CONTINUE WHEN MOD(i, 2) = 1; 
      DBMS_OUTPUT.PUT_LINE('���� i�� �� : ' || i); 
   END LOOP; 

END; 

/ 