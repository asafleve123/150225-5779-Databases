create or replace function manager_of_sales_stand(sales_stand_id in integer) return integer is
  FunctionResult integer;
begin
  select manager_id into FunctionResult from sales_stand where id = sales_stand_id;
  return(FunctionResult);
end manager_of_sales_stand;
/
