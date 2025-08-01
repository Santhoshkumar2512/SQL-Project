USE [DB]
GO
/****** Object:  StoredProcedure [dbo].[GetAllStudents]    Script Date: 31-07-2025 16:54:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Create the procedure to select all records from Students
CREATE PROCEDURE [dbo].[GetAllStudents]
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
