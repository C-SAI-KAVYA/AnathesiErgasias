-- Change the name of the table from inventory_details to Vehicle_inventory

rename table inventory_details to Vehicle_inventory;

-- change the vehicle_name column size from 50 to 100
alter table Vehicle_inventory modify Vehicle_name varchar(100);

-- check the vehicle_name size
select sum(char_length(Vehicle_name)) as Vehicle_name_size
from vehicle_inventory;