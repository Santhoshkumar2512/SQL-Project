-- Select all data from the Students table
USE DB;
SELECT * FROM Students;
SELECT * FROM Courses;
SELECT * FROM Instructors;
SELECT * FROM Enrollments;


SELECT
    StudentID,
    FirstName,
    LastName,
    EnrollmentDate
FROM
    Students
WHERE
    EnrollmentDate > '2023-12-31';
GO

SELECT
    CourseID,
    CourseName,
    CreditHours
FROM
    Courses
WHERE
    CreditHours = 4;
GO