-- Створення бази даних

USE bloodbankdb;

CREATE TABLE Donors (
    DonorID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    BloodTypeID INT,
    DateOfBirth DATE,
    Gender ENUM('Male', 'Female'),
    PhoneNumber VARCHAR(20),
    Email VARCHAR(100),
    Address TEXT,
    INDEX (BloodTypeID),
    FOREIGN KEY (BloodTypeID) REFERENCES BloodTypes(BloodTypeID)
);




CREATE TABLE BloodTypes (
    BloodTypeID INT PRIMARY KEY AUTO_INCREMENT,
    TypeName VARCHAR(5) NOT NULL
);

CREATE TABLE Recipients (
    RecipientID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    BloodTypeID INT,
    DateOfBirth DATE,
    PhoneNumber VARCHAR(20),
    Email VARCHAR(100),
    INDEX (BloodTypeID),  -- Додаємо індекс на зовнішній ключ
    FOREIGN KEY (BloodTypeID) REFERENCES BloodTypes(BloodTypeID)
);

CREATE TABLE Donations (
    DonationID INT PRIMARY KEY AUTO_INCREMENT,
    DonorID INT,
    DonationDate DATE,
    VolumeMl INT,
    FOREIGN KEY (DonorID) REFERENCES Donors(DonorID)
);

-- Таблиця запитів на кров
CREATE TABLE BloodRequests (
    RequestID INT PRIMARY KEY AUTO_INCREMENT,
    RecipientID INT,
    RequestDate DATE,
    BloodTypeID INT,
    VolumeMl INT,
    Status VARCHAR(20),
    INDEX (RecipientID),  -- Додаємо індекс на зовнішній ключ
    INDEX (BloodTypeID),  -- Додаємо індекс на зовнішній ключ
    FOREIGN KEY (RecipientID) REFERENCES Recipients(RecipientID),
    FOREIGN KEY (BloodTypeID) REFERENCES BloodTypes(BloodTypeID)
);

CREATE TABLE Blood (
    BloodID INT PRIMARY KEY AUTO_INCREMENT,
    DonorID INT,
    BloodGroup VARCHAR(5),
    RhFactor CHAR(1),
    CollectionDate DATE,
    ExpirationDate DATE,
    Status VARCHAR(20),
    FOREIGN KEY (DonorID) REFERENCES Donors(DonorID)
);

CREATE TABLE Procedures (
    ProcedureID INT PRIMARY KEY AUTO_INCREMENT,
    BloodID INT,
    RecipientID INT,
    ProcedureDate DATE,
    Type VARCHAR(50),
    FOREIGN KEY (BloodID) REFERENCES Blood(BloodID),
    FOREIGN KEY (RecipientID) REFERENCES Recipients(RecipientID)
);

CREATE TABLE Employee (
    EmployeeID INT PRIMARY KEY AUTO_INCREMENT,
    LastName VARCHAR(50) NOT NULL,
    FirstName VARCHAR(50) NOT NULL,
    MiddleName VARCHAR(50),
    Position VARCHAR(100),
    Phone VARCHAR(20)
);



ALTER TABLE Donors ENGINE = InnoDB;
ALTER TABLE Recipients ENGINE = InnoDB;
ALTER TABLE BloodTypes ENGINE = InnoDB;
ALTER TABLE Donations ENGINE = InnoDB;
ALTER TABLE BloodRequests ENGINE = InnoDB;
ALTER TABLE Blood ENGINE = InnoDB;
ALTER TABLE Procedures ENGINE = InnoDB;
ALTER TABLE Employee ENGINE = InnoDB;

