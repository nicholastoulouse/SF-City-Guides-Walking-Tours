DROP DATABASE IF EXISTS walking_tours_db;
CREATE DATABASE walking_tours_db;

USE walking_tours_db;

CREATE TABLE IF NOT EXISTS users (
    id INT NOT NULL AUTO_INCREMENT,
    firstname VARCHAR (255) NOT NULL,
    lastname VARCHAR (255) NOT NULL,
    mobilephone VARCHAR(255) NOT NULL,
    email VARCHAR (255) UNIQUE NOT NULL,
    pwd VARCHAR (255) NOT NULL,
    bio VARCHAR (2500),
    category ENUM('user', 'guide'),
    PRIMARY KEY(id)
);

-- select firstname, lastname, category
-- FROM users 
-- WHERE category = 'Guide' AND email= ?

CREATE TABLE IF NOT EXISTS tours (
    id INT NOT NULL AUTO_INCREMENT,
    walktitle VARCHAR(255) NOT NULL,
    neighborhood VARCHAR(255) NOT NULL,
    cityName VARCHAR(50) NOT NULL,
    stateID VARCHAR(3) NOT NULL,
    meeting_spot VARCHAR(511) NOT NULL,
    offered VARCHAR(50) DEFAULT "Year Round",
    latitude FLOAT(9,6),
    longitude FLOAT(9,6),
    meeting_details VARCHAR(511),
    mediawikiURL VARCHAR(255) NOT NULL,
    description VARCHAR(1023) NOT NULL,
    PRIMARY KEY(id)
);

-- Time zone docs: (for future reference) https://dev.mysql.com/doc/refman/8.0/en/time-zone-support.html
-- DATE data type: https://dev.mysql.com/doc/refman/8.0/en/datetime.html
-- TIME data type: https://dev.mysql.com/doc/refman/8.0/en/time.html
CREATE TABLE IF NOT EXISTS scheduled_tours (
    id INT NOT NULL AUTO_INCREMENT,
    tour_id INT NOT NULL,
    user_id INT NOT NULL, -- Note: this is the user_id of the guide category of user
    scheduled DATETIME NOT NULL,
    cancellation BOOLEAN DEFAULT 0,
    guidenote VARCHAR(511),
    PRIMARY KEY(id),
    FOREIGN KEY (tour_id) REFERENCES tours(id),
    FOREIGN KEY (user_id) REFERENCES users(id)
);

CREATE TABLE IF NOT EXISTS attendees (
    id INT NOT NULL AUTO_INCREMENT,
    user_id INT NOT NULL,
    scheduled_tours_id INT NOT NULL,
    cancellation BOOLEAN DEFAULT 0,
    PRIMARY KEY(id),
    FOREIGN KEY (scheduled_tours_id) REFERENCES scheduled_tours(id),
    FOREIGN KEY (user_id) REFERENCES users(id)
);