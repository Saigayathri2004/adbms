DECLARE
   num INTEGER := &number; 
   is_prime BOOLEAN := TRUE;
   i INTEGER;
BEGIN
   
   IF num < 2 THEN
      is_prime := FALSE;
   ELSE
      
      FOR i IN 2..TRUNC(SQRT(num)) LOOP
         IF mod(num, i) = 0 THEN
            is_prime := FALSE; 
            EXIT;
         END IF;
      END LOOP;
   END IF;
   IF is_prime THEN
      DBMS_OUTPUT.PUT_LINE(num || ' is a prime number.');
   ELSE
      DBMS_OUTPUT.PUT_LINE(num || ' is not a prime number.');
   END IF;
END;
/

