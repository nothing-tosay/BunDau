USE [bundau]
GO
/****** Object:  Table [dbo].[contact]    Script Date: 7/30/2020 5:10:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[contact](
	[name] [nvarchar](50) NULL,
	[email] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[food]    Script Date: 7/30/2020 5:10:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[food](
	[fid] [int] NULL,
	[name] [nvarchar](50) NULL,
	[tid] [int] NOT NULL,
	[title] [nvarchar](max) NULL,
	[price] [int] NOT NULL,
	[sold] [int] NOT NULL,
	[img] [nvarchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[history]    Script Date: 7/30/2020 5:10:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[history](
	[username] [nchar](10) NULL,
	[fid] [int] NULL,
	[date] [date] NULL,
	[total] [int] NULL,
	[address] [nvarchar](150) NOT NULL,
	[tongtien] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[order]    Script Date: 7/30/2020 5:10:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[order](
	[name] [nvarchar](max) NULL,
	[phone] [nchar](10) NULL,
	[email] [nvarchar](50) NULL,
	[date] [date] NULL,
	[note] [nvarchar](max) NULL,
	[num] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[type_food]    Script Date: 7/30/2020 5:10:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[type_food](
	[tid] [int] NOT NULL,
	[name] [nvarchar](max) NULL,
 CONSTRAINT [PK_type_food] PRIMARY KEY CLUSTERED 
(
	[tid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 7/30/2020 5:10:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[username] [nchar](10) NOT NULL,
	[password] [nchar](10) NULL,
	[firstname] [nvarchar](50) NULL,
	[lastname] [nvarchar](50) NULL,
	[email] [nvarchar](50) NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[contact] ([name], [email]) VALUES (N'anhngocanh', N'nguyenhungmanh14011999@gmail.com')
INSERT [dbo].[contact] ([name], [email]) VALUES (N'manh', N'nguyenhungmanh14011999@gmail.com')
INSERT [dbo].[contact] ([name], [email]) VALUES (N'manh', N'nguyenhungmanh14011999@gmail.com')
INSERT [dbo].[contact] ([name], [email]) VALUES (N'manh', N'nguyenhungmanh14011999@gmail.com')
INSERT [dbo].[contact] ([name], [email]) VALUES (N'sdgss', N'anhtqhe130692@fpt.edu.vn')
INSERT [dbo].[contact] ([name], [email]) VALUES (N'mr', N'havicopple@gmail.com')
INSERT [dbo].[contact] ([name], [email]) VALUES (N'mr', N'havicopple@gmail.com')
INSERT [dbo].[contact] ([name], [email]) VALUES (N'mr', N'havicopple@gmail.com')
INSERT [dbo].[contact] ([name], [email]) VALUES (N'manh', N'lamlthe130700@fpt.edu.vn')
INSERT [dbo].[food] ([fid], [name], [tid], [title], [price], [sold], [img]) VALUES (1, N'Heo Mán Mẹt lớn', 1, N'Hấp, Lòng, dồi, nướng, nhựa mận, xào lăn, xôi, canh, bún
', 599000, 0, N'metdb.jpg')
INSERT [dbo].[food] ([fid], [name], [tid], [title], [price], [sold], [img]) VALUES (2, N'Heo Mán Mẹt vừa', 1, N'Hấp, Lòng, dồi, nướng, nhựa mận, xôi, canh, bún', 399000, 0, N'metvua.jpg')
INSERT [dbo].[food] ([fid], [name], [tid], [title], [price], [sold], [img]) VALUES (3, N'Heo Mán Mẹt nhỏ', 1, N'Hấp, Lòng, dồi, nướng, canh, bún', 219000, 0, N'metnho.jpg')
INSERT [dbo].[food] ([fid], [name], [tid], [title], [price], [sold], [img]) VALUES (4, N'Gà Đồi Mẹt nhỏ', 2, N'Hấp lá chanh, rang muối, xôi', 259000, 0, N'ga2.jpg')
INSERT [dbo].[food] ([fid], [name], [tid], [title], [price], [sold], [img]) VALUES (5, N'Gà Đồi Mẹt vừa', 2, N'Hấp lá chanh, rang muối, nộm gà, xôi', 359000, 0, N'ga3.jpg')
INSERT [dbo].[food] ([fid], [name], [tid], [title], [price], [sold], [img]) VALUES (6, N'Gà Đồi nguyên con', 2, N'Hấp lá chanh, rang muối, nộm gà, lòng xào, xôi', 459000, 0, N'ga1.jpg')
INSERT [dbo].[food] ([fid], [name], [tid], [title], [price], [sold], [img]) VALUES (7, N'Hấp lá chanh', 2, N'Hấp lá chanh', 160000, 0, N'ga3.jpg')
INSERT [dbo].[food] ([fid], [name], [tid], [title], [price], [sold], [img]) VALUES (8, N'Gà rang muối', 2, N'Gà rang muối', 120000, 0, N'ga2.jpg')
INSERT [dbo].[food] ([fid], [name], [tid], [title], [price], [sold], [img]) VALUES (9, N'Gà xào xả ớt', 2, N'Gà xào xả ớt', 120000, 0, N'ga4.jpg')
INSERT [dbo].[food] ([fid], [name], [tid], [title], [price], [sold], [img]) VALUES (10, N'Nộm gà', 2, N'Nộm gà', 80000, 0, N'ga4.jpg')
INSERT [dbo].[food] ([fid], [name], [tid], [title], [price], [sold], [img]) VALUES (11, N'Bún Đậu Mẹt đặc biệt', 4, N'Thịt, đậu, chả giò, chả cốm, lòng, đồi', 79000, 0, N'bundau13.jpg')
INSERT [dbo].[food] ([fid], [name], [tid], [title], [price], [sold], [img]) VALUES (12, N'Bún đậu thịt chả cốm/chả giò', 4, N'Phần đặc biệt: Bún, Chả, Thịt heo mán, dồi heo', 59000, 0, N'bundau12.jpg')
INSERT [dbo].[food] ([fid], [name], [tid], [title], [price], [sold], [img]) VALUES (13, N'Bún đậu thịt', 4, N'Bún có mỗi thịt', 45000, 0, N'bundau16.jpg')
INSERT [dbo].[food] ([fid], [name], [tid], [title], [price], [sold], [img]) VALUES (14, N'Bún đậu mắn tôm/mắn hành', 4, N'Mắm tôm hay mắm hành', 35000, 0, N'bundau14.jpg')
INSERT [dbo].[food] ([fid], [name], [tid], [title], [price], [sold], [img]) VALUES (15, N'Bún giả cầy', 4, N'Bún giả cầy đấy', 55000, 0, N'bundau3.jpg')
INSERT [dbo].[food] ([fid], [name], [tid], [title], [price], [sold], [img]) VALUES (16, N'Chả cốm thêm', 5, N'Thêm chả cốm ', 25000, 0, N'bundau17.jpg')
INSERT [dbo].[food] ([fid], [name], [tid], [title], [price], [sold], [img]) VALUES (17, N'Thịt thêm', 5, N'Thêm thịt', 30000, 0, N'bundau15.jpg')
INSERT [dbo].[food] ([fid], [name], [tid], [title], [price], [sold], [img]) VALUES (18, N'Chả giò thêm', 5, N'Thêm chả giò', 25000, 0, N'bundau12.jpg')
INSERT [dbo].[food] ([fid], [name], [tid], [title], [price], [sold], [img]) VALUES (19, N'Đậu thêm', 5, N'Thêm đậu', 15000, 0, N'bundau2.jpg')
INSERT [dbo].[food] ([fid], [name], [tid], [title], [price], [sold], [img]) VALUES (20, N'Bún thêm', 5, N'Thêm bún', 15000, 0, N'bundau16.jpg')
INSERT [dbo].[food] ([fid], [name], [tid], [title], [price], [sold], [img]) VALUES (21, N'Lòng dồi', 5, N'Lòng hoặc dồi', 120000, 0, N'bundau15.jpg')
INSERT [dbo].[food] ([fid], [name], [tid], [title], [price], [sold], [img]) VALUES (22, N'Thịt hấp', 5, N'Thêm thịt hấp', 150000, 0, N'bundau14.jpg')
INSERT [dbo].[food] ([fid], [name], [tid], [title], [price], [sold], [img]) VALUES (23, N'Nhựa mận', 5, N'Nhựa mận nhé', 45000, 0, N'bundau13.jpg')
INSERT [dbo].[food] ([fid], [name], [tid], [title], [price], [sold], [img]) VALUES (24, N'Canh măng', 5, N'Canh măng không', 15000, 0, N'bundau16.jpg')
INSERT [dbo].[food] ([fid], [name], [tid], [title], [price], [sold], [img]) VALUES (25, N'Xôi', 5, N'Xôi nương', 25000, 0, N'bundau12.jpg')
INSERT [dbo].[food] ([fid], [name], [tid], [title], [price], [sold], [img]) VALUES (26, N'Bún', 5, N'Bún dối', 10000, 0, N'bundau16.jpg')
INSERT [dbo].[food] ([fid], [name], [tid], [title], [price], [sold], [img]) VALUES (27, N'Chân gà chiên mắm', 5, N'Chân gà chiên mắm', 50000, 0, N'bundau13.jpg')
INSERT [dbo].[food] ([fid], [name], [tid], [title], [price], [sold], [img]) VALUES (28, N'Bia lon Heineken', 3, N'Bia lon Heineken', 15000, 0, N'bia2.jpg')
INSERT [dbo].[food] ([fid], [name], [tid], [title], [price], [sold], [img]) VALUES (29, N'Bia lon 333', 3, N'Bia lon 333', 15000, 0, N'333.jpg')
INSERT [dbo].[food] ([fid], [name], [tid], [title], [price], [sold], [img]) VALUES (30, N'Bia lon Tiger', 3, N'Bia lon Tiger', 15000, 0, N'bia5.jpg')
INSERT [dbo].[food] ([fid], [name], [tid], [title], [price], [sold], [img]) VALUES (31, N'StrongBow', 3, N'StrongBow', 15000, 0, N'bia6.jpg')
INSERT [dbo].[food] ([fid], [name], [tid], [title], [price], [sold], [img]) VALUES (32, N'CoCaCola', 3, N'CoCaCola', 10000, 0, N'coca1.jpg')
INSERT [dbo].[food] ([fid], [name], [tid], [title], [price], [sold], [img]) VALUES (33, N'Fanta', 3, N'Fanta', 10000, 0, N'fanta.jpg')
INSERT [dbo].[food] ([fid], [name], [tid], [title], [price], [sold], [img]) VALUES (34, N'Bò húc Redbull', 3, N'Bò húc Redbull', 10000, 0, N'redbull.jpg')
INSERT [dbo].[food] ([fid], [name], [tid], [title], [price], [sold], [img]) VALUES (35, N'Nước lọc Lavie', 3, N'Nước lọc', 5000, 0, N'lavie.jpg')
INSERT [dbo].[food] ([fid], [name], [tid], [title], [price], [sold], [img]) VALUES (36, N'Mẹt Đặc Biệt', 1, N'Hấp, Lòng, dồi, nướng, nhựa mận, xào lăn, xôi, canh, bún', 790000, 0, N'metdb.jpg')
INSERT [dbo].[history] ([username], [fid], [date], [total], [address], [tongtien]) VALUES (N'manh      ', 2, CAST(N'2020-05-08' AS Date), 1, N'nha toi', 399000)
INSERT [dbo].[history] ([username], [fid], [date], [total], [address], [tongtien]) VALUES (N'haha      ', 30, CAST(N'2020-05-08' AS Date), 3, N'nha toi', 45000)
INSERT [dbo].[history] ([username], [fid], [date], [total], [address], [tongtien]) VALUES (N'haha      ', 30, CAST(N'2020-05-08' AS Date), 3, N'nha toi', 45000)
INSERT [dbo].[history] ([username], [fid], [date], [total], [address], [tongtien]) VALUES (N'haha      ', 8, CAST(N'2020-05-08' AS Date), 25, N'asdasdasdasd', 3000000)
INSERT [dbo].[history] ([username], [fid], [date], [total], [address], [tongtien]) VALUES (N'haha      ', 8, CAST(N'2020-05-08' AS Date), 1, N'nha toi', 120000)
INSERT [dbo].[history] ([username], [fid], [date], [total], [address], [tongtien]) VALUES (N'haha      ', 36, CAST(N'2020-05-08' AS Date), 2, N'asdasdasdasd', 1580000)
INSERT [dbo].[history] ([username], [fid], [date], [total], [address], [tongtien]) VALUES (N'haha      ', 3, CAST(N'2020-05-08' AS Date), 1, N'1', 219000)
INSERT [dbo].[history] ([username], [fid], [date], [total], [address], [tongtien]) VALUES (N'haha      ', 2, CAST(N'2020-05-08' AS Date), 1, N'nha toi', 399000)
INSERT [dbo].[history] ([username], [fid], [date], [total], [address], [tongtien]) VALUES (N'haha      ', 2, CAST(N'2020-05-08' AS Date), 1, N'1dasdasd', 399000)
INSERT [dbo].[history] ([username], [fid], [date], [total], [address], [tongtien]) VALUES (N'haha      ', 1, CAST(N'2020-06-30' AS Date), 3, N'nha toi', 1797000)
INSERT [dbo].[history] ([username], [fid], [date], [total], [address], [tongtien]) VALUES (N'haha      ', 8, CAST(N'2020-05-08' AS Date), 25, N'asdasdasdasd', 3000000)
INSERT [dbo].[history] ([username], [fid], [date], [total], [address], [tongtien]) VALUES (N'haha      ', 8, CAST(N'2020-05-08' AS Date), 25, N'asdasdasdasd', 3000000)
INSERT [dbo].[history] ([username], [fid], [date], [total], [address], [tongtien]) VALUES (N'haha      ', 8, CAST(N'2020-05-08' AS Date), 1, N'nha toi', 120000)
INSERT [dbo].[history] ([username], [fid], [date], [total], [address], [tongtien]) VALUES (N'haha      ', 8, CAST(N'2020-05-08' AS Date), 1, N'nha toi', 120000)
INSERT [dbo].[history] ([username], [fid], [date], [total], [address], [tongtien]) VALUES (N'haha      ', 8, CAST(N'2020-05-08' AS Date), 1, N'nha toi', 120000)
INSERT [dbo].[history] ([username], [fid], [date], [total], [address], [tongtien]) VALUES (N'haha      ', 3, CAST(N'2020-05-08' AS Date), 1, N'1', 219000)
INSERT [dbo].[history] ([username], [fid], [date], [total], [address], [tongtien]) VALUES (N'haha      ', 2, CAST(N'2020-05-08' AS Date), 1, N'nha toi', 399000)
INSERT [dbo].[history] ([username], [fid], [date], [total], [address], [tongtien]) VALUES (N'haha      ', 2, CAST(N'2020-05-08' AS Date), 1, N'nha toi', 399000)
INSERT [dbo].[order] ([name], [phone], [email], [date], [note], [num]) VALUES (N'quanganh', N'0978212108', N'quanganh@gmail.com', CAST(N'2019-10-10' AS Date), N'hihi', 1)
INSERT [dbo].[order] ([name], [phone], [email], [date], [note], [num]) VALUES (N'quanganh', N'0978212108', N'quanganh@gmail.com', CAST(N'2019-10-20' AS Date), N'hihi', 1)
INSERT [dbo].[order] ([name], [phone], [email], [date], [note], [num]) VALUES (N'anhngocanh', N'0971612781', N'nguyenhungmanh14011999@gmail.com', CAST(N'2020-03-07' AS Date), N'asdasd', 2)
INSERT [dbo].[order] ([name], [phone], [email], [date], [note], [num]) VALUES (N'', N'          ', N'', CAST(N'2020-03-18' AS Date), N'2020-03-18', NULL)
INSERT [dbo].[order] ([name], [phone], [email], [date], [note], [num]) VALUES (N'', N'          ', N'', CAST(N'2020-03-18' AS Date), N'2020-03-18', NULL)
INSERT [dbo].[order] ([name], [phone], [email], [date], [note], [num]) VALUES (N'Thầy Tiến', N'0912345678', N'nguyenhungmanh14011999@gmail.com', CAST(N'2020-04-03' AS Date), N'bao toàn quán nhé', 3)
INSERT [dbo].[order] ([name], [phone], [email], [date], [note], [num]) VALUES (N'manh', N'0971612781', N'nguyenhungmanh14011999@gmail.com', CAST(N'2020-03-26' AS Date), N'asdasd', 3)
INSERT [dbo].[order] ([name], [phone], [email], [date], [note], [num]) VALUES (N'hung manh', N'0912345678', N'nguyenhungmanh14011999@gmail.com', CAST(N'2020-04-01' AS Date), N'bao toàn quán nhé', 500)
INSERT [dbo].[order] ([name], [phone], [email], [date], [note], [num]) VALUES (N'qa', N'0971612781', N'manhnhhe130701@fpt.edu.vn', CAST(N'2020-04-03' AS Date), N't muốn bao cả quán', 1)
INSERT [dbo].[order] ([name], [phone], [email], [date], [note], [num]) VALUES (N'qa', N'0971612781', N'anhtqhe130692@fpt.edu.vn', CAST(N'2020-04-02' AS Date), N't muốn bao cả quán', 1)
INSERT [dbo].[order] ([name], [phone], [email], [date], [note], [num]) VALUES (N'qa', N'0971612781', N'anhtqhe130692@fpt.edu.vn', CAST(N'2020-04-02' AS Date), N't muốn bao cả quán', 1)
INSERT [dbo].[order] ([name], [phone], [email], [date], [note], [num]) VALUES (N'qa', N'0971612781', N'anhtqhe130692@fpt.edu.vn', CAST(N'2020-04-09' AS Date), N't muốn bao cả quán', 1)
INSERT [dbo].[order] ([name], [phone], [email], [date], [note], [num]) VALUES (N'qa', N'0971612781', N'anhtqhe130692@fpt.edu.vn', CAST(N'2020-04-09' AS Date), N't muốn bao cả quán', 1)
INSERT [dbo].[order] ([name], [phone], [email], [date], [note], [num]) VALUES (N'qa', N'0971612781', N'anhtqhe130692@fpt.edu.vn', CAST(N'2020-04-03' AS Date), N't muốn bao cả quán', 1)
INSERT [dbo].[order] ([name], [phone], [email], [date], [note], [num]) VALUES (N'sontungmtp', N'0123456789', N'nguyenhungmanh14011999@gmail.com', CAST(N'2020-04-12' AS Date), N'bao toàn quán nhé', 6)
INSERT [dbo].[order] ([name], [phone], [email], [date], [note], [num]) VALUES (N'anh khá', N'0971612781', N'nguyenhungmanh14011999@gmail.com', CAST(N'2020-03-14' AS Date), N'asdasd', 3)
INSERT [dbo].[order] ([name], [phone], [email], [date], [note], [num]) VALUES (N'anhngocanh', N'0971612781', N'nguyenhungmanh14011999@gmail.com', CAST(N'2020-03-12' AS Date), N'asdasd', 1)
INSERT [dbo].[order] ([name], [phone], [email], [date], [note], [num]) VALUES (N'manh', N'0888451882', N'haha@gmail.com', CAST(N'2020-05-05' AS Date), N'ádas', 1)
INSERT [dbo].[order] ([name], [phone], [email], [date], [note], [num]) VALUES (N'manh', N'sads      ', N'haha@gmail.com', CAST(N'2020-04-30' AS Date), N'a', 1)
INSERT [dbo].[order] ([name], [phone], [email], [date], [note], [num]) VALUES (N'haha', N'0888451882', N'ilov3cheessee@gmail.com', CAST(N'2020-05-21' AS Date), N'ádasd', 2)
INSERT [dbo].[order] ([name], [phone], [email], [date], [note], [num]) VALUES (N'LÃª VÄn Nháº­t', N'0888451882', N'levannhatct@gmail.com', CAST(N'2020-06-25' AS Date), N'asd', 1)
INSERT [dbo].[type_food] ([tid], [name]) VALUES (1, N'Heo Man Met')
INSERT [dbo].[type_food] ([tid], [name]) VALUES (2, N'Gà Đồi Mẹt')
INSERT [dbo].[type_food] ([tid], [name]) VALUES (3, N'Nước uống')
INSERT [dbo].[type_food] ([tid], [name]) VALUES (4, N'Bún mẹt')
INSERT [dbo].[type_food] ([tid], [name]) VALUES (5, N'Topping ăn kèm bún')
INSERT [dbo].[User] ([username], [password], [firstname], [lastname], [email]) VALUES (N'111111    ', N'111       ', N'1111', N'1111111', N'haha@gmail.com')
INSERT [dbo].[User] ([username], [password], [firstname], [lastname], [email]) VALUES (N'haha      ', N'123       ', N'123       ', N'123       ', N'nguyenhungmanh14011999@gmail.com')
INSERT [dbo].[User] ([username], [password], [firstname], [lastname], [email]) VALUES (N'hihi      ', N'1         ', N'123       ', N'123       ', N'fas@gag.hs')
INSERT [dbo].[User] ([username], [password], [firstname], [lastname], [email]) VALUES (N'hihihi    ', N'kkk       ', N'Ã¡dasda', N'áº¥dsdas', N'haha@gmail.com')
INSERT [dbo].[User] ([username], [password], [firstname], [lastname], [email]) VALUES (N'manh      ', N'manh123   ', N'manh      ', N'hung      ', NULL)
INSERT [dbo].[User] ([username], [password], [firstname], [lastname], [email]) VALUES (N'manh123   ', N'123       ', N'mạnh', N'123       ', N'nguyenhungmanh14011999@gmail.com')
INSERT [dbo].[User] ([username], [password], [firstname], [lastname], [email]) VALUES (N'qa        ', N'123       ', N'qa1       ', N'qa2       ', N'quanganh@gmail.com')
INSERT [dbo].[User] ([username], [password], [firstname], [lastname], [email]) VALUES (N'sontungmtp', N'1         ', N'Son tung mtpppp', N' Nguyen', N'nguyenhungmanh14011999@gmail.com')
ALTER TABLE [dbo].[history]  WITH CHECK ADD  CONSTRAINT [FK_history_User] FOREIGN KEY([username])
REFERENCES [dbo].[User] ([username])
GO
ALTER TABLE [dbo].[history] CHECK CONSTRAINT [FK_history_User]
GO
