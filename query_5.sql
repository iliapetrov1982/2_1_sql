select c.name
from customers c left join orders o on c.id = o.customerid 
where o.customerid is null