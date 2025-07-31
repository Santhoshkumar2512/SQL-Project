USE DB;
GO

------------------------------------------------------
-- Stored Procedure for the Students table
------------------------------------------------------
-- Drop the procedure if it already exists to avoid errors
IF OBJECT_ID('dbo.GetAllStudents', 'P') IS NOT NULL
    DROP PROCEDURE dbo.GetAllStudents;
GO

-- Create the procedure to select all records from Students
CREATE PROCEDURE dbo.GetAllStudents
AS
BEGIN
    SET NOCOUNT ON;
    SELECT
        StudentID,
        FirstName,
        LastName,
        EnrollmentDate
    FROM
        Students;
END;
GO

------------------------------------------------------
-- Stored Procedure for the Courses table
------------------------------------------------------
-- Drop the procedure if it already exists
IF OBJECT_ID('dbo.GetAllCourses', 'P') IS NOT NULL
    DROP PROCEDURE dbo.GetAllCourses;
GO

-- Create the procedure to select all records from Courses
CREATE PROCEDURE dbo.GetAllCourses
AS
BEGIN
    SET NOCOUNT ON;
    SELECT
        CourseID,
        CourseName,
        CreditHours
    FROM
        Courses;
END;
GO

------------------------------------------------------
-- Stored Procedure for the Instructors table
------------------------------------------------------
-- Drop the procedure if it already exists
IF OBJECT_ID('dbo.GetAllInstructors', 'P') IS NOT NULL
    DROP PROCEDURE dbo.GetAllInstructors;
GO

-- Create the procedure to select all records from Instructors
CREATE PROCEDURE dbo.GetAllInstructors
AS
BEGIN
    SET NOCOUNT ON;
    SELECT
        InstructorID,
        FirstName,
        LastName,
        HireDate
    FROM
        Instructors;
END;
GO

------------------------------------------------------
-- Stored Procedure for the Enrollments table
------------------------------------------------------
-- Drop the procedure if it already exists
IF OBJECT_ID('dbo.GetAllEnrollments', 'P') IS NOT NULL
    DROP PROCEDURE dbo.GetAllEnrollments;
GO

-- Create the procedure to select all records from Enrollments
CREATE PROCEDURE dbo.GetAllEnrollments
AS
BEGIN
    SET NOCOUNT ON;
    SELECT
        EnrollmentID,
        StudentID,
        CourseID,
        Grade
    FROM
        Enrollments;
END;
GO
