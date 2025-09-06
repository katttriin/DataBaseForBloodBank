SET @key = 'MySecretKey123!';

-- Вставка зашифрованих значень
INSERT INTO Donors (FirstName, LastName, BloodTypeID, DateOfBirth, Gender, PhoneNumber, Email, Address)
VALUES (
  'Марина', 'Коваль', 1, '1985-09-12', 'Female',
  AES_ENCRYPT('380631234567', @key),
  AES_ENCRYPT('marina@example.com', @key),
  AES_ENCRYPT('м. Львів, вул. Шевченка, 10', @key)
);

-- Дешифрування
SELECT 
  FirstName, 
  AES_DECRYPT(PhoneNumber, @key) AS Phone,
  AES_DECRYPT(Email, @key) AS Email
FROM Donors;


-- SET @key = 'MySecretKey123!';
-- SELECT FirstName, AES_DECRYPT(Email, @key) AS Email FROM Donors;
