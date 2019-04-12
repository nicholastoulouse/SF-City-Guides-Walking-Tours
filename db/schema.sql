DROP DATABASE IF EXISTS walking_tours_db;
CREATE DATABASE walking_tours_db;

USE walking_tours_db;

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

-- select firstname, lastname, category
-- FROM users 
-- WHERE category = 'Guide' AND email= ?

CREATE TABLE IF NOT EXISTS tours (
    id INT NOT NULL AUTO_INCREMENT,
    walktitle VARCHAR(255) NOT NULL,
    neighborhood VARCHAR(255) NOT NULL,
    cityName VARCHAR(50) NOT NULL,
    stateID VARCHAR(3) NOT NULL,
    meeting_spot VARCHAR(255) NOT NULL,
    latitude FLOAT(9,6),
    longitude FLOAT(9,6),
    meeting_details VARCHAR(255),
    mediawikiURL VARCHAR(255) NOT NULL,
    themes VARCHAR(2000) NOT NULL,
    PRIMARY KEY(id)
);

CREATE TABLE IF NOT EXISTS scheduled_tours (
    id INT NOT NULL AUTO_INCREMENT,
    user_id INT NOT NULL, 
    -- How would I add a constraint to the enum of the FK of 'Guide'?
    scheduled_date DATE NOT NULL,
    scheduled_time TIME NOT NULL,
    cancellation BOOLEAN DEFAULT 0,
    notes VARCHAR(255) NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY (user_id) REFERENCES users(id)
);

CREATE TABLE IF NOT EXISTS attendees (
    id INT NOT NULL AUTO_INCREMENT,
    scheduled_tours_id INT NOT NULL,
    FOREIGN KEY (scheduled_tours_id) REFERENCES scheduled_tours(id),
    FOREIGN KEY (id) REFERENCES users(id)
);