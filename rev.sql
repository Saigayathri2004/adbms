DECLARE
   num INTEGER := &number; 
   reversed_num INTEGER := 0;
   remainder INTEGER;
BEGIN
   WHILE num > 0 LOOP
      remainder := mod(num, 10);  
      reversed_num := reversed_num * 10 + remainder;  
      num := num / 10; 
   END LOOP;
   DBMS_OUTPUT.PUT_LINE('Reversed number: ' || reversed_num);
END;
/

