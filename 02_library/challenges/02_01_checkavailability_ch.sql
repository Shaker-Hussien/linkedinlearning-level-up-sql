-- Determine how many copies of the book 'Dracula'
-- are available for library patrons to borrow.

select (SELECT count(BookID) from Books where Title = 'Dracula')- (count(b.BookID)) as 'Avaialble Ones'
from Books b Join Loans l on b.BookID=l.BookID
where b.Title = 'Dracula' and l.ReturnedDate is NULL