-- Create Database
CREATE DATABASE UniversityEventManagementSystem;
GO

-- Use the newly created database
USE UniversityEventManagementSystem;
GO

-- Drop existing tables if they exist to make the script re-runnable
DROP TABLE IF EXISTS Payment, Registration, Ticket, Attendance, [User], Organizer, Booking, EventCategory, VenueType, Venue, EventResourceAllocation, EventSponsor, Sponsor, Event, Resource;
GO

-- Custom User Table (avoiding conflict with system-defined 'User' entity)
CREATE TABLE [User] (
    UserID INT PRIMARY KEY IDENTITY(1,1),
    UserFName VARCHAR(50) NOT NULL,
    UserLName VARCHAR(50) NOT NULL,
    UserEmail VARCHAR(100) UNIQUE NOT NULL,
    UserPhone VARCHAR(15),
    UserRole VARCHAR(20) CHECK (UserRole IN ('Attendee', 'Organizer', 'Admin')),
    Password VARCHAR(100) NOT NULL
);

-- Organizer Table
CREATE TABLE Organizer (
    OrganizerID INT PRIMARY KEY IDENTITY(1,1),
    OrganizerFName VARCHAR(50) NOT NULL,
    OrganizerLName VARCHAR(50) NOT NULL,
    OrganizerRole VARCHAR(20) CHECK (OrganizerRole IN ('Event Manager', 'Coordinator')),
    OrganizerPhone VARCHAR(15),
    OrganizerEmail VARCHAR(100) UNIQUE NOT NULL
);

-- Event Table
CREATE TABLE Event (
    EventID INT PRIMARY KEY IDENTITY(1,1),
    VenueID INT NOT NULL,
    EventCategoryID INT NOT NULL,
    OrganizerID INT NOT NULL,
    EventTitle VARCHAR(100) NOT NULL,
    EventDescription TEXT,
    StartDate DATE,
    EndDate DATE,
    EventBudget DECIMAL(10, 2) CHECK (EventBudget >= 0),
    CONSTRAINT CHK_PRJ_StartDateBeforeEndDate CHECK (StartDate <= EndDate), 
    FOREIGN KEY (OrganizerID) REFERENCES Organizer(OrganizerID)
);

-- VenueType Table
CREATE TABLE VenueType (
    VenueTypeID INT PRIMARY KEY IDENTITY(1,1),
    VenueTypeName VARCHAR(50) NOT NULL
);

-- Venue Table
CREATE TABLE Venue (
    VenueID INT PRIMARY KEY IDENTITY(1,1),
    VenueTypeID INT NOT NULL,
    VenueName VARCHAR(100) NOT NULL,
    VenueCapacity INT CHECK (VenueCapacity > 0),
    VenueLocation VARCHAR(255),
    FOREIGN KEY (VenueTypeID) REFERENCES VenueType(VenueTypeID)
);

-- EventCategory Table
CREATE TABLE EventCategory (
    EventCategoryID INT PRIMARY KEY IDENTITY(1,1),
    CategoryName VARCHAR(50) NOT NULL,
    CategoryDescription TEXT
);

-- Registration Table
CREATE TABLE Registration (
    RegistrationID INT PRIMARY KEY IDENTITY(1,1),
    EventID INT NOT NULL,
    UserID INT NOT NULL,
    RegistrationDate DATE NOT NULL,
    RegistrationStatus VARCHAR(20) CHECK (RegistrationStatus IN ('Pending', 'Confirmed', 'Cancelled')),
    FOREIGN KEY (EventID) REFERENCES Event(EventID),
    FOREIGN KEY (UserID) REFERENCES [User](UserID)
);

-- Payment Table
CREATE TABLE Payment (
    PaymentID INT PRIMARY KEY IDENTITY(1,1),
    RegistrationID INT NOT NULL,
    Amount DECIMAL(10, 2) NOT NULL CHECK (Amount > 0),
    PaymentDate DATE NOT NULL,
    PaymentStatus VARCHAR(20) CHECK (PaymentStatus IN ('Pending', 'Completed', 'Refunded')),
    FOREIGN KEY (RegistrationID) REFERENCES Registration(RegistrationID)
);

-- Ticket Table
CREATE TABLE Ticket (
    TicketID INT PRIMARY KEY IDENTITY(1,1),
    EventID INT NOT NULL,
    UserID INT NOT NULL,
    TicketType VARCHAR(20) NOT NULL,
    TicketPrice DECIMAL(10, 2) CHECK (TicketPrice >= 0),
    TicketIssueDate DATE,
    TicketStatus VARCHAR(20) CHECK (TicketStatus IN ('Issued', 'Cancelled')),
    FOREIGN KEY (EventID) REFERENCES Event(EventID),
    FOREIGN KEY (UserID) REFERENCES [User](UserID)
);

-- Attendance Table
CREATE TABLE Attendance (
    AttendanceID INT PRIMARY KEY IDENTITY(1,1),
    UserID INT NOT NULL,
    EventID INT NOT NULL,
    CheckInTime DATETIME,
    CheckOutTime DATETIME,
    FOREIGN KEY (UserID) REFERENCES [User](UserID),
    FOREIGN KEY (EventID) REFERENCES Event(EventID),
    CONSTRAINT CHK_CheckOutAfterCheckIn CHECK (CheckOutTime > CheckInTime)
);

-- Resource Table
CREATE TABLE Resource (
    ResourceID INT PRIMARY KEY IDENTITY(1,1),
    ResourceName VARCHAR(100) NOT NULL,
    ResourceDescription TEXT,
    Quantity INT CHECK (Quantity > 0)
);

-- EventResourceAllocation Table
CREATE TABLE EventResourceAllocation (
    AllocationID INT PRIMARY KEY IDENTITY(1,1),
    EventID INT NOT NULL,
    ResourceID INT NOT NULL,
    AllocatedQuantity INT CHECK (AllocatedQuantity > 0),
    AllocationDate DATE,
    AllocationTime TIME,
    FOREIGN KEY (EventID) REFERENCES Event(EventID),
    FOREIGN KEY (ResourceID) REFERENCES Resource(ResourceID)
);

-- Sponsor Table
CREATE TABLE Sponsor (
    SponsorID INT PRIMARY KEY IDENTITY(1,1),
    SponsorFName VARCHAR(50),
    SponsorLName VARCHAR(50),
    SponsorPhone VARCHAR(15),
    SponsorEmail VARCHAR(100) UNIQUE
);

-- EventSponsor Table
CREATE TABLE EventSponsor (
    EventID INT NOT NULL,
    SponsorID INT NOT NULL,
    SponsorshipAmount DECIMAL(10, 2) CHECK (SponsorshipAmount > 0),
    SponsoredDate DATE,
    SponsorshipType VARCHAR(50),
    PRIMARY KEY (EventID, SponsorID),
    FOREIGN KEY (EventID) REFERENCES Event(EventID),
    FOREIGN KEY (SponsorID) REFERENCES Sponsor(SponsorID)
);

-- Booking Table
CREATE TABLE Booking (
    BookingID INT PRIMARY KEY IDENTITY(1,1),
    VenueID INT NOT NULL,
    OrganizerID INT NOT NULL,
    BookingDate DATE NOT NULL,
    BookingStatus VARCHAR(20) CHECK (BookingStatus IN ('Pending', 'Confirmed', 'Cancelled')),
    FOREIGN KEY (VenueID) REFERENCES Venue(VenueID),
    FOREIGN KEY (OrganizerID) REFERENCES Organizer(OrganizerID)
);

