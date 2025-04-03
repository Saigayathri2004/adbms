declare
a integer;
b integer;
c integer;
s integer;
begin
a := &a;
b := &b;
c := &c;
s := a+b+c;

dbms_output.put_line('Average is '||s/3);
end;
/
