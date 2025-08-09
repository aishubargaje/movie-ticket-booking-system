-- Users
INSERT INTO Users (Name, Email, Phone) VALUES
('Aishwarya Bargaje', 'aishwarya@gmail.com', '9999999999'),
('Rahul Sharma', 'rahul@gmail.com', '8888888888'),
('Sneha Patil', 'sneha@gmail.com', '7777777777'),
('Samruddhi Shirke', 'samruddhi@yahoo.com', '4562589999'),
('Vishal Pawar', 'vishal@rediff.com', '8865482888'),
('Harshada Khomane', 'harshada@gmail.com', '8965741258'),
('Neha Gaikwad', 'neha@gmail.com', '5684523699'),
('Sahil Guli', 'sahil@yahoo.com', '9865452715'),
('Arjun Sule', 'arjun@gmail.com', '8457236558'),
('Nikhil Kapoor', 'nikhil@yahoo.com', '9956478512');

select * from users;

-- Movies
INSERT INTO Movies (Title, Genre, Duration, ReleaseDate) VALUES
('Chavva', 'Historical', 161, '2025-02-14'),
('Barbie', 'Fantasy', 120, '2023-07-21'),
('Pushpa 2', 'Action', 155, '2024-08-15'),
('Sky Force', 'Action', 125, '2025-01-24'),
('Sikandar', 'Thriller', 135, '2025-03-30'),
('Raid 2', 'Crime', 138, '2025-05-1');

select * from movies;

-- Theaters
INSERT INTO Theaters (Name, Location) VALUES
('INOX City Center', 'Pune'),
('PVR Phoenix Mall', 'Mumbai'),
('Amnora Mall', 'Pune'),
('Season Mall', 'Mumbai');

select * from theaters;

-- Seats (5 seats per theater for demo)
INSERT INTO Seats (TheaterID, SeatNumber) VALUES
(1, 'A1'), (1, 'A2'), (1, 'A3'), (1, 'A4'), (1, 'A5'),
(2, 'B1'), (2, 'B2'), (2, 'B3'), (2, 'B4'), (2, 'B5'),
(3, 'C1'), (3, 'C2'), (3, 'C3'), (3, 'C4'), (3, 'C5'),
(4, 'D1'), (4, 'D2'), (4, 'D3'), (4, 'D4'), (4, 'D5');

Select * from seats;

-- Shows
INSERT INTO Shows (MovieID, TheaterID, ShowDate, ShowTime) VALUES
(1, 1, '2025-08-10', '18:00:00'), -- Chavva in INOX
(2, 3, '2025-08-10', '21:00:00'), -- Barbie in Amnora
(3, 2, '2025-08-10', '20:00:00'), -- Pushpa 2 in PVR
(4, 1, '2025-08-10', '16:00:00'), -- Sky Force in INOX
(5, 4, '2025-08-10', '23:00:00'), -- Sikandar in Season
(6, 2, '2025-08-10', '09:00:00'); -- Raid 2 in PVR

select * from shows;

-- Ticket Pricing
INSERT INTO TicketPricing (ShowID, Price) VALUES
(1, 250.00), (2, 200.00), (3, 300.00),(4, 250.00), (5, 250.00), (6, 350.00);

select * from ticketpricing;

-- Bookings
INSERT INTO Bookings (UserID, ShowID) VALUES
(1, 1),
(2, 1),
(3, 3),
(4, 6),
(5, 1),
(6, 3),
(7, 5),
(8, 2),
(9, 3),
(10, 4);

select * from bookings;

-- Booking Seats
-- Chavva Show (ShowID = 1)
INSERT INTO Booking_Seats (ShowID, SeatID, BookingID) VALUES
(1, 1, 1), -- A1 booked by Aishwarya
(1, 2, 2), -- A2 booked by Rahul
(1, 5, 3); -- A3 booked by Vishal

-- Pushpa 2 Show (ShowID = 3)
INSERT INTO Booking_Seats (ShowID, SeatID, BookingID) VALUES
(3, 6, 3); -- B1 booked by Harshada

-- Raid 2 (ShowID = 6)
INSERT INTO Booking_Seats (ShowID, SeatID, BookingID) VALUES
(6, 1, 6), -- A1 booked by Samruddhi
(6, 2, 2), -- A2 booked by Neha
(6, 5, 4), -- A3 booked by Sahil
(6, 3, 3); -- B1 booked by Arjun