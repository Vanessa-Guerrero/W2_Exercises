DROP DATABASE IF EXISTS nessasburgershack;

CREATE DATABASE nessasburgershack;

USE nessasburgershack;

## Creating my Customers table

CREATE TABLE Customers (
  Customer_ID INT PRIMARY KEY AUTO_INCREMENT,
  First_Name VARCHAR(50) NOT NULL,
  Last_Name VARCHAR(50) NOT NULL,
  Phone_Number VARCHAR(20) NOT NULL, 
  Email_Address VARCHAR(100), 
  CONSTRAINT UQ_Contact UNIQUE (Phone_Number, Email_Address),
  INDEX Customer_Name (First_Name, Last_Name),
  INDEX Customer_Contact (Phone_Number, Email_Address)
);

## Creating my Employees table

CREATE TABLE Employees (
  Employee_ID INT PRIMARY KEY AUTO_INCREMENT,
  Title VARCHAR(25) NOT NULL,
  First_Name VARCHAR(50) NOT NULL,
  Last_Name VARCHAR(50) NOT NULL,
  Phone_Number VARCHAR(50) NOT NULL,
  Email_Address VARCHAR(100) NOT NULL,
  Hire_Date DATE NOT NULL,
  Monthly_Salary DECIMAL (7,2) NOT NULL,
  CONSTRAINT UQ_Contact UNIQUE (Phone_Number, Email_Address),
  INDEX Employee_Name (First_Name, Last_Name),
  INDEX Employee_Contact (Phone_Number, Email_Address)
  );

## Creating my orders table 

CREATE TABLE Orders (
Order_ID INT PRIMARY KEY AUTO_INCREMENT,
Customer_ID INT NOT NULL,
Employee_ID INT NOT NULL,
Amount_Paid DECIMAL (5,2),
Payment_Method VARCHAR(25),
FOREIGN KEY (Customer_ID) REFERENCES Customers(Customer_ID),
FOREIGN KEY (Employee_ID) REFERENCES Employees(Employee_ID)
);

## Creating my reservations table

CREATE TABLE Reservations (
Reservation_ID INT PRIMARY KEY AUTO_INCREMENT,
Order_ID INT NOT NULL,
Table_Number INT NOT NULL,
Date_Time DATETIME NOT NULL,
FOREIGN KEY (ORDER_ID) REFERENCES Orders(ORDER_ID)
);
