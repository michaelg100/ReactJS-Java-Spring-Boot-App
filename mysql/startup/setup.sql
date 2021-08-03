CREATE USER IF NOT EXISTS 'ui'@'localhost' IDENTIFIED BY 'password';
CREATE DATABASE IF NOT EXISTS `testdb`;

USE `testdb`;

GRANT ALL PRIVILEGES ON `soapDB`.* TO 'ui'@'localhost';

CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,   
  `username` varchar(50) UNIQUE NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY  (`user_id`)
);
