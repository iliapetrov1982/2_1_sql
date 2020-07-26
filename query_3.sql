select e1.name
from employee_2 e1 join employee_2 e2 on e2.id = e1.managerid 
where e2.salary < e1.salary