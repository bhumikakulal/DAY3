
CREATE TABLE departments (
    department_id INTEGER PRIMARY KEY,
    department_name TEXT NOT NULL
);

CREATE TABLE courses (
    course_id INTEGER PRIMARY KEY,
    course_name TEXT NOT NULL,
    department_id INTEGER,
    FOREIGN KEY (department_id) REFERENCES departments(department_id)
);

CREATE TABLE students (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    age INTEGER,
    department TEXT,
    cgpa REAL
);

INSERT INTO departments VALUES
(1, 'Computer Science'),
(2, 'Information Technology'),
(3, 'Electronics'),
(4, 'Mechanical');

INSERT INTO courses VALUES
(101, 'Database Management Systems', 1),
(102, 'Data Structures', 1),
(103, 'Web Development', 2),
(104, 'Digital Electronics', 3),
(105, 'Thermodynamics', 4);

INSERT INTO students VALUES
(1, 'Reena', 20, 'Computer Science', 8.5),
(2, 'Pramoda', 21, 'Information Technology', 9.7),
(3, 'Amhog', 20, 'Electronics', 7.8),
(4, 'Saniha', 22, 'Computer Science', 9.4),
(5, 'Ashika', 21, 'Mechanical', 7.5),
(6, 'Varun', 20, 'Information Technology', 8.2),
(7, 'Vanditha', 22, 'Computer Science', 8.8),
(8, 'Charan', 21, 'Electronics', 8.7),
(9, 'Manvith', 20, 'Mechanical', 8.5),
(10, 'Bavya', 22, 'Information Technology', 9.0);


SELECT * FROM students;

SELECT name, cgpa
FROM students;

SELECT *
FROM students
WHERE cgpa > 8.0;


SELECT COUNT(*) AS total_students
FROM students;

SELECT AVG(cgpa) AS average_cgpa
FROM students;

SELECT name, cgpa
FROM students
WHERE cgpa = (SELECT MAX(cgpa) FROM students);

SELECT name, cgpa
FROM students
WHERE cgpa = (SELECT MIN(cgpa) FROM students);

SELECT SUM(cgpa) AS total_cgpa
FROM students;


SELECT department, COUNT(*) AS student_count
FROM students
GROUP BY department;

SELECT department, AVG(cgpa) AS average_cgpa
FROM students
GROUP BY department;
