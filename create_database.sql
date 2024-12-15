CREATE DATABASE mobile_phones;
CREATE USER 'mobile_user'@'localhost' IDENTIFIED BY '123456';
GRANT ALL PRIVILEGES ON mobile_phones.* TO 'root'@'localhost';
FLUSH PRIVILEGES;