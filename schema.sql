CREATE DATABASE 173700_yeticave
  DEFAULT CHARACTER SET utf8
  DEFAULT COLLATE utf8_general_ci;
USE 173700_yeticave;
CREATE TABLE categories (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(64) UNIQUE NOT NULL
);
CREATE TABLE lots (
  id INT AUTO_INCREMENT PRIMARY KEY,
  create_date DATETIME NOT NULL DEFAULT NOW(),
  name VARCHAR(128) NOT NULL,
  description TEXT,
  image VARCHAR(128) NOT NULL,
  start_price INT NOT NULL,
  end_date DATETIME,
  bet_step INT NOT NULL,
  user_id INT NOT NULL,
  winner_id INT,
  category_id INT NOT NULL
);
CREATE TABLE bets (
  id INT AUTO_INCREMENT PRIMARY KEY,
  create_date DATETIME NOT NULL DEFAULT NOW(),
  lot_price INT NOT NULL,
  user_id INT NOT NULL,
  lot_id INT NOT NULL
);
CREATE TABLE users (
  id INT AUTO_INCREMENT PRIMARY KEY,
  registration_date DATETIME NOT NULL DEFAULT NOW(),
  email VARCHAR(64) NOT NULL UNIQUE,
  name VARCHAR(64) NOT NULL,
  password VARCHAR(128) NOT NULL,
  pic VARCHAR(64) NOT NULL,
  contact TEXT NOT NULL
);