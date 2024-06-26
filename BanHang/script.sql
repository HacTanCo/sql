USE [BaiTap]
GO
/****** Object:  Table [dbo].[hang]    Script Date: 4/11/2024 10:14:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hang](
	[mh] [nvarchar](50) NOT NULL,
	[th] [nvarchar](50) NULL,
	[nnh] [date] NULL,
	[sl] [int] NULL,
	[gb] [float] NULL,
 CONSTRAINT [PK_hang] PRIMARY KEY CLUSTERED 
(
	[mh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[hang] ([mh], [th], [nnh], [sl], [gb]) VALUES (N'mh1', N'tien', CAST(N'1111-01-01' AS Date), 100, 1000)
INSERT [dbo].[hang] ([mh], [th], [nnh], [sl], [gb]) VALUES (N'mh2', N'money', CAST(N'2222-02-02' AS Date), 150, 2000)
INSERT [dbo].[hang] ([mh], [th], [nnh], [sl], [gb]) VALUES (N'mh3', N'dollar', CAST(N'3333-03-03' AS Date), 200, 25000)
INSERT [dbo].[hang] ([mh], [th], [nnh], [sl], [gb]) VALUES (N'mh4', N'yen', CAST(N'4444-04-04' AS Date), 250, 165)
INSERT [dbo].[hang] ([mh], [th], [nnh], [sl], [gb]) VALUES (N'mh5', N'won', CAST(N'5555-05-05' AS Date), 300, 18)
INSERT [dbo].[hang] ([mh], [th], [nnh], [sl], [gb]) VALUES (N'mh6', N'bang anh', CAST(N'6666-06-06' AS Date), 350, 31.287)
INSERT [dbo].[hang] ([mh], [th], [nnh], [sl], [gb]) VALUES (N'mh7', N'euro', CAST(N'7777-07-07' AS Date), 400, 26.752)
INSERT [dbo].[hang] ([mh], [th], [nnh], [sl], [gb]) VALUES (N'mh8', N'rup', CAST(N'8888-08-08' AS Date), 450, 268)
INSERT [dbo].[hang] ([mh], [th], [nnh], [sl], [gb]) VALUES (N'mh9', N'dinar', CAST(N'9999-09-09' AS Date), 500, 77550)
