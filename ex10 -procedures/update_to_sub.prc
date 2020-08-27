create or replace procedure update_to_sub(vid in integer) is
begin
  update visitor set is_subscription = 'TRUE' where id = vid;
end update_to_sub;
/
