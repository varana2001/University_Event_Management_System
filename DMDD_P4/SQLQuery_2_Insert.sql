INSERT INTO [User] (UserFName, UserLName, UserEmail, UserPhone, UserRole, Password)
VALUES
('John', 'Doe', 'john.doe@example.com', '1234567890', 'Attendee', 'password123'),
('Jane', 'Smith', 'jane.smith@example.com', '0987654321', 'Attendee', 'password123'),
('Michael', 'Brown', 'michael.brown@example.com', '1122334455', 'Attendee', 'password123'),
('Emily', 'Davis', 'emily.davis@example.com', '2233445566', 'Organizer', 'password123'),
('David', 'Wilson', 'david.wilson@example.com', '3344556677', 'Organizer', 'password123'),
('Sarah', 'Lee', 'sarah.lee@example.com', '4455667788', 'Attendee', 'password123'),
('James', 'Taylor', 'james.taylor@example.com', '5566778899', 'Attendee', 'password123'),
('Linda', 'Moore', 'linda.moore@example.com', '6677889900', 'Admin', 'password123'),
('Robert', 'Anderson', 'robert.anderson@example.com', '7788990011', 'Attendee', 'password123'),
('Patricia', 'Thomas', 'patricia.thomas@example.com', '8899001122', 'Organizer', 'password123'),
('Charles', 'Jackson', 'charles.jackson@example.com', '9900112233', 'Attendee', 'password123'),
('Mary', 'White', 'mary.white@example.com', '1011121314', 'Admin', 'password123'),
('William', 'Harris', 'william.harris@example.com', '1112131415', 'Attendee', 'password123'),
('Barbara', 'Clark', 'barbara.clark@example.com', '1213141516', 'Organizer', 'password123'),
('Joseph', 'Lewis', 'joseph.lewis@example.com', '1314151617', 'Attendee', 'password123'),
('Jessica', 'Walker', 'jessica.walker@example.com', '1415161718', 'Admin', 'password123'),
('Daniel', 'Hall', 'daniel.hall@example.com', '1516171819', 'Attendee', 'password123'),
('Jennifer', 'Allen', 'jennifer.allen@example.com', '1617181920', 'Organizer', 'password123'),
('Paul', 'Young', 'paul.young@example.com', '1718192021', 'Attendee', 'password123'),
('Laura', 'King', 'laura.king@example.com', '1819202122', 'Admin', 'password123'),
('Steven', 'Wright', 'steven.wright@example.com', '1920212223', 'Attendee', 'password123'),
('Michelle', 'Lopez', 'michelle.lopez@example.com', '2021222324', 'Organizer', 'password123'),
('George', 'Hill', 'george.hill@example.com', '2122232425', 'Attendee', 'password123'),
('Helen', 'Scott', 'helen.scott@example.com', '2223242526', 'Admin', 'password123'),
('Thomas', 'Green', 'thomas.green@example.com', '2324252627', 'Attendee', 'password123'),
('Elizabeth', 'Adams', 'elizabeth.adams@example.com', '2425262728', 'Organizer', 'password123'),
('Edward', 'Nelson', 'edward.nelson@example.com', '2526272829', 'Attendee', 'password123'),
('Anna', 'Baker', 'anna.baker@example.com', '2627282930', 'Admin', 'password123'),
('Christopher', 'Carter', 'christopher.carter@example.com', '2728293031', 'Attendee', 'password123'),
('Susan', 'Mitchell', 'susan.mitchell@example.com', '2829303132', 'Organizer', 'password123');

INSERT INTO Organizer (OrganizerFName, OrganizerLName, OrganizerRole, OrganizerPhone, OrganizerEmail)
VALUES
('Alice', 'Johnson', 'Event Manager', '4455667788', 'alice.johnson@example.com'),
('Tom', 'Miller', 'Coordinator', '5566778899', 'tom.miller@example.com'),
('Nancy', 'Taylor', 'Event Manager', '6677889900', 'nancy.taylor@example.com'),
('Henry', 'Moore', 'Coordinator', '7788990011', 'henry.moore@example.com'),
('Clara', 'Davis', 'Event Manager', '8899001122', 'clara.davis@example.com'),
('Andrew', 'Clark', 'Coordinator', '9900112233', 'andrew.clark@example.com'),
('Diane', 'Lewis', 'Event Manager', '1011121314', 'diane.lewis@example.com'),
('Samuel', 'Walker', 'Coordinator', '1112131415', 'samuel.walker@example.com'),
('Rachel', 'Allen', 'Event Manager', '1213141516', 'rachel.allen@example.com'),
('Greg', 'Young', 'Coordinator', '1314151617', 'greg.young@example.com'),
('Laura', 'King', 'Event Manager', '1415161718', 'laura.king@example.com'),
('Kevin', 'Wright', 'Coordinator', '1516171819', 'kevin.wright@example.com'),
('Tina', 'Lopez', 'Event Manager', '1617181920', 'tina.lopez@example.com'),
('Peter', 'Hill', 'Coordinator', '1718192021', 'peter.hill@example.com'),
('Lisa', 'Scott', 'Event Manager', '1819202122', 'lisa.scott@example.com'),
('Mark', 'Green', 'Coordinator', '1920212223', 'mark.green@example.com'),
('Karen', 'Adams', 'Event Manager', '2021222324', 'karen.adams@example.com'),
('Ryan', 'Nelson', 'Coordinator', '2122232425', 'ryan.nelson@example.com'),
('Sophia', 'Baker', 'Event Manager', '2223242526', 'sophia.baker@example.com'),
('Oliver', 'Carter', 'Coordinator', '2324252627', 'oliver.carter@example.com');

INSERT INTO Event (VenueID, EventCategoryID, OrganizerID, EventTitle, EventDescription, StartDate, EndDate, EventBudget)
VALUES
(1, 1, 1, 'Tech Conference 2024', 'A conference focused on emerging technologies.', '2024-01-15', '2024-01-17', 5000.00),
(1, 2, 2, 'Health & Wellness Fair', 'An event to promote health and wellness activities.', '2024-02-10', '2024-02-11', 2000.00),
(1, 3, 3, 'Job Fair 2024', 'Connecting employers with job seekers.', '2024-03-05', '2024-03-06', 3000.00),
(2, 4, 4, 'Music Fest', 'A celebration of music and arts.', '2024-04-20', '2024-04-21', 7000.00),
(2, 5, 5, 'Art Exhibition', 'Display of modern and contemporary art.', '2024-05-15', '2024-05-17', 4500.00),
(2, 6, 6, 'Startup Pitch Night', 'Showcasing new startups to investors.', '2024-06-01', '2024-06-01', 1500.00),
(3, 7, 7, 'Food Festival', 'Celebration of diverse culinary experiences.', '2024-07-20', '2024-07-22', 2500.00),
(3, 8, 8, 'Science Fair', 'Promoting science and innovation.', '2024-08-05', '2024-08-06', 3200.00),
(3, 9, 9, 'Literature Workshop', 'A workshop for budding writers.', '2024-09-10', '2024-09-11', 1800.00),
(4, 10, 10, 'Business Expo', 'Networking and showcasing business solutions.', '2024-10-20', '2024-10-21', 3500.00),
(4, 11, 11, 'Charity Marathon', 'A marathon event for charity fundraising.', '2024-11-05', '2024-11-05', 1200.00),
(5, 12, 12, 'Dance Competition', 'A regional dance competition.', '2024-12-15', '2024-12-15', 2000.00),
(5, 13, 13, 'Hackathon', 'A 24-hour coding event for developers.', '2025-01-10', '2025-01-11', 3000.00),
(5, 14, 14, 'Photography Workshop', 'Workshop on nature and portrait photography.', '2025-02-12', '2025-02-13', 1500.00),
(6, 15, 15, 'Film Screening', 'Screening of independent films.', '2025-03-18', '2025-03-18', 1000.00),
(6, 16, 16, 'Eco Conference', 'Discussing sustainable practices.', '2025-04-22', '2025-04-23', 2500.00),
(6, 17, 17, 'Yoga Retreat', 'A retreat for wellness and yoga.', '2025-05-25', '2025-05-26', 2200.00),
(7, 18, 18, 'Volunteer Day', 'Community service event.', '2025-06-07', '2025-06-07', 800.00),
(7, 19, 19, 'Coding Bootcamp', 'A week-long programming bootcamp.', '2025-07-14', '2025-07-18', 4000.00),
(7, 20, 20, 'Public Speaking Workshop', 'Enhancing public speaking skills.', '2025-08-12', '2025-08-13', 1300.00);


INSERT INTO VenueType (VenueTypeName)
VALUES
('Conference Hall'),
('Outdoor Park'),
('Exhibition Center'),
('Auditorium'),
('Community Center'),
('Banquet Hall'),
('Sports Arena'),
('Theater'),
('Library Hall'),
('Museum Gallery');

INSERT INTO Venue (VenueTypeID, VenueName, VenueCapacity, VenueLocation)
VALUES
(1, 'Grand Conference Hall', 500, '123 Main St, Downtown'),
(1, 'Innovation Hub', 350, '456 Tech Dr, Silicon Valley'),
(2, 'Central Park Pavilion', 1000, '789 Park Ave, City Center'),
(2, 'Riverside Gardens', 800, '321 River St, Green District'),
(3, 'Tech Expo Center', 700, '101 Convention Blvd, East End'),
(3, 'Exhibition Plaza', 600, '202 Expo Rd, West Side'),
(4, 'Civic Auditorium', 300, '303 Auditorium Lane, City Center'),
(4, 'Harmony Theater', 450, '404 Harmony Ave, Music District'),
(5, 'Community Center Hall', 250, '505 Community Dr, Suburbia'),
(5, 'Local Arts Venue', 200, '606 Art St, Cultural Quarter'),
(6, 'Royal Banquet Hall', 500, '707 Grand St, Uptown'),
(6, 'Celebration Banquet', 400, '808 Festive Rd, Midtown'),
(7, 'Sports Arena', 10000, '909 Victory Blvd, Stadium Park'),
(7, 'Coliseum Field', 15000, '1010 Coliseum Dr, Sports Complex'),
(8, 'Classic Theater', 500, '1111 Theater Row, Broadway'),
(8, 'Metro Cinema', 300, '1212 Movie Ln, Downtown'),
(9, 'Library Hall', 150, '1313 Knowledge Dr, University District'),
(9, 'Academic Meeting Room', 100, '1414 Learning Blvd, Academic Block'),
(10, 'City Museum Gallery', 200, '1515 Museum Rd, History Quarter'),
(10, 'Art Heritage Center', 250, '1616 Heritage Blvd, Art District');



INSERT INTO EventCategory (CategoryName, CategoryDescription)
VALUES
('Technology', 'Events related to tech and innovation.'),
('Health & Wellness', 'Events promoting health, wellness, and fitness.'),
('Career & Job', 'Events connecting employers with potential job seekers.'),
('Music & Arts', 'Celebrations of music, art, and culture.'),
('Art Exhibition', 'Showcases of modern and contemporary art.'),
('Startup & Entrepreneurship', 'Events for startups and entrepreneurs to pitch and network.'),
('Food & Beverage', 'Festivals and events for culinary enthusiasts.'),
('Science & Education', 'Science fairs, educational talks, and seminars.'),
('Literature', 'Workshops, talks, and fairs focusing on literature.'),
('Business & Networking', 'Expos, business conferences, and networking events.'),
('Charity', 'Fundraising events and charity marathons.'),
('Dance & Performance', 'Dance competitions and performances.'),
('Coding & Hackathon', 'Programming events, hackathons, and bootcamps.'),
('Photography', 'Workshops and events focused on photography skills.'),
('Film & Cinema', 'Screenings of independent and featured films.'),
('Sustainability & Eco', 'Conferences and events on sustainable practices.'),
('Wellness & Retreat', 'Yoga retreats and wellness-focused events.'),
('Community & Volunteer', 'Community service and volunteer events.'),
('Public Speaking & Communication', 'Workshops to improve public speaking skills.');



-- Tickets for Registrations from Event 1
INSERT INTO Ticket (EventID, UserID, TicketType, TicketPrice, TicketIssueDate, TicketStatus)
VALUES
(1, 1, 'Standard', 150.00, '2024-01-11', 'Issued'),
(1, 2, 'VIP', 200.00, '2024-01-12', 'Cancelled'),
(1, 3, 'Standard', 150.00, '2024-01-13', 'Issued'),
(1, 4, 'Standard', 150.00, '2024-01-14', 'Issued'),
(1, 5, 'Standard', 150.00, '2024-01-15', 'Cancelled'),
(1, 6, 'Standard', 150.00, '2024-01-16', 'Issued'),
(1, 7, 'VIP', 200.00, '2024-01-17', 'Issued'),
(1, 8, 'Standard', 150.00, '2024-01-18', 'Issued'),
(1, 9, 'Standard', 150.00, '2024-01-19', 'Issued'),
(1, 10, 'VIP', 200.00, '2024-01-20', 'Issued'),
(1, 11, 'Standard', 150.00, '2024-01-21', 'Cancelled'),
(1, 12, 'Standard', 150.00, '2024-01-22', 'Issued'),
(1, 13, 'VIP', 200.00, '2024-01-23', 'Issued'),
(1, 14, 'Standard', 150.00, '2024-01-24', 'Issued'),
(1, 15, 'Standard', 150.00, '2024-01-25', 'Issued');

-- Tickets for Registrations from Event 2
INSERT INTO Ticket (EventID, UserID, TicketType, TicketPrice, TicketIssueDate, TicketStatus)
VALUES
(2, 16, 'Standard', 120.00, '2024-02-01', 'Issued'),
(2, 17, 'VIP', 180.00, '2024-02-02', 'Cancelled'),
(2, 18, 'Standard', 120.00, '2024-02-03', 'Issued'),
(2, 19, 'Standard', 120.00, '2024-02-04', 'Cancelled'),
(2, 20, 'VIP', 180.00, '2024-02-05', 'Issued'),
(2, 21, 'Standard', 120.00, '2024-02-06', 'Issued'),
(2, 22, 'Standard', 120.00, '2024-02-07', 'Issued'),
(2, 23, 'VIP', 180.00, '2024-02-08', 'Issued'),
(2, 24, 'Standard', 120.00, '2024-02-09', 'Issued'),
(2, 25, 'Standard', 120.00, '2024-02-10', 'Issued'),
(2, 26, 'VIP', 180.00, '2024-02-11', 'Cancelled'),
(2, 27, 'Standard', 120.00, '2024-02-12', 'Issued');

-- Tickets for Registrations from Event 3
INSERT INTO Ticket (EventID, UserID, TicketType, TicketPrice, TicketIssueDate, TicketStatus)
VALUES
(3, 28, 'Standard', 100.00, '2024-03-01', 'Issued'),
(3, 29, 'Standard', 100.00, '2024-03-02', 'Cancelled'),
(3, 30, 'VIP', 150.00, '2024-03-03', 'Issued'),
(3, 1, 'Standard', 100.00, '2024-03-04', 'Issued'),
(3, 2, 'VIP', 150.00, '2024-03-05', 'Cancelled'),
(3, 3, 'Standard', 100.00, '2024-03-06', 'Issued'),
(3, 4, 'Standard', 100.00, '2024-03-07', 'Issued'),
(3, 5, 'Standard', 100.00, '2024-03-08', 'Issued'),
(3, 6, 'VIP', 150.00, '2024-03-09', 'Issued'),
(3, 7, 'Standard', 100.00, '2024-03-10', 'Issued');

-- Tickets for Registrations from Event 4
INSERT INTO Ticket (EventID, UserID, TicketType, TicketPrice, TicketIssueDate, TicketStatus)
VALUES
(4, 8, 'Standard', 130.00, '2024-04-01', 'Issued'),
(4, 9, 'VIP', 180.00, '2024-04-02', 'Cancelled'),
(4, 10, 'Standard', 130.00, '2024-04-03', 'Issued'),
(4, 11, 'Standard', 130.00, '2024-04-04', 'Issued'),
(4, 12, 'Standard', 130.00, '2024-04-05', 'Cancelled'),
(4, 13, 'VIP', 180.00, '2024-04-06', 'Issued'),
(4, 14, 'Standard', 130.00, '2024-04-07', 'Issued'),
(4, 15, 'Standard', 130.00, '2024-04-08', 'Issued'),
(4, 16, 'VIP', 180.00, '2024-04-09', 'Issued'),
(4, 17, 'Standard', 130.00, '2024-04-10', 'Issued'),
(4, 18, 'Standard', 130.00, '2024-04-11', 'Cancelled'),
(4, 19, 'Standard', 130.00, '2024-04-12', 'Issued'),
(4, 20, 'VIP', 180.00, '2024-04-13', 'Issued');

-- Tickets for Registrations from Event 5
INSERT INTO Ticket (EventID, UserID, TicketType, TicketPrice, TicketIssueDate, TicketStatus)
VALUES
(5, 21, 'Standard', 110.00, '2024-05-01', 'Issued'),
(5, 22, 'Standard', 110.00, '2024-05-02', 'Cancelled'),
(5, 23, 'VIP', 160.00, '2024-05-03', 'Issued'),
(5, 24, 'Standard', 110.00, '2024-05-04', 'Issued'),
(5, 25, 'VIP', 160.00, '2024-05-05', 'Cancelled'),
(5, 26, 'Standard', 110.00, '2024-05-06', 'Issued'),
(5, 27, 'Standard', 110.00, '2024-05-07', 'Issued'),
(5, 28, 'VIP', 160.00, '2024-05-08', 'Issued'),
(5, 29, 'Standard', 110.00, '2024-05-09', 'Issued'),
(5, 30, 'Standard', 110.00, '2024-05-10', 'Cancelled'),
(5, 1, 'Standard', 110.00, '2024-05-11', 'Issued'),
(5, 2, 'VIP', 160.00, '2024-05-12', 'Issued'),
(5, 3, 'Standard', 110.00, '2024-05-13', 'Issued');

-- Continue similarly for other events (Event 6 and onwards)

-- Tickets for Registrations from Event 6
INSERT INTO Ticket (EventID, UserID, TicketType, TicketPrice, TicketIssueDate, TicketStatus)
VALUES
(6, 10, 'Standard', 125.00, '2024-06-01', 'Issued'),
(6, 11, 'VIP', 180.00, '2024-06-02', 'Cancelled'),
(6, 12, 'Standard', 125.00, '2024-06-03', 'Issued'),
(6, 13, 'Standard', 125.00, '2024-06-04', 'Issued'),
(6, 14, 'VIP', 180.00, '2024-06-05', 'Cancelled'),
(6, 15, 'Standard', 125.00, '2024-06-06', 'Issued'),
(6, 16, 'VIP', 180.00, '2024-06-07', 'Issued'),
(6, 17, 'Standard', 125.00, '2024-06-08', 'Cancelled'),
(6, 18, 'Standard', 125.00, '2024-06-09', 'Issued'),
(6, 19, 'VIP', 180.00, '2024-06-10', 'Issued');

-- Tickets for Registrations from Event 7
INSERT INTO Ticket (EventID, UserID, TicketType, TicketPrice, TicketIssueDate, TicketStatus)
VALUES
(7, 20, 'Standard', 130.00, '2024-07-01', 'Issued'),
(7, 21, 'VIP', 185.00, '2024-07-02', 'Cancelled'),
(7, 22, 'Standard', 130.00, '2024-07-03', 'Issued'),
(7, 23, 'VIP', 185.00, '2024-07-04', 'Cancelled'),
(7, 24, 'Standard', 130.00, '2024-07-05', 'Issued'),
(7, 25, 'VIP', 185.00, '2024-07-06', 'Issued'),
(7, 26, 'Standard', 130.00, '2024-07-07', 'Cancelled'),
(7, 27, 'Standard', 130.00, '2024-07-08', 'Issued'),
(7, 28, 'VIP', 185.00, '2024-07-09', 'Issued'),
(7, 29, 'Standard', 130.00, '2024-07-10', 'Cancelled'),
(7, 30, 'Standard', 130.00, '2024-07-11', 'Issued'),
(7, 1, 'VIP', 185.00, '2024-07-12', 'Issued');

-- Tickets for Registrations from Event 8
INSERT INTO Ticket (EventID, UserID, TicketType, TicketPrice, TicketIssueDate, TicketStatus)
VALUES
(8, 3, 'Standard', 140.00, '2024-08-01', 'Issued'),
(8, 4, 'VIP', 190.00, '2024-08-02', 'Cancelled'),
(8, 5, 'Standard', 140.00, '2024-08-03', 'Issued'),
(8, 6, 'Standard', 140.00, '2024-08-04', 'Cancelled'),
(8, 7, 'VIP', 190.00, '2024-08-05', 'Issued'),
(8, 8, 'Standard', 140.00, '2024-08-06', 'Issued'),
(8, 9, 'Standard', 140.00, '2024-08-07', 'Issued'),
(8, 10, 'VIP', 190.00, '2024-08-08', 'Issued'),
(8, 11, 'Standard', 140.00, '2024-08-09', 'Issued'),
(8, 12, 'Standard', 140.00, '2024-08-10', 'Cancelled'),
(8, 13, 'VIP', 190.00, '2024-08-11', 'Issued'),
(8, 14, 'Standard', 140.00, '2024-08-12', 'Issued');

-- Tickets for Registrations from Event 9
INSERT INTO Ticket (EventID, UserID, TicketType, TicketPrice, TicketIssueDate, TicketStatus)
VALUES
(9, 15, 'Standard', 145.00, '2024-09-01', 'Issued'),
(9, 16, 'VIP', 200.00, '2024-09-02', 'Cancelled'),
(9, 17, 'Standard', 145.00, '2024-09-03', 'Issued'),
(9, 18, 'Standard', 145.00, '2024-09-04', 'Cancelled'),
(9, 19, 'VIP', 200.00, '2024-09-05', 'Issued'),
(9, 20, 'Standard', 145.00, '2024-09-06', 'Issued'),
(9, 21, 'Standard', 145.00, '2024-09-07', 'Cancelled'),
(9, 22, 'VIP', 200.00, '2024-09-08', 'Issued'),
(9, 23, 'Standard', 145.00, '2024-09-09', 'Issued'),
(9, 24, 'Standard', 145.00, '2024-09-10', 'Cancelled'),
(9, 25, 'VIP', 200.00, '2024-09-11', 'Issued'),
(9, 26, 'Standard', 145.00, '2024-09-12', 'Issued'),
(9, 27, 'Standard', 145.00, '2024-09-13', 'Cancelled'),
(9, 28, 'VIP', 200.00, '2024-09-14', 'Issued'),
(9, 29, 'Standard', 145.00, '2024-09-15', 'Issued');

-- Tickets for Registrations from Event 10
INSERT INTO Ticket (EventID, UserID, TicketType, TicketPrice, TicketIssueDate, TicketStatus)
VALUES
(10, 30, 'VIP', 210.00, '2024-10-01', 'Issued'),
(10, 1, 'Standard', 150.00, '2024-10-02', 'Issued'),
(10, 2, 'VIP', 210.00, '2024-10-03', 'Issued'),
(10, 3, 'Standard', 150.00, '2024-10-04', 'Cancelled'),
(10, 4, 'Standard', 150.00, '2024-10-05', 'Issued'),
(10, 5, 'VIP', 210.00, '2024-10-06', 'Issued'),
(10, 6, 'Standard', 150.00, '2024-10-07', 'Cancelled'),
(10, 7, 'Standard', 150.00, '2024-10-08', 'Issued'),
(10, 8, 'VIP', 210.00, '2024-10-09', 'Issued'),
(10, 9, 'Standard', 150.00, '2024-10-10', 'Cancelled'),
(10, 10, 'Standard', 150.00, '2024-10-11', 'Issued');

-- Tickets for Registrations from Event 11
INSERT INTO Ticket (EventID, UserID, TicketType, TicketPrice, TicketIssueDate, TicketStatus)
VALUES
(11, 11, 'Standard', 90.00, '2024-11-01', 'Issued'),
(11, 12, 'VIP', 130.00, '2024-11-02', 'Cancelled'),
(11, 13, 'Standard', 90.00, '2024-11-03', 'Issued'),
(11, 14, 'VIP', 130.00, '2024-11-04', 'Issued'),
(11, 15, 'Standard', 90.00, '2024-11-05', 'Issued'),
(11, 16, 'Standard', 90.00, '2024-11-06', 'Issued'),
(11, 17, 'VIP', 130.00, '2024-11-07', 'Cancelled'),
(11, 18, 'Standard', 90.00, '2024-11-08', 'Issued'),
(11, 19, 'VIP', 130.00, '2024-11-09', 'Issued'),
(11, 20, 'Standard', 90.00, '2024-11-10', 'Cancelled');

-- Tickets for Registrations from Event 12
INSERT INTO Ticket (EventID, UserID, TicketType, TicketPrice, TicketIssueDate, TicketStatus)
VALUES
(12, 21, 'Standard', 100.00, '2024-12-01', 'Issued'),
(12, 22, 'VIP', 140.00, '2024-12-02', 'Cancelled'),
(12, 23, 'Standard', 100.00, '2024-12-03', 'Issued'),
(12, 24, 'VIP', 140.00, '2024-12-04', 'Cancelled'),
(12, 25, 'Standard', 100.00, '2024-12-05', 'Issued'),
(12, 26, 'Standard', 100.00, '2024-12-06', 'Issued'),
(12, 27, 'VIP', 140.00, '2024-12-07', 'Issued'),
(12, 28, 'Standard', 100.00, '2024-12-08', 'Issued'),
(12, 29, 'VIP', 140.00, '2024-12-09', 'Cancelled'),
(12, 30, 'Standard', 100.00, '2024-12-10', 'Issued'),
(12, 1, 'VIP', 140.00, '2024-12-11', 'Cancelled');

-- Tickets for Registrations from Event 13
INSERT INTO Ticket (EventID, UserID, TicketType, TicketPrice, TicketIssueDate, TicketStatus)
VALUES
(13, 2, 'Standard', 115.00, '2025-01-02', 'Issued'),
(13, 3, 'VIP', 160.00, '2025-01-03', 'Cancelled'),
(13, 4, 'Standard', 115.00, '2025-01-04', 'Issued'),
(13, 5, 'VIP', 160.00, '2025-01-05', 'Cancelled'),
(13, 6, 'Standard', 115.00, '2025-01-06', 'Issued'),
(13, 7, 'Standard', 115.00, '2025-01-07', 'Issued'),
(13, 8, 'VIP', 160.00, '2025-01-08', 'Issued'),
(13, 9, 'Standard', 115.00, '2025-01-09', 'Cancelled'),
(13, 10, 'VIP', 160.00, '2025-01-10', 'Issued'),
(13, 11, 'Standard', 115.00, '2025-01-11', 'Issued');

-- Tickets for Registrations from Event 14
INSERT INTO Ticket (EventID, UserID, TicketType, TicketPrice, TicketIssueDate, TicketStatus)
VALUES
(14, 12, 'VIP', 125.00, '2025-02-01', 'Issued'),
(14, 13, 'Standard', 85.00, '2025-02-02', 'Issued'),
(14, 14, 'VIP', 125.00, '2025-02-03', 'Cancelled'),
(14, 15, 'Standard', 85.00, '2025-02-04', 'Issued'),
(14, 16, 'VIP', 125.00, '2025-02-05', 'Issued'),
(14, 17, 'Standard', 85.00, '2025-02-06', 'Issued'),
(14, 18, 'VIP', 125.00, '2025-02-07', 'Issued'),
(14, 19, 'Standard', 85.00, '2025-02-08', 'Issued'),
(14, 20, 'VIP', 125.00, '2025-02-09', 'Issued'),
(14, 21, 'Standard', 85.00, '2025-02-10', 'Cancelled');

-- Tickets for Registrations from Event 15
INSERT INTO Ticket (EventID, UserID, TicketType, TicketPrice, TicketIssueDate, TicketStatus)
VALUES
(15, 22, 'Standard', 90.00, '2025-03-01', 'Issued'),
(15, 23, 'VIP', 140.00, '2025-03-02', 'Cancelled'),
(15, 24, 'Standard', 90.00, '2025-03-03', 'Issued'),
(15, 25, 'VIP', 140.00, '2025-03-04', 'Cancelled'),
(15, 26, 'Standard', 90.00, '2025-03-05', 'Issued'),
(15, 27, 'Standard', 90.00, '2025-03-06', 'Issued'),
(15, 28, 'VIP', 140.00, '2025-03-07', 'Issued'),
(15, 29, 'Standard', 90.00, '2025-03-08', 'Issued'),
(15, 30, 'VIP', 140.00, '2025-03-09', 'Issued'),
(15, 1, 'Standard', 90.00, '2025-03-10', 'Issued');

-- Tickets for Registrations from Event 16
INSERT INTO Ticket (EventID, UserID, TicketType, TicketPrice, TicketIssueDate, TicketStatus)
VALUES
(16, 2, 'VIP', 110.00, '2025-04-01', 'Issued'),
(16, 3, 'Standard', 70.00, '2025-04-02', 'Issued'),
(16, 4, 'VIP', 110.00, '2025-04-03', 'Cancelled'),
(16, 5, 'Standard', 70.00, '2025-04-04', 'Issued'),
(16, 6, 'VIP', 110.00, '2025-04-05', 'Issued'),
(16, 7, 'Standard', 70.00, '2025-04-06', 'Issued'),
(16, 8, 'VIP', 110.00, '2025-04-07', 'Cancelled'),
(16, 9, 'Standard', 70.00, '2025-04-08', 'Issued'),
(16, 10, 'VIP', 110.00, '2025-04-09', 'Issued'),
(16, 11, 'Standard', 70.00, '2025-04-10', 'Cancelled');

-- Tickets for Registrations from Event 17
INSERT INTO Ticket (EventID, UserID, TicketType, TicketPrice, TicketIssueDate, TicketStatus)
VALUES
(17, 12, 'Standard', 95.00, '2025-05-01', 'Issued'),
(17, 13, 'VIP', 145.00, '2025-05-02', 'Cancelled'),
(17, 14, 'Standard', 95.00, '2025-05-03', 'Issued'),
(17, 15, 'VIP', 145.00, '2025-05-04', 'Cancelled'),
(17, 16, 'Standard', 95.00, '2025-05-05', 'Issued'),
(17, 17, 'Standard', 95.00, '2025-05-06', 'Issued'),
(17, 18, 'VIP', 145.00, '2025-05-07', 'Issued'),
(17, 19, 'Standard', 95.00, '2025-05-08', 'Issued'),
(17, 20, 'VIP', 145.00, '2025-05-09', 'Issued'),
(17, 21, 'Standard', 95.00, '2025-05-10', 'Issued');

-- Tickets for Registrations from Event 18
INSERT INTO Ticket (EventID, UserID, TicketType, TicketPrice, TicketIssueDate, TicketStatus)
VALUES
(18, 22, 'VIP', 120.00, '2025-06-01', 'Issued'),
(18, 23, 'Standard', 80.00, '2025-06-02', 'Issued'),
(18, 24, 'VIP', 120.00, '2025-06-03', 'Cancelled'),
(18, 25, 'Standard', 80.00, '2025-06-04', 'Issued'),
(18, 26, 'VIP', 120.00, '2025-06-05', 'Issued'),
(18, 27, 'Standard', 80.00, '2025-06-06', 'Issued'),
(18, 28, 'VIP', 120.00, '2025-06-07', 'Issued'),
(18, 29, 'Standard', 80.00, '2025-06-08', 'Issued'),
(18, 30, 'VIP', 120.00, '2025-06-09', 'Issued'),
(18, 1, 'Standard', 80.00, '2025-06-10', 'Cancelled');

-- Tickets for Registrations from Event 19
INSERT INTO Ticket (EventID, UserID, TicketType, TicketPrice, TicketIssueDate, TicketStatus)
VALUES
(19, 2, 'Standard', 105.00, '2025-07-01', 'Issued'),
(19, 3, 'VIP', 155.00, '2025-07-02', 'Cancelled'),
(19, 4, 'Standard', 105.00, '2025-07-03', 'Issued'),
(19, 5, 'VIP', 155.00, '2025-07-04', 'Cancelled'),
(19, 6, 'Standard', 105.00, '2025-07-05', 'Issued'),
(19, 7, 'Standard', 105.00, '2025-07-06', 'Issued'),
(19, 8, 'VIP', 155.00, '2025-07-07', 'Issued'),
(19, 9, 'Standard', 105.00, '2025-07-08', 'Cancelled'),
(19, 10, 'VIP', 155.00, '2025-07-09', 'Issued'),
(19, 11, 'Standard', 105.00, '2025-07-10', 'Issued');

-- Tickets for Registrations from Event 20
INSERT INTO Ticket (EventID, UserID, TicketType, TicketPrice, TicketIssueDate, TicketStatus)
VALUES
(20, 12, 'VIP', 135.00, '2025-08-01', 'Issued'),
(20, 13, 'Standard', 95.00, '2025-08-02', 'Issued'),
(20, 14, 'VIP', 135.00, '2025-08-03', 'Cancelled'),
(20, 15, 'Standard', 95.00, '2025-08-04', 'Issued'),
(20, 16, 'VIP', 135.00, '2025-08-05', 'Issued'),
(20, 17, 'Standard', 95.00, '2025-08-06', 'Issued'),
(20, 18, 'VIP', 135.00, '2025-08-07', 'Issued'),
(20, 19, 'Standard', 95.00, '2025-08-08', 'Issued'),
(20, 20, 'VIP', 135.00, '2025-08-09', 'Issued'),
(20, 21, 'Standard', 95.00, '2025-08-10', 'Cancelled');

-- Attendance records for Event 1
INSERT INTO Attendance (UserID, EventID, CheckInTime, CheckOutTime)
VALUES
(1, 1, '2024-01-15 09:00:00', '2024-01-15 12:00:00'),
(2, 1, '2024-01-15 09:30:00', '2024-01-15 11:30:00'),
(3, 1, '2024-01-15 10:00:00', '2024-01-15 13:00:00'),
(4, 1, '2024-01-15 10:30:00', '2024-01-15 14:00:00'),
(5, 1, '2024-01-15 11:00:00', '2024-01-15 15:00:00');

-- Attendance records for Event 2
INSERT INTO Attendance (UserID, EventID, CheckInTime, CheckOutTime)
VALUES
(6, 2, '2024-02-10 09:15:00', '2024-02-10 12:15:00'),
(7, 2, '2024-02-10 09:45:00', '2024-02-10 13:30:00'),
(8, 2, '2024-02-10 10:00:00', '2024-02-10 14:00:00'),
(9, 2, '2024-02-10 10:15:00', NULL),  -- Did not check out
(10, 2, '2024-02-10 10:45:00', '2024-02-10 13:45:00');

-- Attendance records for Event 3
INSERT INTO Attendance (UserID, EventID, CheckInTime, CheckOutTime)
VALUES
(11, 3, '2024-03-05 09:30:00', '2024-03-05 12:30:00'),
(12, 3, '2024-03-05 10:00:00', '2024-03-05 13:00:00'),
(13, 3, '2024-03-05 10:30:00', '2024-03-05 13:30:00'),
(14, 3, '2024-03-05 11:00:00', '2024-03-05 14:00:00'),
(15, 3, '2024-03-05 11:30:00', NULL);  -- Did not check out

-- Attendance records for Event 4
INSERT INTO Attendance (UserID, EventID, CheckInTime, CheckOutTime)
VALUES
(16, 4, '2024-04-20 08:45:00', '2024-04-20 12:15:00'),
(17, 4, '2024-04-20 09:15:00', '2024-04-20 12:45:00'),
(18, 4, '2024-04-20 09:45:00', '2024-04-20 13:00:00'),
(19, 4, '2024-04-20 10:15:00', '2024-04-20 13:30:00'),
(20, 4, '2024-04-20 10:45:00', NULL);  -- Did not check out

-- Attendance records for Event 5
INSERT INTO Attendance (UserID, EventID, CheckInTime, CheckOutTime)
VALUES
(21, 5, '2024-05-15 08:30:00', '2024-05-15 11:30:00'),
(22, 5, '2024-05-15 09:00:00', '2024-05-15 12:00:00'),
(23, 5, '2024-05-15 09:30:00', '2024-05-15 12:30:00'),
(24, 5, '2024-05-15 10:00:00', NULL),  -- Did not check out
(25, 5, '2024-05-15 10:30:00', '2024-05-15 13:30:00');

-- Attendance records for Event 6
INSERT INTO Attendance (UserID, EventID, CheckInTime, CheckOutTime)
VALUES
(26, 6, '2024-06-01 08:45:00', '2024-06-01 11:45:00'),
(27, 6, '2024-06-01 09:15:00', '2024-06-01 12:15:00'),
(28, 6, '2024-06-01 09:45:00', '2024-06-01 13:00:00'),
(29, 6, '2024-06-01 10:15:00', '2024-06-01 14:00:00'),
(30, 6, '2024-06-01 10:45:00', NULL);  -- Did not check out

-- Attendance records for Event 7
INSERT INTO Attendance (UserID, EventID, CheckInTime, CheckOutTime)
VALUES
(1, 7, '2024-07-20 08:00:00', '2024-07-20 11:00:00'),
(2, 7, '2024-07-20 08:30:00', '2024-07-20 12:00:00'),
(3, 7, '2024-07-20 09:00:00', '2024-07-20 12:30:00'),
(4, 7, '2024-07-20 09:30:00', NULL),  -- Did not check out
(5, 7, '2024-07-20 10:00:00', '2024-07-20 13:00:00');

-- Attendance records for Event 8
INSERT INTO Attendance (UserID, EventID, CheckInTime, CheckOutTime)
VALUES
(6, 8, '2024-08-05 08:15:00', '2024-08-05 11:45:00'),
(7, 8, '2024-08-05 08:45:00', '2024-08-05 12:15:00'),
(8, 8, '2024-08-05 09:15:00', '2024-08-05 12:45:00'),
(9, 8, '2024-08-05 09:45:00', NULL),  -- Did not check out
(10, 8, '2024-08-05 10:15:00', '2024-08-05 13:15:00');

-- Attendance records for Event 9
INSERT INTO Attendance (UserID, EventID, CheckInTime, CheckOutTime)
VALUES
(11, 9, '2024-09-10 08:00:00', '2024-09-10 11:30:00'),
(12, 9, '2024-09-10 08:30:00', '2024-09-10 12:00:00'),
(13, 9, '2024-09-10 09:00:00', '2024-09-10 12:30:00'),
(14, 9, '2024-09-10 09:30:00', NULL),  -- Did not check out
(15, 9, '2024-09-10 10:00:00', '2024-09-10 13:30:00');

-- Attendance records for Event 10
INSERT INTO Attendance (UserID, EventID, CheckInTime, CheckOutTime)
VALUES
(16, 10, '2024-10-20 08:15:00', '2024-10-20 12:00:00'),
(17, 10, '2024-10-20 08:45:00', '2024-10-20 12:30:00'),
(18, 10, '2024-10-20 09:15:00', '2024-10-20 13:00:00'),
(19, 10, '2024-10-20 09:45:00', NULL),  -- Did not check out
(20, 10, '2024-10-20 10:15:00', '2024-10-20 13:45:00');

-- Continue similarly for Events 11-20, maintaining varied check-in and check-out times for each user, with some missing check-out times.
-- Attendance records for Event 11
INSERT INTO Attendance (UserID, EventID, CheckInTime, CheckOutTime)
VALUES
(11, 11, '2024-11-05 08:30:00', '2024-11-05 11:30:00'),
(12, 11, '2024-11-05 09:00:00', '2024-11-05 12:00:00'),
(13, 11, '2024-11-05 09:30:00', '2024-11-05 12:30:00'),
(14, 11, '2024-11-05 10:00:00', NULL),  -- Did not check out
(15, 11, '2024-11-05 10:30:00', '2024-11-05 13:30:00');

-- Attendance records for Event 12
INSERT INTO Attendance (UserID, EventID, CheckInTime, CheckOutTime)
VALUES
(16, 12, '2024-12-15 08:00:00', '2024-12-15 11:00:00'),
(17, 12, '2024-12-15 08:30:00', '2024-12-15 12:00:00'),
(18, 12, '2024-12-15 09:00:00', '2024-12-15 12:30:00'),
(19, 12, '2024-12-15 09:30:00', NULL),  -- Did not check out
(20, 12, '2024-12-15 10:00:00', '2024-12-15 13:00:00');

-- Attendance records for Event 13
INSERT INTO Attendance (UserID, EventID, CheckInTime, CheckOutTime)
VALUES
(21, 13, '2025-01-10 08:15:00', '2025-01-10 11:45:00'),
(22, 13, '2025-01-10 08:45:00', '2025-01-10 12:15:00'),
(23, 13, '2025-01-10 09:15:00', '2025-01-10 12:45:00'),
(24, 13, '2025-01-10 09:45:00', NULL),  -- Did not check out
(25, 13, '2025-01-10 10:15:00', '2025-01-10 13:15:00');

-- Attendance records for Event 14
INSERT INTO Attendance (UserID, EventID, CheckInTime, CheckOutTime)
VALUES
(26, 14, '2025-02-12 08:00:00', '2025-02-12 11:30:00'),
(27, 14, '2025-02-12 08:30:00', '2025-02-12 12:00:00'),
(28, 14, '2025-02-12 09:00:00', '2025-02-12 12:30:00'),
(29, 14, '2025-02-12 09:30:00', NULL),  -- Did not check out
(30, 14, '2025-02-12 10:00:00', '2025-02-12 13:30:00');

-- Attendance records for Event 15
INSERT INTO Attendance (UserID, EventID, CheckInTime, CheckOutTime)
VALUES
(1, 15, '2025-03-18 08:15:00', '2025-03-18 12:00:00'),
(2, 15, '2025-03-18 08:45:00', '2025-03-18 12:30:00'),
(3, 15, '2025-03-18 09:15:00', '2025-03-18 13:00:00'),
(4, 15, '2025-03-18 09:45:00', NULL),  -- Did not check out
(5, 15, '2025-03-18 10:15:00', '2025-03-18 13:45:00');

-- Attendance records for Event 16
INSERT INTO Attendance (UserID, EventID, CheckInTime, CheckOutTime)
VALUES
(6, 16, '2025-04-22 08:30:00', '2025-04-22 11:30:00'),
(7, 16, '2025-04-22 09:00:00', '2025-04-22 12:00:00'),
(8, 16, '2025-04-22 09:30:00', '2025-04-22 12:30:00'),
(9, 16, '2025-04-22 10:00:00', NULL),  -- Did not check out
(10, 16, '2025-04-22 10:30:00', '2025-04-22 13:30:00');

-- Attendance records for Event 17
INSERT INTO Attendance (UserID, EventID, CheckInTime, CheckOutTime)
VALUES
(11, 17, '2025-05-25 08:15:00', '2025-05-25 11:45:00'),
(12, 17, '2025-05-25 08:45:00', '2025-05-25 12:15:00'),
(13, 17, '2025-05-25 09:15:00', '2025-05-25 12:45:00'),
(14, 17, '2025-05-25 09:45:00', NULL),  -- Did not check out
(15, 17, '2025-05-25 10:15:00', '2025-05-25 13:15:00');

-- Attendance records for Event 18
INSERT INTO Attendance (UserID, EventID, CheckInTime, CheckOutTime)
VALUES
(16, 18, '2025-06-07 08:00:00', '2025-06-07 11:30:00'),
(17, 18, '2025-06-07 08:30:00', '2025-06-07 12:00:00'),
(18, 18, '2025-06-07 09:00:00', '2025-06-07 12:30:00'),
(19, 18, '2025-06-07 09:30:00', NULL),  -- Did not check out
(20, 18, '2025-06-07 10:00:00', '2025-06-07 13:00:00');

-- Attendance records for Event 19
INSERT INTO Attendance (UserID, EventID, CheckInTime, CheckOutTime)
VALUES
(21, 19, '2025-07-14 08:15:00', '2025-07-14 11:45:00'),
(22, 19, '2025-07-14 08:45:00', '2025-07-14 12:15:00'),
(23, 19, '2025-07-14 09:15:00', '2025-07-14 12:45:00'),
(24, 19, '2025-07-14 09:45:00', NULL),  -- Did not check out
(25, 19, '2025-07-14 10:15:00', '2025-07-14 13:15:00');

-- Attendance records for Event 20
INSERT INTO Attendance (UserID, EventID, CheckInTime, CheckOutTime)
VALUES
(26, 20, '2025-08-12 08:30:00', '2025-08-12 11:30:00'),
(27, 20, '2025-08-12 09:00:00', '2025-08-12 12:00:00'),
(28, 20, '2025-08-12 09:30:00', '2025-08-12 12:30:00'),
(29, 20, '2025-08-12 10:00:00', NULL),  -- Did not check out
(30, 20, '2025-08-12 10:30:00', '2025-08-12 13:30:00');

-- Resources available for event management
INSERT INTO Resource (ResourceName, ResourceDescription, Quantity)
VALUES
('Projector', 'High-definition projector for presentations', 10),
('Sound System', 'Audio system with microphones and speakers', 15),
('Tables', 'Folding tables for event setup', 50),
('Chairs', 'Seating for attendees', 200),
('Laptops', 'Laptops for registration and event management', 25),
('Lighting', 'Stage and area lighting equipment', 12),
('Stage', 'Portable stage setup', 3),
('Whiteboard', 'Large whiteboards with markers', 10),
('Wi-Fi Router', 'Wireless internet setup', 5),
('Refreshments', 'Refreshments including water, snacks, and beverages', 100);

-- Resource allocations for Event 1
INSERT INTO EventResourceAllocation (EventID, ResourceID, AllocatedQuantity, AllocationDate, AllocationTime)
VALUES
(1, 1, 2, '2024-01-14', '08:00:00'),  -- 2 Projectors
(1, 2, 1, '2024-01-14', '08:15:00'),  -- 1 Sound System
(1, 3, 10, '2024-01-14', '08:30:00'), -- 10 Tables
(1, 4, 100, '2024-01-14', '08:45:00');-- 100 Chairs

-- Resource allocations for Event 2
INSERT INTO EventResourceAllocation (EventID, ResourceID, AllocatedQuantity, AllocationDate, AllocationTime)
VALUES
(2, 2, 2, '2024-02-09', '09:00:00'),  -- 2 Sound Systems
(2, 4, 50, '2024-02-09', '09:15:00'), -- 50 Chairs
(2, 6, 3, '2024-02-09', '09:30:00'),  -- 3 Lighting units
(2, 7, 1, '2024-02-09', '09:45:00');  -- 1 Stage

-- Resource allocations for Event 3
INSERT INTO EventResourceAllocation (EventID, ResourceID, AllocatedQuantity, AllocationDate, AllocationTime)
VALUES
(3, 5, 5, '2024-03-04', '08:00:00'),  -- 5 Laptops
(3, 1, 1, '2024-03-04', '08:30:00'),  -- 1 Projector
(3, 4, 80, '2024-03-04', '09:00:00'); -- 80 Chairs

-- Resource allocations for Event 4
INSERT INTO EventResourceAllocation (EventID, ResourceID, AllocatedQuantity, AllocationDate, AllocationTime)
VALUES
(4, 1, 1, '2024-04-19', '10:00:00'),  -- 1 Projector
(4, 2, 2, '2024-04-19', '10:15:00'),  -- 2 Sound Systems
(4, 3, 12, '2024-04-19', '10:30:00'), -- 12 Tables
(4, 4, 120, '2024-04-19', '10:45:00');-- 120 Chairs

-- Resource allocations for Event 5
INSERT INTO EventResourceAllocation (EventID, ResourceID, AllocatedQuantity, AllocationDate, AllocationTime)
VALUES
(5, 8, 2, '2024-05-14', '07:45:00'),  -- 2 Whiteboards
(5, 10, 75, '2024-05-14', '08:00:00'), -- 75 Refreshments
(5, 6, 2, '2024-05-14', '08:15:00');   -- 2 Lighting units

-- Resource allocations for Event 6
INSERT INTO EventResourceAllocation (EventID, ResourceID, AllocatedQuantity, AllocationDate, AllocationTime)
VALUES
(6, 5, 4, '2024-05-31', '09:00:00'),  -- 4 Laptops
(6, 4, 60, '2024-05-31', '09:15:00'), -- 60 Chairs
(6, 3, 10, '2024-05-31', '09:30:00'); -- 10 Tables

-- Resource allocations for Event 7
INSERT INTO EventResourceAllocation (EventID, ResourceID, AllocatedQuantity, AllocationDate, AllocationTime)
VALUES
(7, 1, 1, '2024-07-19', '10:00:00'),  -- 1 Projector
(7, 2, 1, '2024-07-19', '10:15:00'),  -- 1 Sound System
(7, 10, 80, '2024-07-19', '10:30:00'); -- 80 Refreshments

-- Resource allocations for Event 8
INSERT INTO EventResourceAllocation (EventID, ResourceID, AllocatedQuantity, AllocationDate, AllocationTime)
VALUES
(8, 1, 2, '2024-08-04', '09:00:00'),  -- 2 Projectors
(8, 5, 3, '2024-08-04', '09:30:00'),  -- 3 Laptops
(8, 3, 15, '2024-08-04', '10:00:00'); -- 15 Tables

-- Resource allocations for Event 9
INSERT INTO EventResourceAllocation (EventID, ResourceID, AllocatedQuantity, AllocationDate, AllocationTime)
VALUES
(9, 2, 1, '2024-09-09', '08:30:00'),  -- 1 Sound System
(9, 4, 100, '2024-09-09', '09:00:00'), -- 100 Chairs
(9, 10, 50, '2024-09-09', '09:15:00'); -- 50 Refreshments

-- Resource allocations for Event 10
INSERT INTO EventResourceAllocation (EventID, ResourceID, AllocatedQuantity, AllocationDate, AllocationTime)
VALUES
(10, 6, 4, '2024-10-19', '08:00:00'), -- 4 Lighting units
(10, 7, 1, '2024-10-19', '08:15:00'), -- 1 Stage
(10, 3, 15, '2024-10-19', '08:30:00'), -- 15 Tables
(10, 4, 150, '2024-10-19', '08:45:00'); -- 150 Chairs

-- Continue similarly for Events 11-20 as needed, allocating appropriate resources based on the type and scale of the event.
-- Resource allocations for Event 11
INSERT INTO EventResourceAllocation (EventID, ResourceID, AllocatedQuantity, AllocationDate, AllocationTime)
VALUES
(11, 1, 1, '2024-11-04', '08:00:00'),  -- 1 Projector
(11, 2, 1, '2024-11-04', '08:15:00'),  -- 1 Sound System
(11, 3, 10, '2024-11-04', '08:30:00'), -- 10 Tables
(11, 4, 100, '2024-11-04', '08:45:00');-- 100 Chairs

-- Resource allocations for Event 12
INSERT INTO EventResourceAllocation (EventID, ResourceID, AllocatedQuantity, AllocationDate, AllocationTime)
VALUES
(12, 5, 4, '2024-12-14', '09:00:00'),  -- 4 Laptops
(12, 2, 2, '2024-12-14', '09:15:00'),  -- 2 Sound Systems
(12, 6, 3, '2024-12-14', '09:30:00'),  -- 3 Lighting units
(12, 4, 80, '2024-12-14', '09:45:00'); -- 80 Chairs

-- Resource allocations for Event 13
INSERT INTO EventResourceAllocation (EventID, ResourceID, AllocatedQuantity, AllocationDate, AllocationTime)
VALUES
(13, 1, 1, '2025-01-09', '08:00:00'),  -- 1 Projector
(13, 3, 12, '2025-01-09', '08:30:00'), -- 12 Tables
(13, 10, 70, '2025-01-09', '08:45:00');-- 70 Refreshments

-- Resource allocations for Event 14
INSERT INTO EventResourceAllocation (EventID, ResourceID, AllocatedQuantity, AllocationDate, AllocationTime)
VALUES
(14, 8, 2, '2025-02-11', '07:45:00'),  -- 2 Whiteboards
(14, 6, 2, '2025-02-11', '08:00:00'),  -- 2 Lighting units
(14, 5, 3, '2025-02-11', '08:15:00');  -- 3 Laptops

-- Resource allocations for Event 15
INSERT INTO EventResourceAllocation (EventID, ResourceID, AllocatedQuantity, AllocationDate, AllocationTime)
VALUES
(15, 9, 1, '2025-03-17', '08:00:00'),  -- 1 Wi-Fi Router
(15, 4, 50, '2025-03-17', '08:15:00'), -- 50 Chairs
(15, 2, 1, '2025-03-17', '08:30:00');  -- 1 Sound System

-- Resource allocations for Event 16
INSERT INTO EventResourceAllocation (EventID, ResourceID, AllocatedQuantity, AllocationDate, AllocationTime)
VALUES
(16, 10, 80, '2025-04-21', '09:00:00'), -- 80 Refreshments
(16, 3, 12, '2025-04-21', '09:15:00'),  -- 12 Tables
(16, 6, 4, '2025-04-21', '09:30:00');   -- 4 Lighting units

-- Resource allocations for Event 17
INSERT INTO EventResourceAllocation (EventID, ResourceID, AllocatedQuantity, AllocationDate, AllocationTime)
VALUES
(17, 1, 1, '2025-05-24', '08:00:00'),  -- 1 Projector
(17, 2, 1, '2025-05-24', '08:15:00'),  -- 1 Sound System
(17, 7, 1, '2025-05-24', '08:30:00'),  -- 1 Stage
(17, 5, 5, '2025-05-24', '08:45:00');  -- 5 Laptops

-- Resource allocations for Event 18
INSERT INTO EventResourceAllocation (EventID, ResourceID, AllocatedQuantity, AllocationDate, AllocationTime)
VALUES
(18, 6, 2, '2025-06-06', '09:00:00'),  -- 2 Lighting units
(18, 4, 75, '2025-06-06', '09:15:00'), -- 75 Chairs
(18, 10, 60, '2025-06-06', '09:30:00');-- 60 Refreshments

-- Resource allocations for Event 19
INSERT INTO EventResourceAllocation (EventID, ResourceID, AllocatedQuantity, AllocationDate, AllocationTime)
VALUES
(19, 8, 1, '2025-07-13', '08:00:00'),  -- 1 Whiteboard
(19, 2, 1, '2025-07-13', '08:15:00'),  -- 1 Sound System
(19, 9, 1, '2025-07-13', '08:30:00'),  -- 1 Wi-Fi Router
(19, 4, 60, '2025-07-13', '08:45:00'); -- 60 Chairs

-- Resource allocations for Event 20
INSERT INTO EventResourceAllocation (EventID, ResourceID, AllocatedQuantity, AllocationDate, AllocationTime)
VALUES
(20, 1, 2, '2025-08-11', '08:00:00'),  -- 2 Projectors
(20, 5, 4, '2025-08-11', '08:15:00'),  -- 4 Laptops
(20, 3, 15, '2025-08-11', '08:30:00'), -- 15 Tables
(20, 4, 120, '2025-08-11', '08:45:00');-- 120 Chairs

-- Sponsors for various events
INSERT INTO Sponsor (SponsorFName, SponsorLName, SponsorPhone, SponsorEmail)
VALUES
('Global', 'Tech', '1234567890', 'contact@globaltech.com'),
('Health', 'Wellness', '0987654321', 'sponsor@healthwellness.org'),
('NextGen', 'Career', '1122334455', 'info@nextgencareer.com'),
('Music', 'World', '2233445566', 'music@musicworld.com'),
('Art', 'Express', '3344556677', 'hello@artexpress.com'),
('Startup', 'Hub', '4455667788', 'partners@startuphub.com'),
('Culinary', 'Delights', '5566778899', 'support@culinarydelights.com'),
('Science', 'Innovators', '6677889900', 'inquiries@scienceinnovators.com'),
('Writers', 'Network', '7788990011', 'team@writersnetwork.com'),
('Business', 'Associates', '8899001122', 'sponsors@businessassociates.com'),
('Charity', 'Run', '9900112233', 'contact@charityrun.com'),
('Dance', 'League', '1011121314', 'info@danceleague.com'),
('Code', 'Warriors', '1112131415', 'sponsors@codewarriors.com'),
('Photo', 'Vision', '1213141516', 'hello@photovision.com'),
('Film', 'Society', '1314151617', 'team@filmsociety.com'),
('Eco', 'Alliance', '1415161718', 'partners@ecoalliance.org'),
('Yoga', 'Minds', '1516171819', 'hello@yogaminds.com'),
('Community', 'Hearts', '1617181920', 'contact@communityhearts.com'),
('Public', 'Speaking', '1718192021', 'info@publicspeaking.org'),
('Tech', 'Innovators', '1819202122', 'sponsor@techinnovators.com');

-- Multiple sponsorships for various events
INSERT INTO EventSponsor (EventID, SponsorID, SponsorshipAmount, SponsoredDate, SponsorshipType)
VALUES
(1, 1, 2000.00, '2024-01-10', 'Financial'),
(1, 2, 1500.00, '2024-01-11', 'In-kind'),
(2, 2, 1800.00, '2024-02-01', 'Financial'),
(2, 3, 2500.00, '2024-02-02', 'Product'),
(3, 1, 2100.00, '2024-03-01', 'Financial'),
(3, 4, 3000.00, '2024-03-05', 'Media'),
(4, 4, 4000.00, '2024-04-10', 'Media'),
(4, 5, 1500.00, '2024-04-12', 'Product'),
(5, 6, 2200.00, '2024-05-05', 'Financial'),
(5, 7, 1300.00, '2024-05-10', 'Product'),
(6, 6, 1500.00, '2024-06-01', 'Financial'),
(6, 8, 1100.00, '2024-06-03', 'Media'),
(7, 7, 2300.00, '2024-07-01', 'Product'),
(7, 9, 900.00, '2024-07-02', 'Financial'),
(8, 8, 2800.00, '2024-08-01', 'Financial'),
(8, 10, 1700.00, '2024-08-05', 'Community Support'),
(9, 9, 2500.00, '2024-09-05', 'Media'),
(9, 11, 1000.00, '2024-09-06', 'Charity'),
(10, 10, 2100.00, '2024-10-10', 'Financial'),
(10, 12, 1600.00, '2024-10-12', 'Product'),
(11, 11, 1400.00, '2024-11-01', 'Charity'),
(11, 13, 1700.00, '2024-11-02', 'Financial'),
(12, 12, 1800.00, '2024-12-01', 'Product'),
(12, 14, 1200.00, '2024-12-03', 'Media'),
(13, 13, 2400.00, '2025-01-01', 'Financial'),
(13, 15, 1300.00, '2025-01-04', 'Product'),
(14, 14, 1500.00, '2025-02-10', 'Media'),
(14, 16, 1100.00, '2025-02-12', 'Community Support'),
(15, 15, 1000.00, '2025-03-15', 'Media'),
(15, 17, 1300.00, '2025-03-18', 'Product'),
(16, 16, 2200.00, '2025-04-01', 'Financial'),
(16, 18, 1700.00, '2025-04-02', 'In-kind'),
(17, 17, 1400.00, '2025-05-10', 'Product'),
(17, 19, 1600.00, '2025-05-12', 'Media'),
(18, 18, 900.00, '2025-06-05', 'Community Support'),
(18, 20, 2000.00, '2025-06-07', 'Financial'),
(19, 19, 2400.00, '2025-07-01', 'Financial'),
(19, 1, 1000.00, '2025-07-02', 'Product'),
(20, 20, 1800.00, '2025-08-01', 'In-kind'),
(20, 2, 1300.00, '2025-08-02', 'Financial');

-- Expanded bookings for venues by organizers with varied dates and statuses
INSERT INTO Booking (VenueID, OrganizerID, BookingDate, BookingStatus)
VALUES
(1, 1, '2024-01-10', 'Confirmed'),
(1, 2, '2024-01-12', 'Pending'),
(2, 3, '2024-02-05', 'Confirmed'),
(2, 4, '2024-02-10', 'Cancelled'),
(3, 5, '2024-03-01', 'Confirmed'),
(3, 6, '2024-03-02', 'Pending'),
(4, 7, '2024-04-01', 'Confirmed'),
(4, 8, '2024-04-04', 'Confirmed'),
(5, 9, '2024-05-10', 'Confirmed'),
(5, 10, '2024-05-12', 'Pending'),
(6, 11, '2024-06-01', 'Cancelled'),
(6, 12, '2024-06-05', 'Confirmed'),
(7, 13, '2024-07-10', 'Confirmed'),
(7, 14, '2024-07-12', 'Pending'),
(8, 15, '2024-08-01', 'Confirmed'),
(8, 16, '2024-08-02', 'Confirmed'),
(9, 17, '2024-09-10', 'Confirmed'),
(9, 18, '2024-09-12', 'Pending'),
(10, 19, '2024-10-05', 'Confirmed'),
(10, 20, '2024-10-08', 'Cancelled'),
(1, 5, '2024-11-10', 'Confirmed'),
(2, 6, '2024-12-10', 'Pending'),
(3, 7, '2025-01-05', 'Confirmed'),
(4, 8, '2025-02-05', 'Confirmed'),
(5, 9, '2025-03-05', 'Confirmed'),
(6, 10, '2025-04-05', 'Cancelled'),
(7, 11, '2025-05-05', 'Pending'),
(8, 12, '2025-06-05', 'Confirmed'),
(9, 13, '2025-07-05', 'Confirmed'),
(10, 14, '2025-08-05', 'Confirmed');


