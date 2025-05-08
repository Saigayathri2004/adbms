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
        DBMS_OUTPUT.PUT_LINE(cid || ' ' || cname || ' ' || csalary);
    END LOOP;

    CLOSE c1;
END;
/

