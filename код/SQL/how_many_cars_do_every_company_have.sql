select company_name as company_name, 
count(cab_id) as cnt 
from cabs 
group by company_name
 having count(cab_id) <100 
order by count(cab_id) DESC;
