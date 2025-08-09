-- Create Database
CREATE DATABASE CinemaTicketBooking;
USE CinemaTicketBooking;

-- Users Table
CREATE TABLE Users (
    UserID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100),
    Email VARCHAR(100) UNIQUE,
    Phone VARCHAR(15)
);

-- Movies Table
CREATE TABLE Movies (
    MovieID INT PRIMARY KEY AUTO_INCREMENT,
    Title VARCHAR(100),
    Genre VARCHAR(50),
    Duration INT,
    ReleaseDate DATE
);

-- Theaters Table
CREATE TABLE Theaters (
    TheaterID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100),
    Location VARCHAR(100)
);

-- Seats Table
CREATE TABLE Seats (
    SeatID INT PRIMARY KEY AUTO_INCREMENT,
    TheaterID INT,
    SeatNumber VARCHAR(10),
    FOREIGN KEY (TheaterID) REFERENCES Theaters(TheaterID)
);

-- Shows Table
CREATE TABLE Shows (
    ShowID INT PRIMARY KEY AUTO_INCREMENT,
    MovieID INT,
    TheaterID INT,
    ShowDate DATE,
    ShowTime TIME,
    FOREIGN KEY (MovieID) REFERENCES Movies(MovieID),
    FOREIGN KEY (TheaterID) REFERENCES Theaters(TheaterID)
);

-- Bookings Table
CREATE TABLE Bookings (
    BookingID INT PRIMARY KEY AUTO_INCREMENT,
    UserID INT,
    ShowID INT,
    BookingTime TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (UserID) REFERENCES Users(UserID),
    FOREIGN KEY (ShowID) REFERENCES Shows(ShowID)
);

-- Booking Seats Table (Composite Key)
CREATE TABLE Booking_Seats (
    ShowID INT,
    SeatID INT,
    BookingID INT,
    PRIMARY KEY (ShowID, SeatID),
    FOREIGN KEY (ShowID) REFERENCES Shows(ShowID),
    FOREIGN KEY (SeatID) REFERENCES Seats(SeatID),
    FOREIGN KEY (BookingID) REFERENCES Bookings(BookingID)
);

-- Ticket Pricing Table
CREATE TABLE TicketPricing (
    ShowID INT PRIMARY KEY,
    Price DECIMAL(6,2),
    FOREIGN KEY (ShowID) REFERENCES Shows(ShowID)
);
show tables ;