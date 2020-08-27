create view subscriptions as
select name,last_name,phone_number from visitor 
where is_subscription = 'TRUE'
