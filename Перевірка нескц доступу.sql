-- === 3. МОНІТОРИНГ ДОСТУПУ ===
USE bloodbankdb;

-- Таблиця логування доступу
CREATE TABLE AccessLog (
  AccessID INT AUTO_INCREMENT PRIMARY KEY,
  Username VARCHAR(50),
  AttemptTime DATETIME,
  AccessResult VARCHAR(20),
  Details TEXT
);

-- Додавання запису про відмову в доступі
INSERT INTO AccessLog (Username, AttemptTime, AccessResult, Details) VALUES
('admin_user', NOW() - INTERVAL 2 HOUR, 'SUCCESS', 'Вхід до системи'),
('operator_user', NOW() - INTERVAL 90 MINUTE, 'SUCCESS', 'Перегляд таблиці Donations'),
('guest_user', NOW() - INTERVAL 1 HOUR, 'FAILED', 'Спроба змінити BloodRequests'),
('operator_user', NOW() - INTERVAL 30 MINUTE, 'FAILED', 'Спроба видалення реципієнта'),
('guest_user', NOW() - INTERVAL 20 MINUTE, 'SUCCESS', 'Перегляд Donors'),
('unknown_user', NOW() - INTERVAL 15 MINUTE, 'FAILED', 'Невдала авторизація'),
('admin_user', NOW() - INTERVAL 10 MINUTE, 'SUCCESS', 'Редагування Donors'),
('guest_user', NOW() - INTERVAL 5 MINUTE, 'FAILED', 'Спроба доступу до таблиці Employee');


-- Процедура для щоденної перевірки 
DELIMITER //

CREATE PROCEDURE CheckFailedLogins()
BEGIN
  SELECT * FROM AccessLog
  WHERE AccessResult = 'FAILED'
    AND AttemptTime > NOW() - INTERVAL 1 DAY;
END //

DELIMITER ;


