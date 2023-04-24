-- Register a customer for our Anniversary event.

-- The customer 'atapley2j@kinetecoinc.com' will be in
-- attendance, and will bring 3 friends.
insert into Anniversary(CustomerID, PartySize)
values(92, 3)

select * from Customers where Email = 'atapley2j@kinetecoinc.com';

select * from Anniversary;