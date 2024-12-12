-- List all the members who were added in 2020 (Use the EXTRACT
-- function to get the year). Show newest members first.
-- Show their name and date they became a member.

SELECT 
    Member_Name,
    Date_Added
FROM
    Members
WHERE
    EXTRACT(YEAR FROM Date_Added) = 2020
ORDER BY
    Date_Added;
;
