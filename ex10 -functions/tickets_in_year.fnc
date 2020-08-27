create or replace function tickets_in_year(year in integer) return integer is
  FunctionResult integer;
begin
  select count(*) into FunctionResult from ticket where extract(year from DATE_) = year;
  return(FunctionResult);
end tickets_in_year;
/
