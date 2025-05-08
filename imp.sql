declare
total_row number(2);
begin
update cust set salary=salary+500;
if sql % notfound then
dbms_output.put_line('no customer selected');
elsif sql % found then 
total_row :=sql % rowcount;
dbms_output.put_line(total_row||'customer selected');
end if;
end;
/
