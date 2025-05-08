DECLARE
    cid     cust.id%TYPE;
    cname   cust.name%TYPE;
    csalary cust.salary%TYPE;

    CURSOR c1 IS
        SELECT id, name, salary FROM cust; 
BEGIN
    OPEN c1;

    LOOP
        FETCH c1 INTO cid, cname, csalary;
        EXIT WHEN c1%NOTFOUND;

        DBMS_OUTPUT.PUT_LINE('Before Update: ' || cid || ' ' || cname || ' ' || csalary);

        -- Salary increment logic
        IF cid = 1 THEN
            csalary := csalary + 1000;
        ELSIF cid = 2 THEN
            csalary := csalary + 2000;
        ELSIF cid = 3 THEN
            csalary := csalary + 5000;
        END IF;

        -- Update the salary in the table
        UPDATE cust SET salary = csalary WHERE id = cid;

        DBMS_OUTPUT.PUT_LINE('After Update: ' || cid || ' ' || cname || ' ' || csalary);
    END LOOP;

    CLOSE c1;
END;
/

