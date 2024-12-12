-- Inserting data into the Members table
INSERT INTO Members(Member_ID, Member_Name, Email, Phone, Date_Added)
VALUES
(1, 'Jill Keller', 'JillKileer@gmail.com', '206-555-1245', '2019-03-29'),
(2, 'Mark Lowen', 'lowen@msn.com', NULL, '2020-04-19'),
(3, 'Wendy Nelson', 'wnelson@yahoo.com', '456-555-1265', '2020-05-01'),
(4, 'Krystal Brown', 'krystalball@hotmail.com', '904-555-2211', '2021-05-20'),
(5, 'Bob Danielson', 'bd2035@gmail.com', '360-555-2030', '2020-06-10'),
(6, 'Ta Nguyen', 'tnguyen304@gmail.com', NULL, '2020-07-12'),
(7, 'Nichole Bradley', 'nicholeb@harvest.org', '222-555-2323', '2020-07-15'),
(8, 'Lindsey Peterson', 'lp@msn.com', '123-456-7899', NULL),
--(9, 'Krystal Brown', 'krystalball@hotmail.com', '123-456-7899', NULL),
(10, 'Marcus Tellerman', 'mtellerman@yahoo.com', '123-456-7899', NULL),
(11, 'Ha Li', 'hali@gmail.com', NULL, NULL),
(13, 'Hamid Brown', 'hamidb@outlook.com', NULL, NULL),
(12, 'Ken Jackson', 'kj202@yahoo.com', NULL, NULL);


-- Inserting data into the Merchandise table
INSERT INTO Merchandise (Merchandise_ID, Name, Description, Units, Price_Per_Unit, Quantity, Date_Entered)
VALUES
(1, 'Earth Rise T-Shirt', 'T-shirt with earth rising over moon', '1 T-Shirt', 15.50, 20, '2020-02-15'),
(2, 'Earth Rise Puzzle', '1000 piece jigsaw puzzle of earth rising', '1 box', 9.35, 15, '2020-03-01'),
(3, 'Endangered Habitats', 'Tabletop book', '1 book', 35.30, 25, '2020-03-01'),
(4, 'Last Views', '4k UHD documentary on endangered species', '1 disc', 23.90, 10, '2020-04-12'),
(5, 'Call to Action', 'Book on climate change action', '1 book', 6.45, 30, '2020-04-15');

-- Inserting data into the Sales table
INSERT INTO Sales (Sale_ID, Member_ID, Billing_Address, Date_Ordered, Shipping_Address, Date_Shipped)
VALUES
(1, 8, '161 Brown Street, Chicago, IL, 80092', '2020-10-02', 'same', '2020-10-04'),
(2, 3, '303 South Market, Seattle, WA, 98112', '2020-10-09', '120 Pine Street, Seattle, WA 98122', '2020-10-12'),
(3, 10, '2020 North Street, San Francisco, CA. 99122', '2020-10-30', 'same', NULL);

-- Inserting data into the Donations table
INSERT INTO Donations (Donation_ID, Member_ID, Donation_Date, Amount)
VALUES
(1, 13, '2020-08-14', 10.00),
(2, 11, '2020-10-15', 200.00),
(3, 12, '2020-10-15', 15.00),
(4, 3, '2020-10-16', 135.00),
(5, 12, '2022-03-02', 10.00);

-- Inserting data into the Events table
INSERT INTO Events (Event_ID, Event_Name, Event_Location, Event_Date, Price_Per_Attendee, Contributor_ID)
VALUES
(1, 'Convention on Climate Policy', 'Room 313, Convention Center, 200 Pike Street, Seattle, WA, 98122', '2022-12-03', 250.00, 7),
(2, 'UN Report on Climate Progress', 'UN Convention House 2, UN Plaza, New York, NY, 00231', '2023-04-13', 0.00, 2);

-- Inserting data into the Resources table
INSERT INTO Resources (Resource_ID, Resource_Name, URL, Date_Added, Contributor_ID)
VALUES
(1, 'Partnership for Energy Progress', 'https://www.pepnw.org/about-us/', '2020-09-12', 1),
(2, 'Siemens Company', 'https://new.siemens.com/us/en/company/sustainability/environmental-action.html', '2022-10-09', 1),
(3, 'UN Environment Program', 'https://www.unep-wcmc.org/', '2020-10-18', 5),
(4, 'NASA on Climate Change', 'https://climate.nasa.gov/', '2020-10-25', 6);

-- Inserting data into the Comments table
INSERT INTO Comments (Comment_ID, Resource_ID, Event_ID, Member_ID, Comment_Text, Date)
VALUES
(1, 4, 1, 7, 'This site is gorgeous and useful. Well worth the time to visit and explore its features.', '2022-10-20'),
(2, 1, 1, 3, 'I attended the Convention on Climate policy last year and it was quite enlightening. They had discussions from several high ranking scientists and politicians. Worth the price.', '2022-10-22');
