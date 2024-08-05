CREATE USER IF NOT EXISTS 'book_user'@'%' IDENTIFIED BY 'book_password';
GRANT ALL PRIVILEGES ON bookdb.* TO 'book_user'@'%';
FLUSH PRIVILEGES;