DECLARE
   num INTEGER := &number; 
   original_num INTEGER;
   reversed_num INTEGER := 0;
   remainder INTEGER;
BEGIN
   original_num := num; 

   WHILE num > 0 LOOP
      remainder := mod(num, 10); 
      reversed_num := reversed_num * 10 + remainder;  
      num := num / 10;  
   END LOOP;
   IF original_num = reversed_num THEN
      DBMS_OUTPUT.PUT_LINE(original_num || ' is a palindrome number.');
   ELSE
      DBMS_OUTPUT.PUT_LINE(original_num || ' is not a palindrome number.');
   END IF;
END;
/

