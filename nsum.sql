DECLARE
   n INTEGER := &n;
   sum INTEGER := 0;
BEGIN
   FOR i IN 1..n LOOP
      sum := sum + i;
   END LOOP;

   DBMS_OUTPUT.PUT_LINE('Sum of first ' || n || ' numbers: ' || sum);
END;
/

