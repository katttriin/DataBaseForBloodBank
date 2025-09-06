USE bloodbankdb;
-- === 2. КОРИСТУВАЧІ ТА ПРИВІЛЕЇ ===

-- Оператор
CREATE USER 'operator_user'@'%' IDENTIFIED BY 'OperPass123!';
GRANT SELECT ON bloodbankdb.* TO 'operator_user'@'%';
GRANT INSERT, UPDATE ON bloodbankdb.Donors TO 'operator_user'@'%';
GRANT INSERT, UPDATE ON bloodbankdb.Recipients TO 'operator_user'@'%';
GRANT INSERT, UPDATE ON bloodbankdb.Donations TO 'operator_user'@'%';
GRANT INSERT, UPDATE ON bloodbankdb.BloodRequests TO 'operator_user'@'%';

-- Адміністратор
CREATE USER 'admin_user'@'localhost' IDENTIFIED BY 'AdminPass123!';
GRANT ALL PRIVILEGES ON bloodbankdb.* TO 'admin_user'@'localhost' WITH GRANT OPTION;

-- Гість
CREATE USER 'guest_user'@'localhost' IDENTIFIED BY 'GuestPass123!';
GRANT SELECT ON bloodbankdb.Donors TO 'guest_user'@'localhost';
GRANT SELECT ON bloodbankdb.BloodTypes TO 'guest_user'@'localhost';
GRANT SELECT ON bloodbankdb.Blood TO 'guest_user'@'localhost';

-- Призначення привілеїв гостю (тільки читання обмеженого набору таблиць)
CREATE USER 'guest_user'@'localhost' IDENTIFIED BY 'GuestPass123!';
GRANT REPLICATION SLAVE ON *.* TO 'guest_user'@'localhost';
GRANT SELECT ON bloodbankdb.Donors TO 'guest_user'@'localhost';
GRANT SELECT ON bloodbankdb.Blood TO 'guest_user'@'localhost';

ALTER USER 'operator_user'@'localhost' IDENTIFIED BY 'NewOperPass123!';
REVOKE INSERT, UPDATE ON bloodbankdb.Donations FROM 'operator_user'@'localhost';





