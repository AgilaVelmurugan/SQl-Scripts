USE [makezzaProfile]
GO
/****** Object:  Table [dbo].[orders]    Script Date: 23/02/2022 10:00:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[orders](
	[order_id] [int] IDENTITY(101,1) NOT NULL,
	[UserId] [int] NULL,
	[items] [varchar](100) NULL,
	[amount] [float] NULL,
	[order_date] [date] NULL,
	[quantity] [int] NULL,
	[order_status] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[order_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[profile]    Script Date: 23/02/2022 10:00:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[profile](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](30) NULL,
	[Pwd] [varchar](20) NULL,
	[Email] [varchar](50) NULL,
	[PhoneNO] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[orders] ON 

INSERT [dbo].[orders] ([order_id], [UserId], [items], [amount], [order_date], [quantity], [order_status]) VALUES (102, 2, N'White Pizza', 250, CAST(N'2021-11-11' AS Date), 1, 0)
INSERT [dbo].[orders] ([order_id], [UserId], [items], [amount], [order_date], [quantity], [order_status]) VALUES (103, 2, N'CHEESE N CORN', 500, CAST(N'2011-11-13' AS Date), 2, -1)
INSERT [dbo].[orders] ([order_id], [UserId], [items], [amount], [order_date], [quantity], [order_status]) VALUES (104, 2, N'Mexican Green Wave', 250, CAST(N'2021-11-13' AS Date), 1, 1)
SET IDENTITY_INSERT [dbo].[orders] OFF
GO
SET IDENTITY_INSERT [dbo].[profile] ON 

INSERT [dbo].[profile] ([UserId], [Username], [Pwd], [Email], [PhoneNO]) VALUES (1, N'Agila', N'123', N'agila@gmail.com', N'9790802373')
INSERT [dbo].[profile] ([UserId], [Username], [Pwd], [Email], [PhoneNO]) VALUES (2, N'Agila', N'agi123', N'Agila@gmail.com', N'8870384539')
INSERT [dbo].[profile] ([UserId], [Username], [Pwd], [Email], [PhoneNO]) VALUES (3, N'siva', N'123', N'siva@gmail.com', N'8870384539')
INSERT [dbo].[profile] ([UserId], [Username], [Pwd], [Email], [PhoneNO]) VALUES (4, N'gundu', N'234', N'gundu@gmail.com', N'9999999999')
SET IDENTITY_INSERT [dbo].[profile] OFF
GO
ALTER TABLE [dbo].[orders]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[profile] ([UserId])
GO
