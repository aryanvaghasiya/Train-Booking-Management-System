
-- Create tables

CREATE TABLE User (
    userID INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    phone VARCHAR(15) NOT NULL,
    password VARCHAR(255) NOT NULL,
    active INT DEFAULT 0
);

CREATE TABLE Passenger (
    passengerID INT AUTO_INCREMENT PRIMARY KEY,
    userID INT NOT NULL,
    age INT NOT NULL,
    gender VARCHAR(50) NOT NULL,
    FOREIGN KEY (userID) REFERENCES User(userID)
);

CREATE TABLE Train (
    id INT AUTO_INCREMENT PRIMARY KEY,
    TrainID VARCHAR(50) UNIQUE NOT NULL,
    route_start VARCHAR(100) NOT NULL,
    route_end VARCHAR(100) NOT NULL,
    departure TIME NOT NULL,
    arrival TIME NOT NULL,
    coachtypes TEXT NOT NULL
);

CREATE TABLE Coach (
    coachID INT AUTO_INCREMENT PRIMARY KEY,
    trainID INT NOT NULL,
    AC INT DEFAULT 0,
    GE INT DEFAULT 0,
    SC INT DEFAULT 0,
    FOREIGN KEY (trainID) REFERENCES Train(id)
);

CREATE TABLE Bookings (
    bookingID INT AUTO_INCREMENT PRIMARY KEY,
    trainID VARCHAR(20) NOT NULL,
    passengerID INT NOT NULL,
    coachType VARCHAR(50) NOT NULL,
    numberOfSeats INT NOT NULL,
    FOREIGN KEY (trainID) REFERENCES Train(TrainID),
    FOREIGN KEY (passengerID) REFERENCES Passenger(passengerID)
);

CREATE TABLE Admin (
    adminID INT AUTO_INCREMENT PRIMARY KEY,
    userID INT,
    FOREIGN KEY (userID) REFERENCES User(userID)
);

-- Insert sample train data

INSERT INTO Train (TrainID, route_start, route_end, departure, arrival, coachtypes) VALUES
('TRAIN001', 'Delhi', 'Mumbai', '06:00:00', '18:30:00', 'AC, SC, GE'),
('TRAIN002', 'Mumbai', 'Chennai', '07:30:00', '21:45:00', 'AC, SC, GE'),
('TRAIN003', 'Chennai', 'Kolkata', '05:15:00', '20:00:00', 'AC, SC, GE'),
('TRAIN004', 'Kolkata', 'Delhi', '11:30:00', '14:30:00', 'AC, SC, GE');

-- Insert sample coach data

INSERT INTO Coach (trainID, AC, GE, SC) VALUES
(1, 100, 100, 100),
(2, 100, 100, 100),
(3, 100, 100, 100),
(4, 100, 100, 100);
