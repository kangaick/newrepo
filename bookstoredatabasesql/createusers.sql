-- Create users
CREATE USER 'admin_user'@'localhost' IDENTIFIED BY 'AdminPass123!';
CREATE USER 'staff_user'@'localhost' IDENTIFIED BY 'StaffPass123!';
CREATE USER 'guest_user'@'localhost' IDENTIFIED BY 'GuestPass123!';

-- Grant roles
GRANT ALL PRIVILEGES ON bookstore.* TO 'admin_user'@'localhost';
GRANT SELECT, INSERT, UPDATE ON bookstore.book TO 'staff_user'@'localhost';
GRANT SELECT ON bookstore.book TO 'guest_user'@'localhost';