START TRANSACTION;

-- 1. Додати запис про процедуру
INSERT INTO Procedures (BloodID, RecipientID, ProcedureDate, Type)
VALUES (12, 5, CURDATE(), 'Transfusion');

-- 2. Позначити кров як використану
UPDATE Blood
SET Status = 'Used'
WHERE BloodID = 12;

-- Завершити транзакцію
COMMIT;
