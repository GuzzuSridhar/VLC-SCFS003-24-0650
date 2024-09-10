-- Users table
CREATE TABLE Users (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL
);

-- Profiles table with a one-to-one relationship to Users
CREATE TABLE Profiles (
    profile_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT unique, -- make the FK column unique to attain a one to one relation
    bio TEXT,
    profile_picture VARCHAR(255),
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);


-- Insert data into Users table
INSERT INTO Users (username, email) VALUES ('john_doe', 'john.doe@example.com');
INSERT INTO Users (username, email) VALUES ('jane_smith', 'jane.smith@example.com');
INSERT INTO Users (username, email) VALUES ('alice_johnson', 'alice.johnson@example.com');

-- Insert data into Profiles table, ensuring that user_id corresponds to existing users
INSERT INTO Profiles (user_id, bio, profile_picture) VALUES (1, 'Hi, I am John. I love coding!', 'john_doe_profile.jpg');
INSERT INTO Profiles (user_id, bio, profile_picture) VALUES (2, 'Hello! I am Jane. I enjoy hiking and reading.', 'jane_smith_profile.jpg');
INSERT INTO Profiles (user_id, bio, profile_picture) VALUES (3, 'Hey, I am Alice. Passionate about photography.', 'alice_johnson_profile.jpg');
INSERT INTO Profiles (user_id, bio, profile_picture) VALUES (3, 'Hey, I am Alice. Passionate about photography.', 'alice_johnson_profile.jpg'); -- Not allowed