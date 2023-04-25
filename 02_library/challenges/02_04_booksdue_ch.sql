-- Prepare a report of books due to be returned
-- to the library on July 13, 2022.
-- Provide the due date, the book title, and
-- the borrower's first name and email address.

SELECT p.FirstName, p.Email, b.Title, l.DueDate
FROM Loans l 
join Books b on l.BookID = b.BookID
join Patrons p on p.PatronID = l.PatronID
where l.DueDate = '2022-07-13' and l.ReturnedDate is NULL;
