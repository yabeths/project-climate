-- Compute the total value of the sales (This involves *one* JOIN and
-- multiplying the units sold * the price per unit for the
-- merchandise.)

-- Suggestion: think about how to collect:
--   price: Merchandise.price
--   quantity: LineItem.quantity
--   want: p * q
-- After you have those, adapt to get the sum.

SELECT 
    SUM(Merchandise.Price_Per_Unit * SalesItems.Quantity) AS Total_Sales
FROM 
    SalesItems
INNER JOIN 
    Merchandise
ON 
    SalesItems.Merchandise_ID = Merchandise.Merchandise_ID;

  
