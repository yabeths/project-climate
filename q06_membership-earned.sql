-- Report donors who have given more than $20 but are not members (SUM, GROUP)

-- Suggestion: start by making a query that gets the total donation for each donor:
SELECT 
    TempName.Donor, 
    TempName.total
FROM 
    (
        -- This is the subquery that calculates the total donation per donor
        SELECT 
            Member_ID AS Donor, 
            SUM(Amount) AS total
        FROM 
            Donations
        GROUP BY 
            Member_ID
        HAVING 
            SUM(Amount) > 20
    ) TempName
LEFT JOIN 
    Members 
ON 
    TempName.Donor = Members.Member_ID
WHERE 
    Members.Member_ID IS NULL;  -- This ensures that we only get donors who are not members

