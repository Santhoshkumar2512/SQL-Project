USE [DB]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 31-07-2025 17:04:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[EmployeeID] [int] NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[DepartmentID] [int] NULL,
	[HireDate] [date] NULL,
	[Salary] [decimal](10, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[EmployeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD FOREIGN KEY([DepartmentID])
REFERENCES [dbo].[Departments] ([DepartmentID])
GO
