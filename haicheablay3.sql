CREATE DATABASE school_db;
USE school_db;

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(100),
    password VARCHAR(100),
    birthday DATE,
    new_student BOOLEAN,
    college VARCHAR(50),
    major VARCHAR(50),
    color VARCHAR(10),
    terms BOOLEAN
);
SELECT * FROM users;
