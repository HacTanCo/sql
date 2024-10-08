USE [QLGV]
GO
/****** Object:  Table [dbo].[Bomon]    Script Date: 10/10/2024 1:49:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bomon](
	[mabm] [nvarchar](50) NOT NULL,
	[tenbm] [nvarchar](50) NULL,
	[tenkhoa] [nvarchar](50) NULL,
 CONSTRAINT [PK_Bomon] PRIMARY KEY CLUSTERED 
(
	[mabm] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Day]    Script Date: 10/10/2024 1:49:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Day](
	[magv] [nvarchar](50) NOT NULL,
	[mamh] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Day] PRIMARY KEY CLUSTERED 
(
	[magv] ASC,
	[mamh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Dean]    Script Date: 10/10/2024 1:49:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dean](
	[mada] [nvarchar](50) NOT NULL,
	[tenda] [nvarchar](50) NULL,
	[magv] [nvarchar](50) NULL,
	[ketqua] [nvarchar](50) NULL,
 CONSTRAINT [PK_Dean] PRIMARY KEY CLUSTERED 
(
	[mada] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Giangvien]    Script Date: 10/10/2024 1:49:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Giangvien](
	[magv] [nvarchar](50) NOT NULL,
	[hoten] [nvarchar](50) NULL,
	[tuoi] [int] NULL,
	[mabm] [nvarchar](50) NULL,
 CONSTRAINT [PK_Giangvien] PRIMARY KEY CLUSTERED 
(
	[magv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Monhoc]    Script Date: 10/10/2024 1:49:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Monhoc](
	[mamh] [nvarchar](50) NOT NULL,
	[tenmh] [nvarchar](50) NULL,
	[sotiet] [int] NULL,
	[mabm] [nvarchar](50) NULL,
 CONSTRAINT [PK_Monhoc] PRIMARY KEY CLUSTERED 
(
	[mamh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[Bomon] ([mabm], [tenbm], [tenkhoa]) VALUES (N'BM01', N'Khoa hoc may tinh', N'CNTT')
INSERT [dbo].[Bomon] ([mabm], [tenbm], [tenkhoa]) VALUES (N'BM02', N'Toan hoc', N'Toan-Tin')
INSERT [dbo].[Bomon] ([mabm], [tenbm], [tenkhoa]) VALUES (N'BM03', N'Vat ly', N'Khoa hoc Tu nhien')
INSERT [dbo].[Day] ([magv], [mamh]) VALUES (N'GV01', N'MH01')
INSERT [dbo].[Day] ([magv], [mamh]) VALUES (N'GV01', N'MH04')
INSERT [dbo].[Day] ([magv], [mamh]) VALUES (N'GV02', N'MH02')
INSERT [dbo].[Day] ([magv], [mamh]) VALUES (N'GV03', N'MH01')
INSERT [dbo].[Day] ([magv], [mamh]) VALUES (N'GV04', N'MH03')
INSERT [dbo].[Dean] ([mada], [tenda], [magv], [ketqua]) VALUES (N'DA01', N'Nghien cuu ve AI', N'GV01', N'Tot')
INSERT [dbo].[Dean] ([mada], [tenda], [magv], [ketqua]) VALUES (N'DA02', N'Phat trien phan mem', N'GV02', N'Xuat sac')
INSERT [dbo].[Dean] ([mada], [tenda], [magv], [ketqua]) VALUES (N'DA03', N'Nghien cuu ve Big Data', N'GV03', N'Kha')
INSERT [dbo].[Dean] ([mada], [tenda], [magv], [ketqua]) VALUES (N'DA04', N'Thi nghiem vat ly', N'GV04', N'Tot')
INSERT [dbo].[Giangvien] ([magv], [hoten], [tuoi], [mabm]) VALUES (N'GV01', N'Nguyen Van A', 40, N'BM01')
INSERT [dbo].[Giangvien] ([magv], [hoten], [tuoi], [mabm]) VALUES (N'GV02', N'Tran Thi B', 35, N'BM02')
INSERT [dbo].[Giangvien] ([magv], [hoten], [tuoi], [mabm]) VALUES (N'GV03', N'Le Quang C', 45, N'BM01')
INSERT [dbo].[Giangvien] ([magv], [hoten], [tuoi], [mabm]) VALUES (N'GV04', N'Pham Van D', 50, N'BM03')
INSERT [dbo].[Monhoc] ([mamh], [tenmh], [sotiet], [mabm]) VALUES (N'MH01', N'Lap trinh C++', 45, N'BM01')
INSERT [dbo].[Monhoc] ([mamh], [tenmh], [sotiet], [mabm]) VALUES (N'MH02', N'Toan roi rac', 60, N'BM02')
INSERT [dbo].[Monhoc] ([mamh], [tenmh], [sotiet], [mabm]) VALUES (N'MH03', N'Vat ly dai cuong', 75, N'BM03')
INSERT [dbo].[Monhoc] ([mamh], [tenmh], [sotiet], [mabm]) VALUES (N'MH04', N'Co so du lieu', 50, N'BM01')
ALTER TABLE [dbo].[Day]  WITH CHECK ADD  CONSTRAINT [FK_Day_Giangvien] FOREIGN KEY([magv])
REFERENCES [dbo].[Giangvien] ([magv])
GO
ALTER TABLE [dbo].[Day] CHECK CONSTRAINT [FK_Day_Giangvien]
GO
ALTER TABLE [dbo].[Day]  WITH CHECK ADD  CONSTRAINT [FK_Day_Monhoc] FOREIGN KEY([mamh])
REFERENCES [dbo].[Monhoc] ([mamh])
GO
ALTER TABLE [dbo].[Day] CHECK CONSTRAINT [FK_Day_Monhoc]
GO
ALTER TABLE [dbo].[Dean]  WITH CHECK ADD  CONSTRAINT [FK_Dean_Giangvien] FOREIGN KEY([magv])
REFERENCES [dbo].[Giangvien] ([magv])
GO
ALTER TABLE [dbo].[Dean] CHECK CONSTRAINT [FK_Dean_Giangvien]
GO
ALTER TABLE [dbo].[Giangvien]  WITH CHECK ADD  CONSTRAINT [FK_Giangvien_Bomon] FOREIGN KEY([mabm])
REFERENCES [dbo].[Bomon] ([mabm])
GO
ALTER TABLE [dbo].[Giangvien] CHECK CONSTRAINT [FK_Giangvien_Bomon]
GO
ALTER TABLE [dbo].[Monhoc]  WITH CHECK ADD  CONSTRAINT [FK_Monhoc_Bomon] FOREIGN KEY([mabm])
REFERENCES [dbo].[Bomon] ([mabm])
GO
ALTER TABLE [dbo].[Monhoc] CHECK CONSTRAINT [FK_Monhoc_Bomon]
GO
