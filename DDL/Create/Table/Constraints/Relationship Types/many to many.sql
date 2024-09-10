-- Students table
CREATE TABLE Students (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL
);

CREATE TABLE Courses (
    course_id INT PRIMARY KEY AUTO_INCREMENT,
    course_name VARCHAR(100) NOT NULL
);

-- Enrollment table (junction table) to create the many-to-many relationship
CREATE TABLE Enrollments (
    student_id INT,
    course_id INT,
    enrollment_date DATE,
    PRIMARY KEY (student_id, course_id),
    FOREIGN KEY (student_id) REFERENCES Students(student_id),
    FOREIGN KEY (course_id) REFERENCES Courses(course_id)
);

-- Insert data into Students table
INSERT INTO Students (name) VALUES ('John Doe');
INSERT INTO Students (name) VALUES ('Jane Smith');
INSERT INTO Students (name) VALUES ('Emily Davis');

-- Insert data into Courses table
INSERT INTO Courses (course_name) VALUES ('Mathematics');
INSERT INTO Courses (course_name) VALUES ('Science');
INSERT INTO Courses (course_name) VALUES ('History');

-- Insert data into Enrollments table, associating students with courses
INSERT INTO Enrollments (student_id, course_id, enrollment_date) VALUES (1, 1, '2024-09-01'); -- John Doe enrolled in Mathematics
INSERT INTO Enrollments (student_id, course_id, enrollment_date) VALUES (1, 2, '2024-09-02'); -- John Doe enrolled in Science
INSERT INTO Enrollments (student_id, course_id, enrollment_date) VALUES (2, 1, '2024-09-01'); -- Jane Smith enrolled in Mathematics
INSERT INTO Enrollments (student_id, course_id, enrollment_date) VALUES (2, 3, '2024-09-03'); -- Jane Smith enrolled in History
INSERT INTO Enrollments (student_id, course_id, enrollment_date) VALUES (3, 2, '2024-09-02'); -- Emily Davis enrolled in Science
INSERT INTO Enrollments (student_id, course_id, enrollment_date) VALUES (3, 3, '2024-09-04'); -- Emily Davis enrolled in History