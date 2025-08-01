USE [DB]
GO
/****** Object:  StoredProcedure [dbo].[GetAllCourses]    Script Date: 31-07-2025 16:54:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Create the procedure to select all records from Courses
CREATE PROCEDURE [dbo].[GetAllCourses]
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
