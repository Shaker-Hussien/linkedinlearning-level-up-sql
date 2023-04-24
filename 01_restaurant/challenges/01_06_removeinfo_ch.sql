-- Remove incorrect information from the database.

-- A customer named Norby has notified us he won't 
-- be able to keep his Friday reservation. 
-- Today is July 24, 2022.
Delete FROM Reservations Where CustomerID = 64 and Date like '2022-07-29%';

select * from Customers
where FirstName = 'Norby'

select * from Reservations
where CustomerID = 64 and Date like '2022-07-29%';