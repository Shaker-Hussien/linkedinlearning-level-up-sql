-- Create two reports about book statistics.

-- Report 1: Show how many titles were published 
-- in each year.
select Published, count(distinct(Title)) 'Count'
from Books
group by Published
order by 2 DESC;

-- Report 2: Show the five books that have been
-- checked out the most.
SELECT b.Title, count(l.LoanID)'Count'
from Loans l
join Books b on l.BookID = b.BookID
group by b.Title
order by 2 DESC
limit 5;