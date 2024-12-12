-- A user is changing their name and email address.
-- Write the code to change any/all places a person's name or email
-- is stored.
--
-- For this query, it is OK to hardcode:
--
-- - old-name
-- - new-name
-- - new-email
--
-- It is not OK to make assumptions about what tables these are stored
-- in if multiple tables are involved and they would be different for
-- a different person.

-- Change 'Wendy Nelson' to 'Wendy Scrivens'; new email 'wendyscribe@authors.org'

UPDATE Members
SET Member_Name = 'Wendy Scrivens', Email = 'wendyscribe@authors.org'
WHERE Member_Name = 'Wendy Nelson';

UPDATE Donations
SET Member_ID = (
    SELECT Member_ID
    FROM Members
    WHERE Member_Name = 'Wendy Scrivens' AND Email = 'wendyscribe@authors.org'
)
WHERE Member_ID = (SELECT Member_ID FROM Members WHERE Member_Name = 'Wendy Nelson');

UPDATE Sales
SET Member_ID = (
    SELECT Member_ID
    FROM Members
    WHERE Member_Name = 'Wendy Scrivens' AND Email = 'wendyscribe@authors.org'
)
WHERE Member_ID = (SELECT Member_ID FROM Members WHERE Member_Name = 'Wendy Nelson');

UPDATE Resources
SET Contributor_ID = (
    SELECT Member_ID
    FROM Members
    WHERE Member_Name = 'Wendy Scrivens' AND Email = 'wendyscribe@authors.org'
)
WHERE Contributor_ID = (SELECT Member_ID FROM Members WHERE Member_Name = 'Wendy Nelson');

UPDATE Events
SET Contributor_ID = (
    SELECT Member_ID
    FROM Members
    WHERE Member_Name = 'Wendy Scrivens' AND Email = 'wendyscribe@authors.org'
)
WHERE Contributor_ID = (SELECT Member_ID FROM Members WHERE Member_Name = 'Wendy Nelson');

UPDATE Comments
SET Member_ID = (
    SELECT Member_ID
    FROM Members
    WHERE Member_Name = 'Wendy Scrivens' AND Email = 'wendyscribe@authors.org'
)
WHERE Member_ID = (SELECT Member_ID FROM Members WHERE Member_Name = 'Wendy Nelson');
