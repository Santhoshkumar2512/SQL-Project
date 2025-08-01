USE [DB]
GO
/****** Object:  StoredProcedure [dbo].[GetAllInstructors]    Script Date: 31-07-2025 16:54:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Create the procedure to select all records from Instructors
CREATE PROCEDURE [dbo].[GetAllInstructors]
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
