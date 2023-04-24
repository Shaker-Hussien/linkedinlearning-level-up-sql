-- Create reports that will be used to make three menus.

-- Create a report with all the items sorted by price (lowest to highest).
select Name,Price
from Dishes
order by 2;

-- Create a report showing appetizers and beverages.
select Name,Type
from Dishes
where type in('Appetizer','Beverage')

-- Create a report with all items except beverages.
select Name,Type
from Dishes
where type != 'Beverage'



