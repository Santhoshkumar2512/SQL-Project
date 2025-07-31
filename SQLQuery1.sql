CREATE DATABASE DB;

USE DB;


CREATE TABLE Students (
    StudentID INT PRIMARY KEY,         -- Unique identifier for each student
    FirstName NVARCHAR(50) NOT NULL,   -- Student's first name
    LastName NVARCHAR(50) NOT NULL,    -- Student's last name
    EnrollmentDate DATE                -- Date when the student enrolled
);
GO

-- Insert 5 sample rows into the Students table
INSERT INTO Students (StudentID, FirstName, LastName, EnrollmentDate)
VALUES
(1, 'John', 'Doe', '2023-09-01'),
(2, 'Jane', 'Smith', '2023-09-01'),
(3, 'Peter', 'Jones', '2024-01-15'),
(4, 'Mary', 'Williams', '2024-01-15'),
(5, 'David', 'Brown', '2024-03-20');
GO

CREATE TABLE Courses (
    CourseID INT PRIMARY KEY,          -- Unique identifier for each course
    CourseName NVARCHAR(100) NOT NULL, -- Name of the course
    CreditHours INT NOT NULL           -- Number of credit hours for the course
);
GO

-- Insert 5 sample rows into the Courses table
INSERT INTO Courses (CourseID, CourseName, CreditHours)
VALUES
(101, 'Introduction to Computer Science', 3),
(102, 'Database Management Systems', 4),
(201, 'Data Structures and Algorithms', 4),
(301, 'Web Development Fundamentals', 3),
(401, 'Artificial Intelligence', 3);
GO

-- Step 5: Create Table 3 - Instructors
-- This table will store information about instructors.
CREATE TABLE Instructors (
    InstructorID INT PRIMARY KEY,      -- Unique identifier for each instructor
    FirstName NVARCHAR(50) NOT NULL,   -- Instructor's first name
    LastName NVARCHAR(50) NOT NULL,    -- Instructor's last name
    HireDate DATE                      -- Date when the instructor was hired
);
GO

-- Insert 5 sample rows into the Instructors table
INSERT INTO Instructors (InstructorID, FirstName, LastName, HireDate)
VALUES
(1, 'Alice', 'Johnson', '2020-08-15'),
(2, 'Bob', 'Davis', '2019-05-20'),
(3, 'Charlie', 'Miller', '2021-11-01'),
(4, 'Diana', 'Wilson', '2022-03-10'),
(5, 'Edward', 'Clark', '2023-07-01');
GO

-- Step 6: Create Table 4 - Enrollments
-- This table will link students to courses they are enrolled in.
-- It uses foreign keys to establish relationships with Students and Courses tables.
CREATE TABLE Enrollments (
    EnrollmentID INT PRIMARY KEY,      -- Unique identifier for each enrollment
    StudentID INT NOT NULL,            -- Foreign key referencing Students table
    CourseID INT NOT NULL,             -- Foreign key referencing Courses table
    Grade NVARCHAR(2),                 -- Grade received in the course (e.g., 'A', 'B+', 'C')
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
    FOREIGN KEY (CourseID) REFERENCES Courses(CourseID)
);
GO

-- Insert 5 sample rows into the Enrollments table
INSERT INTO Enrollments (EnrollmentID, StudentID, CourseID, Grade)
VALUES
(1, 1, 101, 'A'),   -- John Doe enrolled in Intro to CS
(2, 2, 102, 'B+'),  -- Jane Smith enrolled in DBMS
(3, 3, 201, 'A-'),  -- Peter Jones enrolled in Data Structures
(4, 4, 301, 'B'),   -- Mary Williams enrolled in Web Dev
(5, 5, 401, 'C+');  -- David Brown enrolled in AI
GO
