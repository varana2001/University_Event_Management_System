-----NON-CLUSTERED INDEXES-----
--1)
-- Check if index on EventTitle already exists
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE name = 'IX_Event_EventTitle' AND object_id = OBJECT_ID('Event'))
BEGIN
    CREATE NONCLUSTERED INDEX IX_Event_EventTitle 
    ON Event (EventTitle);
END

-- Test Query to confirm index usage
SELECT * FROM Event WHERE EventTitle = 'Job Fair 2024';


--2)
-- Check if index on UserEmail already exists
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE name = 'IX_User_UserEmail' AND object_id = OBJECT_ID('[User]'))
BEGIN
    CREATE NONCLUSTERED INDEX IX_User_UserEmail 
    ON [User] (UserEmail);
END

-- Test Query to confirm index usage
SELECT * FROM [User] WHERE UserEmail = 'john.doe@example.com';


--3)
-- Check if index on RegistrationStatus already exists
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE name = 'IX_Registration_RegistrationStatus' AND object_id = OBJECT_ID('Registration'))
BEGIN
    CREATE NONCLUSTERED INDEX IX_Registration_RegistrationStatus 
    ON Registration (RegistrationStatus);
END

-- Test Query to confirm index usage
SELECT * FROM Registration WHERE RegistrationStatus = 'Confirmed';
