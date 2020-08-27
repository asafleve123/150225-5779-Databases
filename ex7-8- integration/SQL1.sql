select w.id,w.first_name, w.last_name, w.seniority, w.role_id, s.id,s.kind
from kenis.worker w, sales_stand s
where s.manager_id+100000000 = w.id
order by w.id
