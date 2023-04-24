-- Update information in the database.

-- Set Cleo Goldwater's favorite dish to
-- the Quinoa Salmon Salad.

select CustomerID from Customers Where FirstName='Cleo' and LastName='Goldwater';
select DishID from Dishes Where Name = 'Quinoa Salmon Salad';

update Customers
set FavoriteDish = (select DishID from Dishes Where Name = 'Quinoa Salmon Salad')
Where FirstName='Cleo' and LastName='Goldwater';

select * from Customers where CustomerID = 42