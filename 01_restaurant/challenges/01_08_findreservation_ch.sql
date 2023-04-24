-- Find the reservation information for a customer whose
-- name we aren't quite sure how to spell.

-- Variations of the name include:
-- Stevensen, Stephensen, Stevenson, Stephenson, Stuyvesant

-- There are four people in the party. Today is June 14th.
Select * 
from Reservations
Where CustomerID in (select CustomerID from Customers  where LastName like 'St%')
And PartySize=4
And Date like '2022-06-14%'
