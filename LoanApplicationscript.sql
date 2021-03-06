USE [ProjectLoanApplication]
GO
/****** Object:  Table [dbo].[tbl_loanapplication]    Script Date: 23/02/2022 09:55:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_loanapplication](
	[loan_application_number] [varchar](50) NOT NULL,
	[full_name] [varchar](50) NOT NULL,
	[date_of_birth] [date] NOT NULL,
	[phone_number] [varchar](10) NOT NULL,
	[alternate_number] [varchar](10) NULL,
	[email_id] [varchar](200) NULL,
	[pan_number] [varchar](50) NOT NULL,
	[aadhar_number] [varchar](50) NOT NULL,
	[user_address] [varchar](100) NULL,
	[loan_type] [varchar](50) NOT NULL,
	[job_type] [varchar](50) NOT NULL,
	[annual_income] [float] NOT NULL,
	[loan_amount] [float] NOT NULL,
	[interest_on_year] [float] NOT NULL,
	[created_date] [date] NOT NULL,
	[record_status] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[loan_application_number] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_master_jobs]    Script Date: 23/02/2022 09:55:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_master_jobs](
	[job_id] [int] IDENTITY(1,1) NOT NULL,
	[job_name] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[job_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_master_loantypes]    Script Date: 23/02/2022 09:55:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_master_loantypes](
	[loan_type_id] [int] IDENTITY(1,1) NOT NULL,
	[loan_name] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[loan_type_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[tbl_loanapplication] ([loan_application_number], [full_name], [date_of_birth], [phone_number], [alternate_number], [email_id], [pan_number], [aadhar_number], [user_address], [loan_type], [job_type], [annual_income], [loan_amount], [interest_on_year], [created_date], [record_status]) VALUES (N'LN202111001', N'siva', CAST(N'1994-02-17' AS Date), N'9999999999', NULL, NULL, N'ABCDE1234A', N'856894785787', NULL, N'Home Loan', N'Public Sector', 300000, 100000, 6500, CAST(N'2021-11-23' AS Date), 1)
INSERT [dbo].[tbl_loanapplication] ([loan_application_number], [full_name], [date_of_birth], [phone_number], [alternate_number], [email_id], [pan_number], [aadhar_number], [user_address], [loan_type], [job_type], [annual_income], [loan_amount], [interest_on_year], [created_date], [record_status]) VALUES (N'LN202111002', N'agila', CAST(N'2001-06-07' AS Date), N'8870384589', NULL, NULL, N'AAAAA6754A', N'856894785787', NULL, N'Home Loan', N'Self Employed', 8000, 3000000, 240000, CAST(N'2021-11-23' AS Date), 1)
GO
SET IDENTITY_INSERT [dbo].[tbl_master_jobs] ON 

INSERT [dbo].[tbl_master_jobs] ([job_id], [job_name]) VALUES (1, N'Public Sector')
INSERT [dbo].[tbl_master_jobs] ([job_id], [job_name]) VALUES (3, N'Self Employed')
SET IDENTITY_INSERT [dbo].[tbl_master_jobs] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_master_loantypes] ON 

INSERT [dbo].[tbl_master_loantypes] ([loan_type_id], [loan_name]) VALUES (1, N'Home Loan')
INSERT [dbo].[tbl_master_loantypes] ([loan_type_id], [loan_name]) VALUES (2, N'Personal Loan')
INSERT [dbo].[tbl_master_loantypes] ([loan_type_id], [loan_name]) VALUES (3, N'Business Loan')
INSERT [dbo].[tbl_master_loantypes] ([loan_type_id], [loan_name]) VALUES (4, N'Gold Loan')
SET IDENTITY_INSERT [dbo].[tbl_master_loantypes] OFF
GO
