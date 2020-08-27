create or replace procedure add_visitor(id in integer,name in string, phone in string, sub in string,last_name in string,added out boolean) is
begin
 INSERT INTO visitor VALUES (id, name, phone,sub,last_name);
 added := TRUE;
 EXCEPTION WHEN OTHERS THEN dbms_output.put_line('ERROR: input was invalid or unique constraint violated');
  added := FALSE;
end add_visitor;
/
