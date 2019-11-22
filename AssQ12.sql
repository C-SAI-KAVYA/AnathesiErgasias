--  use the customers table and find out the country wise credit limit.
select country, sum(creditlimit) as creditlimit
from customers
group by country
order by country