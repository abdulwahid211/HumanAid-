CREATE TABLE Seeker (
    Id int NOT NULL AUTO_INCREMENT,
    Username varchar(255) NOT NULL,
    Telephone varchar(255) NOT NULL,
    Email varchar(255) NOT NULL,
    Postcode varchar(255) NOT NULL,
    City varchar(255) NOT NULL,
    PRIMARY KEY (Id, Telephone, Username)
);

CREATE TABLE Supplier (
  Id int NOT NULL AUTO_INCREMENT,
  Name varchar(255) NOT NULL,
  Postcode varchar(255) NOT NULL,
  Type varchar NOT NULL,
  Telephone LONGTEXT NOT NULL,
  PRIMARY KEY (Id)
);

CREATE TABLE Volunteer (
    Id int NOT NULL AUTO_INCREMENT,
    Username varchar(255) NOT NULL,
    Telephone varchar(255) NOT NULL,
    Email varchar(255) NOT NULL,
    City varchar(255) NOT NULL,
    Job varchar(255) NOT NULL,
    PRIMARY KEY (Id)
);

CREATE TABLE Backlog (
    Id int NOT NULL AUTO_INCREMENT,
    SeekerNo int NOT NULL,
    Title varchar(255) NOT NULL,
    Description LONGTEXT NOT NULL,
    Created datetime NOT NULL,
    PRIMARY KEY (Id),
    FOREIGN KEY (SeekerNo) REFERENCES Seeker(Id)
);

CREATE TABLE Task (
    Id int NOT NULL AUTO_INCREMENT,
    SeekerNo int NOT NULL,
    VolunteerNo int,
    SupplierNo int NOT NULL,
    Status varchar(255) NOT NULL,
    BacklogNo int NOT NULL,
    Created datetime NOT NULL,
    PRIMARY KEY (Id),
    FOREIGN KEY (SeekerNo) REFERENCES Seeker(Id),
    FOREIGN KEY (SupplierNo) REFERENCES Supplier(Id),
    FOREIGN KEY (BacklogNo) REFERENCES Backlog(Id)
);

-- Sample data
INSERT INTO Seeker ( Username, Telephone , Email, City, Postcode)
VALUES ( 'abdul211', '07395838344', 'abdulwahid@gmail.com', 'Manchester', 'EC1 ASD');

INSERT INTO Volunteer ( Username, Telephone , Email, City)
VALUES ( 'fredABC', '07395838344', 'fredBack@gmail.com', 'Manchester');

INSERT INTO Supplier ( Name, Postcode , Type , Telephone)
VALUES ( 'NHS', 'E14 86A', 'Homeless Shelter', '07395838344');

INSERT INTO Backlog ( SeekerNo, Title , Description , Created)
VALUES ( 1, 'Blood', 'Need Blood', 'I need blood bruv!', '12/09/2023');

INSERT INTO Task ( SeekerNo, VolunteerNo , SupplierNo , Status, BacklogNo,Created)
VALUES ( 1, null, 1, 'Available', 1,'15/09/2023');


-- SELECT * from Vacancies inner join Employer where Vacancies.VacancyID=145 and Vacancies.EmployerID = Employer.EmployerID;

-- Select V.VacancyID as VacancyID, V.Title as JobTitle, A.ApplicantID, A.FirstName, A.LastName, A.Address, A.Postcode, A.City, A.Email from applicants AS A inner join vacancies AS V  inner join appliedJobs AS AJ inner join employer as EM on
-- V.EmployerId = EM.EmployerId and AJ.ApplicantID = A.ApplicantID and   AJ.VacancyID = V.VacancyID  where EM.EmployerID = 5 order by A.ApplicantID ASC;