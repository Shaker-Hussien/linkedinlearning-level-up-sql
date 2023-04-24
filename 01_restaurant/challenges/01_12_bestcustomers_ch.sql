-- Identify a few customers who have ordered delivery
-- from the restaurant the most often, so we can send
-- them a promotional coupon.

select c.FirstName,c.LastName, count(o.OrderID)
from Customers c join orders o on c.CustomerID = o.CustomerID
group by c.CustomerID
order by 3 desc;