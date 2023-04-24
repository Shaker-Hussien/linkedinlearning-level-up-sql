-- Enter a customer's delivery order into our database, 
-- and provide the total cost of the items ordered.

-- Use this order information:
-- Customer: Loretta Hundey, at 6939 Elka Place
-- Items: 1 House Salad, 1 Mini Cheeseburgers, and
-- 1 Tropical Blue Smoothie
-- Delivery date and time: September 20, 2022 @ 2PM (14:00)
-- There are no taxes or other fees.

-- get CustomerID : 70
SELECT CustomerID from Customers
where FirstName = 'Loretta' and LastName='Hundey';

-- Add Order in Orders Table
Insert into Orders (CustomerID, OrderDate) values (70, '2022-09-20 14:00:00');
select * from Orders where CustomerID = 70; -- OrderID:1001

-- Add Dishes in new Order
select * from Dishes
where Name in ('House Salad', 'Mini Cheeseburgers', 'Tropical Blue Smoothie');

insert into OrdersDishes (OrderID, DishID) 
values (1001, 4),(1001, 7),(1001,20)

-- Find Total Cost
select od.OrderID, sum(d.Price) 'Total Cost'
from OrdersDishes od join Dishes d on od.DishID = d.DishID
group by od.OrderID
HAVING od.OrderID = 1001
