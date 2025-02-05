-- Return three books to the library using
-- their bar codes.
-- Return date: July 5, 2022
-- Book 1: 6435968624
-- Book 2: 5677520613
-- Book 3: 8730298424

select * from Loans where ReturnedDate='2022-07-05';

UPDATE Loans
SET ReturnedDate = '2022-07-05'
WHERE BookID in (
  SELECT BookID 
  FROM Books 
  WHERE Barcode in ('6435968624','5677520613','8730298424')
) and ReturnedDate is NULL;

