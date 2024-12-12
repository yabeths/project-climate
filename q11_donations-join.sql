-- Recreate the Donations sample document using a join

SELECT 
    Members.Member_Name, 
    Members.Email, 
    Donations.Donation_Date AS Date, 
    Donations.Amount
FROM 
    Members
INNER JOIN 
    Donations
ON 
    Donations.Member_ID = Members.Member_ID;

