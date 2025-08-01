USE [DB]
GO
/****** Object:  StoredProcedure [dbo].[GetAllEnrollments]    Script Date: 31-07-2025 16:54:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Create the procedure to select all records from Enrollments
CREATE PROCEDURE [dbo].[GetAllEnrollments]
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
