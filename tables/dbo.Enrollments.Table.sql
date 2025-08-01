USE [DB]
GO
/****** Object:  Table [dbo].[Enrollments]    Script Date: 31-07-2025 17:04:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Enrollments](
	[EnrollmentID] [int] NOT NULL,
	[StudentID] [int] NOT NULL,
	[CourseID] [int] NOT NULL,
	[Grade] [nvarchar](2) NULL,
PRIMARY KEY CLUSTERED 
(
	[EnrollmentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Enrollments]  WITH CHECK ADD FOREIGN KEY([CourseID])
REFERENCES [dbo].[Courses] ([CourseID])
GO
ALTER TABLE [dbo].[Enrollments]  WITH CHECK ADD FOREIGN KEY([StudentID])
REFERENCES [dbo].[Students] ([StudentID])
GO
