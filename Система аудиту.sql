-- === 1. АУДИТ ДІЙ КОРИСТУВАЧІВ ===

USE bloodbankdb;
-- Таблиця для логування змін
CREATE TABLE AuditLog (
  LogID INT AUTO_INCREMENT PRIMARY KEY,
  TableName VARCHAR(50),
  OperationType VARCHAR(10),
  RecordID INT,
  ActionTime DATETIME,
  UserName VARCHAR(100)
);

INSERT INTO Donors (FirstName, LastName, BloodTypeID, DateOfBirth, Gender, PhoneNumber, Email, Address)
VALUES ('Олена', 'Петренко', 1, '1992-07-14', 'Female', '380501234000', 'olena@example.com', 'м. Київ');


-- Тригери для Donors
DELIMITER //

CREATE TRIGGER LogDonorUpdate
AFTER UPDATE ON Donors
FOR EACH ROW
BEGIN
  INSERT INTO AuditLog (TableName, OperationType, RecordID, ActionTime, UserName)
  VALUES ('Donors', 'UPDATE', OLD.DonorID, NOW(), CURRENT_USER());
END //

CREATE TRIGGER LogDonorInsert
AFTER INSERT ON Donors
FOR EACH ROW
BEGIN
  INSERT INTO AuditLog (TableName, OperationType, RecordID, ActionTime, UserName)
  VALUES ('Donors', 'INSERT', NEW.DonorID, NOW(), CURRENT_USER());
END //

CREATE TRIGGER LogDonorDelete
AFTER DELETE ON Donors
FOR EACH ROW
BEGIN
  INSERT INTO AuditLog (TableName, OperationType, RecordID, ActionTime, UserName)
  VALUES ('Donors', 'DELETE', OLD.DonorID, NOW(), CURRENT_USER());
END //

DELIMITER ;


-- тригер для Donations
DELIMITER //

CREATE TRIGGER LogDonationInsert
AFTER INSERT ON Donations
FOR EACH ROW
BEGIN
    INSERT INTO AuditLog (TableName, ActionType, UserName, Details)
    VALUES ('Donations', 'INSERT', CURRENT_USER(),
            CONCAT('DonationID=', NEW.DonationID, ', Volume=', NEW.VolumeMl));
END //

DELIMITER ;

-- DELETE
