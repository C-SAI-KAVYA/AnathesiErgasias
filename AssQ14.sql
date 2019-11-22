-- write a query to find employees whose last names don’t start with the character B.
select employeeNumber, firstName, lastName
from employees
where lastName not LIKE 'B%';