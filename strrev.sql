ACCEPT user_input PROMPT 'Enter a string to reverse: '

DECLARE
    original_string VARCHAR2(100) := '&user_input';
    reversed_string VARCHAR2(100) := '';
BEGIN
    FOR i IN REVERSE 1..LENGTH(original_string) LOOP
        reversed_string := reversed_string || SUBSTR(original_string, i, 1);
    END LOOP;

    DBMS_OUTPUT.PUT_LINE('Original String: ' || original_string);
    DBMS_OUTPUT.PUT_LINE('Reversed String: ' || reversed_string);
END;
/
