create view incomes_per_year as
select extract(year from DATE_) as Year,sum(price) as incomes from ticket 
group by extract(year from DATE_)
