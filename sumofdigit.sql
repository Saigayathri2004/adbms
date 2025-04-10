DECLARE
   num INTEGER := &number;
   sum_digits INTEGER := 0;
   remainder INTEGER;
BEGIN
   WHILE num > 0 LOOP
      remainder := mod(num, 10);
      sum_digits := sum_digits + remainder;
      num := num / 10;
   END LOOP;

   DBMS_OUTPUT.PUT_LINE('Sum of digits: ' || sum_digits);
END;
/

