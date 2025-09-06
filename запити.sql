USE bloodbankdb;

-- Запит 1 на вибірку даних з використанням: WHERE, ORDER BY, DISTINCT
SELECT DISTINCT d.DonorID, d.FirstName, d.LastName, b.BloodGroup, b.CollectionDate
FROM Donors d
JOIN Blood b ON d.DonorID = b.DonorID
WHERE b.BloodGroup = 'AB-' 
ORDER BY b.CollectionDate DESC;

-- Запит 2 на використання операторів: LIKE, BETWEEN, IN
SELECT d.DonorID, d.FirstName, d.LastName, b.BloodGroup, b.CollectionDate
FROM Donors d
JOIN Blood b ON d.DonorID = b.DonorID
WHERE b.BloodGroup IN ('A', 'B') 
  AND b.CollectionDate BETWEEN '2025-03-01' AND '2025-03-20';

-- Запит 3: Агрегатні функції
SELECT AVG(b.VolumeMl) AS avg_blood_collected
FROM Donations b
WHERE b.DonationDate BETWEEN '2025-03-01' AND '2025-03-31';

-- Запит 4: Групування та фільтрація груп
SELECT b.BloodGroup, COUNT(d.DonorID) AS NumberOfDonors
FROM Donors d
JOIN Blood b ON d.DonorID = b.DonorID
GROUP BY b.BloodGroup;

-- Запит 5: Складне сортування
SELECT d.DonorID, d.FirstName, d.LastName, COUNT(b.BloodID) AS BloodDonated, MAX(b.CollectionDate) AS LastDonationDate
FROM Donors d
JOIN Blood b ON d.DonorID = b.DonorID
WHERE b.CollectionDate BETWEEN '2024-04-01' AND '2025-04-01'
GROUP BY d.DonorID
ORDER BY BloodDonated DESC, LastDonationDate DESC;

-- 2. Створення представлення (VIEW) для складного запиту
-- Представлення (VIEW):
CREATE VIEW DonorBloodSummary AS
SELECT 
    d.DonorID, 
    CONCAT(d.FirstName, ' ', d.LastName) AS DonorName,
    COUNT(b.BloodID) AS TotalDonations,
    MAX(b.CollectionDate) AS LastDonationDate,
    MIN(b.CollectionDate) AS FirstDonationDate
FROM Donors d
JOIN Blood b ON d.DonorID = b.DonorID
GROUP BY d.DonorID;



-- 3. Аналітичний звіт Запит для кількості донорів по групах крові:
SELECT BloodGroup, COUNT(DonorID) AS DonorCount
FROM Blood
GROUP BY BloodGroup;

-- Запит для кількість здач по кожному місяцю,:
SELECT EXTRACT(YEAR_MONTH FROM CollectionDate) AS YearMonth, COUNT(*) AS BloodCount
FROM Blood
GROUP BY YearMonth;

-- Запит для кількості використаної крові за період:
SELECT COUNT(BloodID) AS UsedBloodCount
FROM Blood
WHERE Status = 'Used' AND CollectionDate BETWEEN '2025-01-01' AND '2025-03-31';

