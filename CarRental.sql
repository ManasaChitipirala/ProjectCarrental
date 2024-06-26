CREATE TABLE Customer
(
    CustomerID INT PRIMARY KEY IDENTITY(1, 1),
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Email VARCHAR(100) NOT NULL,
    PhoneNumber VARCHAR(15) NOT NULL,
    Address VARCHAR(255) NOT NULL,
    Username VARCHAR(50) NOT NULL,
    Password VARCHAR(255) NOT NULL,
    RegistrationDate DATETIME NOT NULL
);

CREATE TABLE Vehicle
(
    VehicleID INT PRIMARY KEY IDENTITY(1, 1),
    Model VARCHAR(50) NOT NULL,
    Make VARCHAR(50) NOT NULL,
    Year INT NOT NULL,
    Color VARCHAR(20) NOT NULL,
    RegistrationNumber VARCHAR(20) NOT NULL,
    Availability BIT NOT NULL,
    DailyRate DECIMAL(5, 2) NOT NULL
);

CREATE TABLE Reservation
(
    ReservationID INT PRIMARY KEY IDENTITY(1, 1),
    CustomerID INT NOT NULL,
    VehicleID INT NOT NULL,
    StartDate DATETIME NOT NULL,
    EndDate DATETIME NOT NULL,
    TotalCost DECIMAL(10, 2) NOT NULL,
    Status VARCHAR(20) NOT NULL,
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID),
    FOREIGN KEY (VehicleID) REFERENCES Vehicle(VehicleID)
);

CREATE TABLE Admin
(
    AdminID INT PRIMARY KEY IDENTITY(1, 1),
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Email VARCHAR(100) NOT NULL,
    PhoneNumber VARCHAR(15) NOT NULL,
    Username VARCHAR(50) NOT NULL,
    Password VARCHAR(255) NOT NULL,
    Role VARCHAR(20) NOT NULL,
    JoinDate DATETIME NOT NULL
);


insert into Customer
values
    ('Manasa', 'Reddy', 'manasareddyc90@gmail.com', 41234567089, 'Chittoor', 'ManasaChitipirala', 'Manasac90', '2024-04-14'),
    ('Teddy', 'Mandy', 'mandyteddy@gmail.com', 2835681426, 'Tirupati', 'Mandyteddy', 'Mandy123', '2024-05-11');

insert into Vehicle
values
    (123, 'XZ', 'Tata', '2015', 'Black', 'AP03C123', 0, 50.00),
    (456, 'Creta', 'Hyundai', '2021', 'White', 'KA03H986', 1, 70.00);

insert into Reservation
values
    (105, 1, '2024-07-22', '2024-04-24', 150.00, 'Completed'),
    (205, 2, '2024-08-12', '2024-08-15', 280.00, 'Confirmed');

insert into [Admin]
values
    ('Sandy', 'L', 'sandy@gmail.com', 1235679876, 'SandyL', 'sandy1234', 'Admin', '2024-01-05'),
    ('Sanju', 'K', 'sanju@gmail.com', 3878654457, 'SanjuK', 'sanju57', 'DB Admin', '2024-02-28');





select *
from Customer;
select *
from Vehicle;
select *
from Admin;
select *
from Reservation;

delete from Vehicle where VehicleID = 4


delete from Admin where AdminID = 3
delete from Customer where FirstName = 'UVW'

Select ReservationID, Reservation.CustomerID, VehicleID, StartDate, EndDate, TotalCost, Status
from Reservation join Customer on Reservation.CustomerID = Customer.CustomerID
where Customer.Username = 'ManasaChitipirala';
