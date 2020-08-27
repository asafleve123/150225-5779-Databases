select * from kenis.worker
where seniority >= ALL(select AVG(w.seniority)
from kenis.worker w,sales_stand s
where s.manager_id+100000000 = w.id)
minus
select * from kenis.worker
where ID IN (select manager_id+100000000 from sales_stand)
