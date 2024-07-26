CREATE DATABASE IF NOT EXISTS php_mysql_crud;
USE php_mysql_crud;

CREATE TABLE IF NOT EXISTS task (
    id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(255) NOT NULL,
    description TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Create user if it doesn't exist
CREATE USER IF NOT EXISTS 'myuser'@'%' IDENTIFIED BY 'my_password';

-- Grant privileges
GRANT ALL PRIVILEGES ON php_mysql_crud.* TO 'myuser'@'%' WITH GRANT OPTION;
FLUSH PRIVILEGES;
