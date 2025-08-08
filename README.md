# Movie Ticket Booking System

Welcome to the **Movie Ticket Booking System**, a database project created as part of submission for the **Heal Bharat Internship**.

---

## Project Overview

This system manages movie show listings, seat bookings, theater details, and user data, and supports complex queries like seat availability, highest revenue-generating movies, and most popular time slots.

---

## Objectives

- Design a fully normalized database (up to 3NF)
- Implement composite primary keys for seats in shows
- Write SQL queries for real-time seat availability
- Analyze booking data for revenue and popularity

---

##  Tech Stack

- **Database:** MySQL
- **Concepts Used:**  
  - Composite Keys  
  - Joins and Aggregation  
  - Subqueries  
  - Normalization (1NF → 3NF)

---

## Database Schema

### Tables:
- `Users`
- `Movies`
- `Theaters`
- `Shows`
- `Seats`
- `Bookings`
- `Booking_Seats` *(Composite key)*

### Highlights:
- **Composite Key:** `(ShowID, SeatID)` in `Booking_Seats`
- **Seat availability check** using `NOT IN` subquery
- **Revenue and analytics** via aggregation queries

---

## Sample Queries

### 1. Available Seats in a Show
```sql
SELECT s.SeatID, s.SeatNumber
FROM Seats s
JOIN Shows sh ON s.TheaterID = sh.TheaterID
WHERE sh.ShowID = 101
AND s.SeatID NOT IN (
    SELECT SeatID FROM Booking_Seats WHERE ShowID = 101
);
