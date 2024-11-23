-----STORED PROCEDURES-----

--SP1:GetUsersByEvent-Lists all users registered for a specific event. Returns a result set with user details and event title:

CREATE PROCEDURE GetUsersByEvent
    @EventTitle VARCHAR(100),
    @TotalUsers INT OUTPUT
AS
BEGIN
    BEGIN TRY
        -- Check for null input
        IF @EventTitle IS NULL
        BEGIN
        RAISERROR('EventTitle parameter cannot be null', 16, 1);
        RETURN;
    END

        -- Select registered users for the specified event
        SELECT DISTINCT
        u.UserID,
        CONCAT(u.UserFName, ' ', u.UserLName) AS FullName,
        u.UserEmail,
        u.UserPhone,
        r.RegistrationStatus
    FROM
        [User] u
        INNER JOIN Registration r ON u.UserID = r.UserID
        INNER JOIN Event e ON r.EventID = e.EventID
    WHERE 
            e.EventTitle = @EventTitle;

        -- Set total distinct user count
        SET @TotalUsers = (SELECT COUNT(DISTINCT u.UserID)
    FROM [User] u
        INNER JOIN Registration r ON u.UserID = r.UserID
        INNER JOIN Event e ON r.EventID = e.EventID
    WHERE e.EventTitle = @EventTitle);
    END TRY
    BEGIN CATCH
        -- Handle errors by setting output to null and reporting the error
        SET @TotalUsers = NULL;
        PRINT 'An error occurred in GetUsersByEvent.';
        THROW;
    END CATCH
END;
GO


--Test Query:

DECLARE @TotalUsers INT;
EXEC GetUsersByEvent @EventTitle = 'Tech Conference 2024', @TotalUsers = @TotalUsers OUTPUT;
SELECT @TotalUsers AS TotalUsersRegistered;
GO



--SP2:GetResourcesByVenueType-Lists all resources allocated to events held at venues of a specified type:
CREATE PROCEDURE GetResourcesByVenueType
    @VenueTypeName VARCHAR(50),
    @ResourceCount INT OUTPUT
AS
BEGIN
    BEGIN TRY
        -- Check for null input
        IF @VenueTypeName IS NULL
        BEGIN
        RAISERROR('VenueTypeName parameter cannot be null', 16, 1);
        RETURN;
    END

        -- Select resources allocated to events at venues of specified type
        SELECT
        r.ResourceID,
        r.ResourceName,
        SUM(era.AllocatedQuantity) AS TotalAllocatedQuantity
    FROM
        Resource r
        INNER JOIN EventResourceAllocation era ON r.ResourceID = era.ResourceID
        INNER JOIN Event e ON era.EventID = e.EventID
        INNER JOIN Venue v ON e.VenueID = v.VenueID
        INNER JOIN VenueType vt ON v.VenueTypeID = vt.VenueTypeID
    WHERE 
            vt.VenueTypeName = @VenueTypeName
    GROUP BY 
            r.ResourceID, r.ResourceName;

        -- Set distinct resource count
        SET @ResourceCount = (SELECT COUNT(DISTINCT r.ResourceID)
    FROM Resource r
        INNER JOIN EventResourceAllocation era ON r.ResourceID = era.ResourceID
        INNER JOIN Event e ON era.EventID = e.EventID
        INNER JOIN Venue v ON e.VenueID = v.VenueID
        INNER JOIN VenueType vt ON v.VenueTypeID = vt.VenueTypeID
    WHERE vt.VenueTypeName = @VenueTypeName);
    END TRY
    BEGIN CATCH
        -- Handle errors by setting output to null and reporting the error
        SET @ResourceCount = NULL;
        PRINT 'An error occurred in GetResourcesByVenueType.';
        THROW;
    END CATCH
END;
GO


--Test Query:

DECLARE @ResourceCount INT;
EXEC GetResourcesByVenueType @VenueTypeName = 'Auditorium', @ResourceCount = @ResourceCount OUTPUT;
SELECT @ResourceCount AS DistinctResourceCount;
GO



--SP3:GetEventBudgetStatus-Determines if events are "over budget" or "under budget" based on an input parameter for the expected budget:
CREATE PROCEDURE GetEventBudgetStatus
    @ExpectedBudget DECIMAL(10,2),
    @OverBudgetCount INT OUTPUT
AS
BEGIN
    BEGIN TRY

-- Check for null or invalid input
        IF @ExpectedBudget IS NULL OR @ExpectedBudget <= 0
        BEGIN
        RAISERROR('ExpectedBudget must be a positive value', 16, 1);
        RETURN;
    END

-- Select events with budget status
        SELECT DISTINCT
        e.EventID,
        e.EventTitle,
        e.EventBudget,
        CASE 
                WHEN e.EventBudget > @ExpectedBudget THEN 'Over Budget'
                ELSE 'Under Budget'
            END AS BudgetStatus
    FROM
        Event e;

-- Set count of events over budget
        SET @OverBudgetCount = (SELECT COUNT(*)
    FROM Event e
    WHERE e.EventBudget > @ExpectedBudget);
    END TRY
    BEGIN CATCH
        -- Handle errors by setting output to null and reporting the error
        SET @OverBudgetCount = NULL;
        PRINT 'An error occurred in GetEventBudgetStatus.';
        THROW;
    END CATCH
END;
GO


--Test Query:

DECLARE @OverBudgetCount INT;
EXEC GetEventBudgetStatus @ExpectedBudget = 5000.00, @OverBudgetCount = @OverBudgetCount OUTPUT;
SELECT @OverBudgetCount AS OverBudgetEventCount;
GO



-----COMPUTED COLUMNS AND UDF-----

--1)User-Defined Function to Calculate FullName

CREATE FUNCTION dbo.GetFullName (@FirstName VARCHAR(50), @LastName VARCHAR(50))
RETURNS VARCHAR(101)
AS
BEGIN
    RETURN CONCAT(@FirstName, ' ', @LastName);
END;
GO
--Adding a Computed Column to User Table
ALTER TABLE [User]
ADD FullName AS dbo.GetFullName(UserFName, UserLName);
GO
-- Computed Columns and UDF Output
SELECT UserID, UserFName, UserLName, FullName
FROM [User];
GO



--2)User-Defined Function to Calculate Event Duration

CREATE FUNCTION dbo.CalculateEventDuration (@StartDate DATE, @EndDate DATE)
RETURNS INT
AS
BEGIN
    RETURN DATEDIFF(DAY, @StartDate, @EndDate);
END;
GO

ALTER TABLE Event
ADD EventDuration AS dbo.CalculateEventDuration(StartDate, EndDate);
GO

SELECT EventID, EventTitle, StartDate, EndDate, EventDuration
FROM Event;
GO



--3)User-Defined Function for GetFullAddress

CREATE FUNCTION dbo.GetFullAddress (@VenueName VARCHAR(100), @VenueLocation VARCHAR(255))
RETURNS VARCHAR(355)
AS
BEGIN
    RETURN CONCAT(@VenueName, ', ', @VenueLocation);
END;
GO

ALTER TABLE Venue
ADD FullAddress AS dbo.GetFullAddress(VenueName, VenueLocation);
GO

-- Query to see the results
SELECT VenueID, VenueName, VenueLocation, FullAddress
FROM Venue;
GO



-----VIEWS-----

--1)View_AttendeeDetails: Shows detailed information about event attendees

CREATE VIEW View_AttendeeDetails
AS
    SELECT
        e.EventTitle,
        CONCAT(u.UserFName, ' ', u.UserLName) AS AttendeeName,
        u.UserEmail,
        a.CheckInTime,
        a.CheckOutTime
    FROM
        Attendance a
        INNER JOIN [User] u ON a.UserID = u.UserID
        INNER JOIN Event e ON a.EventID = e.EventID;
GO

SELECT *
FROM View_AttendeeDetails;
GO



--2)View_SponsorshipSummary: Summarizes sponsorship amounts by sponsor and event

CREATE VIEW View_SponsorshipSummary
AS
    SELECT
        CONCAT(s.SponsorFName, ' ', s.SponsorLName) AS SponsorName,
        e.EventTitle,
        es.SponsorshipAmount,
        es.SponsorshipType
    FROM
        Sponsor s
        INNER JOIN EventSponsor es ON s.SponsorID = es.SponsorID
        INNER JOIN Event e ON es.EventID = e.EventID;
GO

SELECT *
FROM View_SponsorshipSummary;
GO



--3)View_VenueUtilization: Shows venue usage details by event, including capacity utilization

CREATE VIEW View_VenueUtilization
AS
    SELECT
        e.EventTitle,
        v.VenueName,
        v.VenueCapacity,
        COUNT(a.UserID) AS AttendeeCount,
        CAST(COUNT(a.UserID) AS FLOAT) / v.VenueCapacity * 100 AS UtilizationPercent
    FROM
        Event e
        INNER JOIN Venue v ON e.VenueID = v.VenueID
        LEFT JOIN Attendance a ON e.EventID = a.EventID
    GROUP BY 
    e.EventTitle, v.VenueName, v.VenueCapacity;
GO

SELECT *
FROM View_VenueUtilization;
GO



-----TRIGGERS-----

--1)Trigger to Log Deletions from Registration Table

-- Create Log Table for Deletion Logs from the Registration Table
CREATE TABLE RegistrationDeletionLog
(
    LogID INT PRIMARY KEY IDENTITY(1,1),
    RegistrationID INT,
    UserID INT,
    EventID INT,
    RegistrationDate DATE,
    RegistrationStatus VARCHAR(20),
    DeletedAt DATETIME DEFAULT GETDATE()
);
GO


-- Trigger to Log Deletions in Registration Table with Transaction and Error Handling

CREATE TRIGGER trg_LogRegistrationDeletion
ON Registration
AFTER DELETE
AS
BEGIN
    BEGIN TRY
        BEGIN TRANSACTION;  -- Start Transaction

        -- Insert Deleted Rows into the Log Table
        INSERT INTO RegistrationDeletionLog
        (RegistrationID, UserID, EventID, RegistrationDate, RegistrationStatus, DeletedAt)
    SELECT
        d.RegistrationID,
        d.UserID,
        d.EventID,
        d.RegistrationDate,
        d.RegistrationStatus,
        SYSUTCDATETIME() AS DeletedAt
    -- Using UTC Timestamp
    FROM
        DELETED d;

        COMMIT TRANSACTION;  -- Commit Transaction
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;  -- Rollback in case of error
        -- Optionally log the error or print message for troubleshooting
        PRINT 'Error occurred during deletion logging in RegistrationDeletionLog';
    END CATCH
END;
GO
-- End of trg_LogRegistrationDeletion trigger

-- Drop the existing foreign key constraint
ALTER TABLE Payment DROP CONSTRAINT FK__Payment__Registr__52593CB8;
GO
-- End of DROP foreign key

-- Re-add the foreign key with ON DELETE CASCADE for automatic deletion
ALTER TABLE Payment 
ADD CONSTRAINT FK_Payment_Registration
FOREIGN KEY (RegistrationID) REFERENCES Registration(RegistrationID)
ON DELETE CASCADE;
GO
-- End of ALTER TABLE for foreign key with ON DELETE CASCADE

-- Delete a row to trigger deletion log
DELETE FROM Registration WHERE RegistrationID = 1;
GO
-- End of DELETE for testing trigger

-- View the deletion log
SELECT *
FROM RegistrationDeletionLog;
GO
-- End of SELECT for deletion log



--2)Trigger to Log Budget Changes in the Event Table

-- Create Log Table for Budget Changes in the Event Table
CREATE TABLE EventBudgetChangeLog
(
    LogID INT PRIMARY KEY IDENTITY(1,1),
    EventID INT,
    OldBudget DECIMAL(10, 2),
    NewBudget DECIMAL(10, 2),
    ChangedAt DATETIME DEFAULT GETDATE()
);
GO
-- End of EventBudgetChangeLog table creation

-- Trigger to Log Budget Changes in the Event Table with Transaction and Error Handling

CREATE TRIGGER trg_LogEventBudgetChange
ON Event
AFTER UPDATE
AS
BEGIN
    BEGIN TRY
        BEGIN TRANSACTION;  -- Start Transaction

        -- Check if EventBudget column is updated
        IF UPDATE(EventBudget)
        BEGIN
        -- Insert only when the EventBudget actually changes
        INSERT INTO EventBudgetChangeLog
            (EventID, OldBudget, NewBudget, ChangedAt)
        SELECT
            d.EventID,
            d.EventBudget AS OldBudget,
            i.EventBudget AS NewBudget,
            SYSUTCDATETIME() AS ChangedAt
        -- Using UTC Timestamp
        FROM
            DELETED d
            INNER JOIN INSERTED i ON d.EventID = i.EventID
        WHERE 
                d.EventBudget <> i.EventBudget;
    -- Only log if budget actually changed
    END;

        COMMIT TRANSACTION;  -- Commit Transaction
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;  -- Rollback in case of error
        -- Optionally log the error or print message for troubleshooting
        PRINT 'Error occurred during budget change logging in EventBudgetChangeLog';
    END CATCH
END;
GO
-- End of trg_LogEventBudgetChange trigger

-- Update the budget to trigger budget change log
UPDATE Event SET EventBudget = 7500.00 WHERE EventID = 1;
GO
-- End of UPDATE for triggering budget log

-- View the budget change log
SELECT *
FROM EventBudgetChangeLog;
GO  -- End of SELECT for budget change log
