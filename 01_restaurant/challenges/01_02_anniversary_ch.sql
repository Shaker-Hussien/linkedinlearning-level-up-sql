-- Create a table in the database to store customer
-- responses to our anniversary invitation.
create table Anniversary (
CustomerID integer,
PartySize integer,
FOREIGN KEY (CustomerID)REFERENCES Customers (CustomerID)
)

-- Associate a customer's ID number with the number of people
-- they plan to bring in their party.

-- Hint: SQLite offers the INTEGER and REAL datatypes