-- INSERT a member event suggestion. The event should show it has not
-- been approved by the staff.

ALTER TABLE Events ADD COLUMN Event_Status VARCHAR DEFAULT 'pending';

INSERT INTO Events (Event_ID, Event_Name, Event_Location, Event_Date, Price_Per_Attendee, Contributor_ID, Event_Status)
VALUES
(1, 'Convention on Climate Policy', 'Room 313, Convention Center, 200 Pike Street, Seattle, WA, 98122', '2022-12-03', 250.00, 7, 'pending'),
(2, 'UN Report on Climate Progress', 'UN Convention House 2, UN Plaza, New York, NY, 00231', '2023-04-13', 0.00, 2, 'pending');
