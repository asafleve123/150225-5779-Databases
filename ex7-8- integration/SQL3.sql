select AVG(w.salary)
from kenis.worker w, sales_stand s
where s.manager_id+100000000 = w.id
