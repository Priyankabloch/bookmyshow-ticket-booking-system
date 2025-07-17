CREATE TABLE USER_LOGIN (
USERNAME VARCHAR(25) NOT NULL,
PASS_WORD VARCHAR(25) NOT NULL
)
CREATE TABLE Admin (
    AdminID INT PRIMARY KEY,
    AdminName VARCHAR(255),
    ContactDetails VARCHAR(255),
    EmailAddress VARCHAR(255)
 )   
CREATE TABLE bookings (
    booking_id INT  PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    phone VARCHAR(20),
    num_tickets INT
);
CREATE TABLE payments (
    payment_id INT PRIMARY KEY,
    customer_id INT,
    amount DECIMAL(10, 2),
    payment_date DATE,
    payment_method VARCHAR(50)
);
CREATE TABLE theaters (
    theater_id INT PRIMARY KEY,
    name VARCHAR(100),
    location VARCHAR(100),
    capacity INT,
    total_seats INT,
    booked_seats INT
);
CREATE TABLE movies (
    movie_id INT PRIMARY KEY,
    title VARCHAR(255),
    genre VARCHAR(100),
    duration INT, -- Duration in minutes
    release_date DATE,
    director VARCHAR(255)
);



