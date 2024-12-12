-- Adjust inventory by sales (be concerned about idempotence) (UPDATE)

-- Notes:
--
-- "Idempotent" means the result of running the update twice is
-- the same as running it once: it does the right thing and then doesn't
-- over-update if run again. Question: how are dates invovled in figuring
-- out what inventory adjustments to make?
--
-- Strategy: create SELECT that uses JOINs, etc. to plan what should be
-- changed in the Merchandise.Inventory field.

-- Update the inventory of Merchandise based on sales
UPDATE Merchandise
SET Quantity = Quantity - COALESCE(adjustment.QuantitySold, 0)  -- Adjust quantity
FROM (
    -- Subquery to calculate the total quantity sold per merchandise item
    SELECT si.Merchandise_ID, SUM(si.Quantity) AS QuantitySold
    FROM SalesItems si
    JOIN Sales s ON si.Sale_ID = s.Sale_ID
    WHERE s.Date_Shipped IS NOT NULL  -- Ensure that the sale has been shipped
    GROUP BY si.Merchandise_ID
) AS adjustment
WHERE Merchandise.Merchandise_ID = adjustment.Merchandise_ID;

