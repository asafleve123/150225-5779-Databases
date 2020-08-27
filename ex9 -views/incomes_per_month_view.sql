create view incomes_per_month as
select extract(year from date_) as y, extract(month from date_) as m,sum(price) as p from ticket 
group by extract(month from date_), extract(year from date_)
order by y,m
