-- 1. Available Seats in a Show (e.g., Chavva, ShowID = 1)
SELECT s.SeatID, s.SeatNumber
FROM Seats s
JOIN Shows sh ON s.TheaterID = sh.TheaterID
WHERE sh.ShowID = 1
AND s.SeatID NOT IN (
    SELECT SeatID FROM Booking_Seats WHERE ShowID = 1
);

-- 2️. Highest Revenue-Generating Movie
SELECT m.Title, SUM(tp.Price) AS TotalRevenue
FROM Movies m
JOIN Shows sh ON m.MovieID = sh.MovieID
JOIN Booking_Seats bs ON sh.ShowID = bs.ShowID
JOIN TicketPricing tp ON sh.ShowID = tp.ShowID
GROUP BY m.Title
ORDER BY TotalRevenue DESC
LIMIT 1;

-- 3️. Most Booked Time Slot
SELECT ShowTime, COUNT(*) AS TotalBookings
FROM Shows sh
JOIN Booking_Seats bs ON sh.ShowID = bs.ShowID
GROUP BY ShowTime
ORDER BY TotalBookings DESC
LIMIT 1;