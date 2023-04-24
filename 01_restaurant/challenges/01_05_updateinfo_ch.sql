-- Update a customer's contact information.
UPDATE Customers
SET Address = 'moved to 74 Pine St.', City = 'New York', State = 'NY'
WHERE CustomerID = 26
-- Taylor Jenkins, of 27170 6th Ave., Washington, DC,
-- has moved to 74 Pine St., New York, NY.

select * from Customers WHERE CustomerID = 26