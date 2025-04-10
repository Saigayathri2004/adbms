DECLARE
   num INTEGER;
   is_prime BOOLEAN;
   i INTEGER;
BEGIN
   -- Loop through numbers from 2 to 100
   FOR num IN 2..100 LOOP
      is_prime := TRUE; -- Assume the number is prime initially

      -- Check if the number is divisible by any number between 2 and sqrt(num)
      FOR i IN 2..TRUNC(SQRT(num)) LOOP
         IF mod(num, i) = 0 THEN
            is_prime := FALSE; -- Not a prime number
            EXIT;
         END IF;
      END LOOP;

      -- If the number is prime, print it
      IF is_prime THEN
         DBMS_OUTPUT.PUT_LINE(num || ' is a prime number.');
      END IF;
   END LOOP;
END;
/

