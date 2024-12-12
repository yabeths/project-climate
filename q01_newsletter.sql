-- Newsletter: Assuming a newsletter date of 2022-03-10, show upcoming
-- events after that date that have been approved by staff. For each
-- event, show date and description.

SELECT 
    Event_Date, 
    Event_Name AS Description
FROM 
    Events
WHERE 
    Event_Date > '2022-03-10'
ORDER BY 
    Event_Date;
