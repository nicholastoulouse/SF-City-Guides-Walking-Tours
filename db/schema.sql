CREATE DATABASE walking_tours_db;

USE walking_tours_db;

CREATE TABLE IF NOT EXISTS tours (
    id INT NOT NULL AUTO_INCREMENT,
    walktitle VARCHAR(255) NOT NULL,
    neighborhood VARCHAR(255) NOT NULL,
    cityName VARCHAR(50) NOT NULL,
    stateID VARCHAR(3) NOT NULL,
    meeting_spot VARCHAR(255) NOT NULL,
    meeting_details VARCHAR(255) NOT NULL,
    themes VARCHAR(255) NOT NULL,
    mediawikiURL VARCHAR(255) NOT NULL,
    PRIMARY KEY(id)
);

CREATE TABLE IF NOT EXISTS scheduled_tours (
    id INT NOT NULL AUTO_INCREMENT,
    tourguidename VARCHAR(255),
    scheduled_date DATE NOT NULL,
    scheduled_time TIME NOT NULL,
    cancellation BOOLEAN DEFAULT 0,
    notes VARCHAR(255) NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY (guide_id) REFERENCES users(id)
);

CREATE TABLE IF NOT EXISTS attendees (
    id INT NOT NULL AUTO_INCREMENT,
    FOREIGN KEY (scheduled_id) REFERENCES scheduled_tours(id),
    FOREIGN KEY (user_id) REFERENCES users(id)
);

CREATE TABLE IF NOT EXISTS users (
    id INT NOT NULL AUTO_INCREMENT,
    firstname VARCHAR (255) NOT NULL,
    lastname VARCHAR (255) NOT NULL,
    mobilephone INT(10) NOT NULL,
    email VARCHAR (255) UNIQUE NOT NULL,
    pwd VARCHAR (255) NOT NULL,
    category ENUM('User', 'Guide'),
    PRIMARY KEY(id)
);