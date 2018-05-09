SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `174db`
--

USE `bestby`;

--
-- Drop tables if they already exist
--

DROP TABLE IF EXISTS `Item`;
DROP TABLE IF EXISTS `Ingredient`;

CREATE TABLE IF NOT EXISTS Item (
  iid           INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL,
  name          VARCHAR(64) NOT NULL,
  created_date  DATE,
  purchase_date DATE
)ENGINE=Innodb  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3;

CREATE TABLE IF NOT EXISTS Ingredient (
  gid           INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL,
  name          VARCHAR(64) NOT NULL,
  expire_days   INTEGER
)ENGINE=Innodb  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1;

INSERT INTO `Item` (`iid`,`name`,`created_date`,`purchase_date`) VALUES
(1,'Green Onion','2018-05-02','2018-05-02'),
(2,'Soy Sauce','2018-05-01','2018-05-01')
