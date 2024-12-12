-- Report the amount of each sale. For each order, print the date ordered
-- and the total amount of the sale.

-- Suggestion: start by making a SELECT/JOIN that computes the total
-- for each line item. (This is often called the "extended price" in
-- Finance. It is the unit price * quantity ordered.)  Be sure the
-- query also keeps the SaleID, so you can keep the extended totals
-- organized.

-- SELECT SaleID, FIXME AS extended
-- FROM FIXME...

-- After you have this query, use its results as the right table in a JOIN:
SELECT 
    Sales.Date_Ordered, 
    SUM(TempName.extended) AS Total_Amount
FROM 
    Sales
INNER JOIN 
    (
        -- Subquery to calculate extended price for each line item
        SELECT 
            Sale_ID, 
            Merchandise.Price_Per_Unit * SalesItems.Quantity AS extended
        FROM 
            SalesItems
        INNER JOIN 
            Merchandise
        ON 
            SalesItems.Merchandise_ID = Merchandise.Merchandise_ID
    ) TempName
ON 
    Sales.Sale_ID = TempName.Sale_ID
GROUP BY 
    Sales.Sale_ID, Sales.Date_Ordered
ORDER BY 
    Sales.Date_Ordered;
