-- Create a list of books to feature in an exhibit.

-- Make a pick list of books published from 1890-1899 
-- which are not currently checked out.

SELECT distinct(b.BookID), b.Title
from Books b
JOIN Loans l on b.BookID = l.BookID
Where (b.Published BETWEEN 1890 and 1899)
AND (l.ReturnedDate is NOT NULL)