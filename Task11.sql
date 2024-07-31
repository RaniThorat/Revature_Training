show databases;

use mysql;

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Email VARCHAR(100) NOT NULL UNIQUE,
    Salary INT NOT NULL CHECK (Salary > 0),
    Department VARCHAR(50)
);

INSERT INTO Employees (EmployeeID, FirstName, LastName, Email, Salary, Department) VALUES
(1, 'John', 'Doe', 'john.doe@company.com', 60000, 'Marketing'),
(2, 'Jane', 'Smith', 'jane.smith@company.com', 75000, 'Sales'),
(3, 'Michael', 'Johnson', 'michael.johnson@company.com', 85000, 'Marketing'),
(4, 'Emily', 'Williams', 'emily.williams@company.com', 72000, 'IT'),
(5, 'David', 'Brown', 'david.brown@company.com', 65000, 'Sales'),
(6, 'Sarah', 'Davis', 'sarah.davis@company.com', 90000, 'IT'),
(7, 'Robert', 'Miller', 'robert.miller@company.com', 70000, 'Finance'),
(8, 'Jessica', 'Wilson', 'jessica.wilson@company.com', 65000, 'Finance'),
(9, 'Daniel', 'Anderson', 'daniel.anderson@company.com', 72000, 'IT'),
(10, 'Ashley', 'Taylor', 'ashley.taylor@company.com', 58000, 'Sales'),
(11, 'William', 'Brown', 'william.brown@company.com', 78000, 'Marketing'),
(12, 'Sophia', 'Davis', 'sophia.davis@company.com', 62000, 'HR');


CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50) NOT NULL
);


ALTER TABLE Employees ADD DepartmentID INT;

ALTER TABLE Employees ADD CONSTRAINT FK_Department
FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID);


CREATE TABLE Projects (
    ProjectID INT PRIMARY KEY,
    ProjectName VARCHAR(50) NOT NULL,
    DepartmentID INT,
    CONSTRAINT FK_ProjectDepartment FOREIGN KEY (DepartmentID)
    REFERENCES Departments(DepartmentID)
);


INSERT INTO Employees (EmployeeID, FirstName, LastName, Email, Salary, DepartmentID) 
VALUES (13, 'Test', 'User', 'test.user@company.com', 50000, 999);


INSERT INTO Employees (EmployeeID, FirstName, LastName, Email, Salary, DepartmentID) 
VALUES (14, 'Duplicate', 'Email', 'john.doe@company.com', 50000, 1);


DELETE FROM Departments WHERE DepartmentID = 1;


UPDATE Employees SET DepartmentID = 999 WHERE EmployeeID = 1;
