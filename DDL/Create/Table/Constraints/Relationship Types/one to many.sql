-- Authors table
CREATE TABLE Authors (
    author_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL
);

-- Books table with a one-to-many relationship to Authors
CREATE TABLE Books (
    book_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(255) NOT NULL,
    author_id INT,
    FOREIGN KEY (author_id) REFERENCES Authors(author_id)
);

-- Insert data into Authors table
INSERT INTO Authors (name) VALUES ('George Orwell');
INSERT INTO Authors (name) VALUES ('J.K. Rowling');
INSERT INTO Authors (name) VALUES ('J.R.R. Tolkien');

-- Insert data into Books table, ensuring that author_id corresponds to existing authors
INSERT INTO Books (title, author_id) VALUES ('1984', 1);
INSERT INTO Books (title, author_id) VALUES ('Animal Farm', 1);
INSERT INTO Books (title, author_id) VALUES ('Harry Potter and the Sorcerer\'s Stone', 2);
INSERT INTO Books (title, author_id) VALUES ('Harry Potter and the Chamber of Secrets', 2);
INSERT INTO Books (title, author_id) VALUES ('The Hobbit', 3);
INSERT INTO Books (title, author_id) VALUES ('The Lord of the Rings', 3);