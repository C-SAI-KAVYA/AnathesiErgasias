-- Create a copy of the Employees table. in this copy table, update the email ID of Mary patterson to Mp@classicmodelcars.com
create table updatedemployee
select * from employees;

set sql_safe_updates = 0 ;-- unlocking the safety mode
Update updatedemployee
set email = 'Mp@classicmodelcars.com'
where email='mpatterso@classicmodelcars.com'