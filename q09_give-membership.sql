-- Give membership to donors who have contributed $20 or more. (UPDATE)
-- Set the "membershipStart" to CURRENT_DATE (this is a variable) to reflect
-- that today is when the membership was updated.

-- The UPDATE format is provided:

UPDATE Members
SET Approval = TRUE, 
    Date_Added = CURRENT_DATE
WHERE Members.Member_ID IN (
    -- Subquery to find donors who have contributed $20 or more
    SELECT Member_ID
    FROM Donations
    GROUP BY Member_ID
    HAVING SUM(Amount) >= 20
);

-- Help: the FIXME clause is hard, and involves a syntax not introduced
-- in class. You want an expression that returns TRUE if the person
-- needs to be updated.
--
-- Review the q06_membership-earned.sql for getting a list, and use that in
-- the SELECT sub-query below.
--
-- The IN syntax basically checks to see if the value on the left of the IN
-- appears in the values on the right in the IN. The table on the right should
-- have only one column. So the clause would look something like this:
--
--WHERE FIXME... Person.ID IN (
--  SELECT DonorID FROM
--  FIXME...
-- )
