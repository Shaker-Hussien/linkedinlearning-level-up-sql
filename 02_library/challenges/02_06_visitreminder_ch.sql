-- Prepare a report of the library patrons
-- who have checked out the fewest books.
SELECT p.FirstName, p.LastName, count(l.LoanID) as 'Loans'
FROM Patrons p
Join Loans l on l.PatronID=p.PatronID
group by p.PatronID
order by 3;