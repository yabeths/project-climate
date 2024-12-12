-- Table for Members
CREATE TABLE Members (
    Member_ID INTEGER PRIMARY KEY,
    Member_Name VARCHAR,
    Email VARCHAR,
    Phone VARCHAR,
    Date_Added DATE,
    Approval BOOLEAN
);

-- Table for Merchandise
CREATE TABLE Merchandise (
    Merchandise_ID INTEGER PRIMARY KEY,
    Name TEXT,
    Description TEXT,
    Units VARCHAR,
    Price_Per_Unit DECIMAL,
    Quantity INT,
    Inventory VARCHAR,
    Date_Entered DATE
);

-- Table for Sales
CREATE TABLE Sales (
    Member_ID INT,
    Sale_ID INTEGER PRIMARY KEY,
    FOREIGN KEY (Member_ID) REFERENCES Members(Member_ID),
    -- FOREIGN KEY (Customer_Name) REFERENCES Members(Member_Name),
    Billing_Address TEXT,
    Date_Ordered DATE,
    Shipping_Address TEXT,
    Date_Shipped DATE
);

-- Table for SalesItems (Many-to-Many relationship between Sales and Merchandise)
CREATE TABLE SalesItems (
    SaleItem_ID INTEGER PRIMARY KEY,
    Quantity INT,
    Sale_ID INT,
    Merchandise_ID INT,
    FOREIGN KEY (Sale_ID) REFERENCES Sales(Sale_ID),
    FOREIGN KEY (Merchandise_ID) REFERENCES Merchandise(Merchandise_ID)
);

-- Table for Donations
CREATE TABLE Donations (
    Donation_ID INTEGER PRIMARY KEY,
    Member_ID INT,
    FOREIGN KEY (Member_ID) REFERENCES Members(Member_ID),
    Donation_Date DATE,
    Amount DECIMAL
);

-- Table for Events
CREATE TABLE Events (
    Event_ID INTEGER PRIMARY KEY,
    Event_Name VARCHAR,
    Event_Location VARCHAR,
    Event_Date DATE,
    Price_Per_Attendee DECIMAL,
    Contributor_ID INT,
    FOREIGN KEY (Contributor_ID) REFERENCES Members(Member_ID)
);

-- Table for Resources
CREATE TABLE Resources (
    Resource_ID INTEGER PRIMARY KEY,
    Resource_Name VARCHAR,
    URL TEXT,
    Date_Added DATE,
    Contributor_ID INT,
    FOREIGN KEY (Contributor_ID) REFERENCES Members(Member_ID)
);

-- Table for Comments
CREATE TABLE Comments (
    Comment_ID INTEGER PRIMARY KEY,
    Resource_ID INT,
    Event_ID INT,
    Member_ID INT,
    FOREIGN KEY (Resource_ID) REFERENCES Resources(Resource_ID),
    FOREIGN KEY (Event_ID) REFERENCES Events(Event_ID),
    FOREIGN KEY (Member_ID) REFERENCES Members(Member_ID),
    Comment_Text TEXT,
    Date DATE
);

-- Table for Newsletter
CREATE TABLE Newsletter (
    Newsletter_ID INTEGER PRIMARY KEY,
    Newsleter_Subject VARCHAR,
    Send_Date DATE,
    Content TEXT,
    Who_Recieved INT,
    FOREIGN KEY (Who_Recieved) REFERENCES Members(Member_ID)
);

