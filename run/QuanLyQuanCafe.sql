USE [master]
GO
/****** Object:  Database [QuanLyQuanCafe]    Script Date: 30/12/2022 11:58:34 PM ******/
CREATE DATABASE [QuanLyQuanCafe]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QuanLyQuanCafe', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\QuanLyQuanCafe.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QuanLyQuanCafe_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\QuanLyQuanCafe_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [QuanLyQuanCafe] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QuanLyQuanCafe].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QuanLyQuanCafe] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QuanLyQuanCafe] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QuanLyQuanCafe] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QuanLyQuanCafe] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QuanLyQuanCafe] SET ARITHABORT OFF 
GO
ALTER DATABASE [QuanLyQuanCafe] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [QuanLyQuanCafe] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QuanLyQuanCafe] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QuanLyQuanCafe] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QuanLyQuanCafe] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QuanLyQuanCafe] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QuanLyQuanCafe] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QuanLyQuanCafe] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QuanLyQuanCafe] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QuanLyQuanCafe] SET  ENABLE_BROKER 
GO
ALTER DATABASE [QuanLyQuanCafe] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QuanLyQuanCafe] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QuanLyQuanCafe] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QuanLyQuanCafe] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QuanLyQuanCafe] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QuanLyQuanCafe] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QuanLyQuanCafe] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QuanLyQuanCafe] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QuanLyQuanCafe] SET  MULTI_USER 
GO
ALTER DATABASE [QuanLyQuanCafe] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QuanLyQuanCafe] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QuanLyQuanCafe] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QuanLyQuanCafe] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QuanLyQuanCafe] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QuanLyQuanCafe] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [QuanLyQuanCafe] SET QUERY_STORE = OFF
GO
USE [QuanLyQuanCafe]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 30/12/2022 11:58:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[UserName] [nvarchar](100) NOT NULL,
	[PassWord] [nvarchar](100) NOT NULL,
	[AccountName] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Beverage]    Script Date: 30/12/2022 11:58:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Beverage](
	[BeverageId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[BeverageCategoryId] [int] NOT NULL,
	[Price] [float] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[BeverageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BeverageCategory]    Script Date: 30/12/2022 11:58:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BeverageCategory](
	[BeverageCategoryId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[BeverageCategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BeverageTable]    Script Date: 30/12/2022 11:58:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BeverageTable](
	[BeverageTableId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Status] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[BeverageTableId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bill]    Script Date: 30/12/2022 11:58:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bill](
	[BillId] [int] IDENTITY(1,1) NOT NULL,
	[BeverageTableId] [int] NOT NULL,
	[DateCheckIn] [date] NOT NULL,
	[DateCheckOut] [date] NULL,
	[TotalPrice] [float] NULL,
	[Status] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[BillId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BillInfo]    Script Date: 30/12/2022 11:58:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BillInfo](
	[BillId] [int] NOT NULL,
	[BeverageId] [int] NOT NULL,
	[Count] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[BillId] ASC,
	[BeverageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Account] ([UserName], [PassWord], [AccountName]) VALUES (N'bang', N'123', N'Hải Bằng')
INSERT [dbo].[Account] ([UserName], [PassWord], [AccountName]) VALUES (N'phuc', N'123', N'Tấn Phúc')
INSERT [dbo].[Account] ([UserName], [PassWord], [AccountName]) VALUES (N'thang', N'123', N'Đức Thắng')
GO
SET IDENTITY_INSERT [dbo].[Beverage] ON 

INSERT [dbo].[Beverage] ([BeverageId], [Name], [BeverageCategoryId], [Price]) VALUES (1, N'Trà sữa Phúc Long', 1, 50000)
INSERT [dbo].[Beverage] ([BeverageId], [Name], [BeverageCategoryId], [Price]) VALUES (2, N'Trà đào', 1, 50000)
INSERT [dbo].[Beverage] ([BeverageId], [Name], [BeverageCategoryId], [Price]) VALUES (3, N'Trà vãi', 1, 60000)
INSERT [dbo].[Beverage] ([BeverageId], [Name], [BeverageCategoryId], [Price]) VALUES (4, N'Trà xanh Latte', 1, 50000)
INSERT [dbo].[Beverage] ([BeverageId], [Name], [BeverageCategoryId], [Price]) VALUES (5, N'Hồng trà Chanh', 1, 50000)
INSERT [dbo].[Beverage] ([BeverageId], [Name], [BeverageCategoryId], [Price]) VALUES (6, N'Thơm ép', 2, 35000)
INSERT [dbo].[Beverage] ([BeverageId], [Name], [BeverageCategoryId], [Price]) VALUES (7, N'Táo ép', 2, 35000)
INSERT [dbo].[Beverage] ([BeverageId], [Name], [BeverageCategoryId], [Price]) VALUES (8, N'Táo và dâu ép', 2, 35000)
INSERT [dbo].[Beverage] ([BeverageId], [Name], [BeverageCategoryId], [Price]) VALUES (9, N'Cam ép', 2, 35000)
INSERT [dbo].[Beverage] ([BeverageId], [Name], [BeverageCategoryId], [Price]) VALUES (10, N'Cà phê Cappucino', 3, 45000)
INSERT [dbo].[Beverage] ([BeverageId], [Name], [BeverageCategoryId], [Price]) VALUES (11, N'Cà phê Sô-cô-la', 3, 45000)
INSERT [dbo].[Beverage] ([BeverageId], [Name], [BeverageCategoryId], [Price]) VALUES (12, N'Cà phê Caramel', 3, 45000)
INSERT [dbo].[Beverage] ([BeverageId], [Name], [BeverageCategoryId], [Price]) VALUES (13, N'Cà phê Espresso', 3, 45000)
SET IDENTITY_INSERT [dbo].[Beverage] OFF
GO
SET IDENTITY_INSERT [dbo].[BeverageCategory] ON 

INSERT [dbo].[BeverageCategory] ([BeverageCategoryId], [Name]) VALUES (1, N'Trà')
INSERT [dbo].[BeverageCategory] ([BeverageCategoryId], [Name]) VALUES (2, N'Nước ép')
INSERT [dbo].[BeverageCategory] ([BeverageCategoryId], [Name]) VALUES (3, N'Cafe')
SET IDENTITY_INSERT [dbo].[BeverageCategory] OFF
GO
SET IDENTITY_INSERT [dbo].[BeverageTable] ON 

INSERT [dbo].[BeverageTable] ([BeverageTableId], [Name], [Status]) VALUES (1, N'Bàn 1', N'Trống')
INSERT [dbo].[BeverageTable] ([BeverageTableId], [Name], [Status]) VALUES (2, N'Bàn 2', N'Trống')
INSERT [dbo].[BeverageTable] ([BeverageTableId], [Name], [Status]) VALUES (3, N'Bàn 3', N'Trống')
INSERT [dbo].[BeverageTable] ([BeverageTableId], [Name], [Status]) VALUES (4, N'Bàn 4', N'Có người')
INSERT [dbo].[BeverageTable] ([BeverageTableId], [Name], [Status]) VALUES (5, N'Bàn 5', N'Trống')
SET IDENTITY_INSERT [dbo].[BeverageTable] OFF
GO
SET IDENTITY_INSERT [dbo].[Bill] ON 

INSERT [dbo].[Bill] ([BillId], [BeverageTableId], [DateCheckIn], [DateCheckOut], [TotalPrice], [Status]) VALUES (1, 3, CAST(N'2022-12-27' AS Date), CAST(N'2022-12-27' AS Date), 330000, 1)
INSERT [dbo].[Bill] ([BillId], [BeverageTableId], [DateCheckIn], [DateCheckOut], [TotalPrice], [Status]) VALUES (2, 5, CAST(N'2022-12-27' AS Date), CAST(N'2022-12-27' AS Date), 100000, 1)
INSERT [dbo].[Bill] ([BillId], [BeverageTableId], [DateCheckIn], [DateCheckOut], [TotalPrice], [Status]) VALUES (3, 4, CAST(N'2022-12-27' AS Date), CAST(N'2022-12-27' AS Date), 155000, 1)
INSERT [dbo].[Bill] ([BillId], [BeverageTableId], [DateCheckIn], [DateCheckOut], [TotalPrice], [Status]) VALUES (4, 2, CAST(N'2022-12-27' AS Date), CAST(N'2022-12-27' AS Date), 85000, 1)
INSERT [dbo].[Bill] ([BillId], [BeverageTableId], [DateCheckIn], [DateCheckOut], [TotalPrice], [Status]) VALUES (5, 4, CAST(N'2022-12-30' AS Date), CAST(N'2022-12-30' AS Date), 123, 1)
INSERT [dbo].[Bill] ([BillId], [BeverageTableId], [DateCheckIn], [DateCheckOut], [TotalPrice], [Status]) VALUES (6, 1, CAST(N'2022-12-30' AS Date), CAST(N'2022-12-30' AS Date), 369, 1)
INSERT [dbo].[Bill] ([BillId], [BeverageTableId], [DateCheckIn], [DateCheckOut], [TotalPrice], [Status]) VALUES (7, 1, CAST(N'2022-12-30' AS Date), NULL, 0, 0)
INSERT [dbo].[Bill] ([BillId], [BeverageTableId], [DateCheckIn], [DateCheckOut], [TotalPrice], [Status]) VALUES (8, 4, CAST(N'2022-12-30' AS Date), CAST(N'2022-12-30' AS Date), 150000, 1)
INSERT [dbo].[Bill] ([BillId], [BeverageTableId], [DateCheckIn], [DateCheckOut], [TotalPrice], [Status]) VALUES (9, 3, CAST(N'2022-12-30' AS Date), CAST(N'2022-12-30' AS Date), 100000, 1)
INSERT [dbo].[Bill] ([BillId], [BeverageTableId], [DateCheckIn], [DateCheckOut], [TotalPrice], [Status]) VALUES (10, 4, CAST(N'2022-12-30' AS Date), CAST(N'2022-12-30' AS Date), 123, 1)
INSERT [dbo].[Bill] ([BillId], [BeverageTableId], [DateCheckIn], [DateCheckOut], [TotalPrice], [Status]) VALUES (11, 4, CAST(N'2022-12-30' AS Date), CAST(N'2022-12-30' AS Date), 100000, 1)
INSERT [dbo].[Bill] ([BillId], [BeverageTableId], [DateCheckIn], [DateCheckOut], [TotalPrice], [Status]) VALUES (12, 4, CAST(N'2022-12-30' AS Date), NULL, 0, 0)
SET IDENTITY_INSERT [dbo].[Bill] OFF
GO
INSERT [dbo].[BillInfo] ([BillId], [BeverageId], [Count]) VALUES (1, 1, 2)
INSERT [dbo].[BillInfo] ([BillId], [BeverageId], [Count]) VALUES (1, 2, 1)
INSERT [dbo].[BillInfo] ([BillId], [BeverageId], [Count]) VALUES (1, 3, 3)
INSERT [dbo].[BillInfo] ([BillId], [BeverageId], [Count]) VALUES (2, 5, 2)
INSERT [dbo].[BillInfo] ([BillId], [BeverageId], [Count]) VALUES (3, 1, 1)
INSERT [dbo].[BillInfo] ([BillId], [BeverageId], [Count]) VALUES (3, 6, 2)
INSERT [dbo].[BillInfo] ([BillId], [BeverageId], [Count]) VALUES (3, 7, 1)
INSERT [dbo].[BillInfo] ([BillId], [BeverageId], [Count]) VALUES (4, 1, 1)
INSERT [dbo].[BillInfo] ([BillId], [BeverageId], [Count]) VALUES (4, 7, 1)
INSERT [dbo].[BillInfo] ([BillId], [BeverageId], [Count]) VALUES (8, 1, 2)
INSERT [dbo].[BillInfo] ([BillId], [BeverageId], [Count]) VALUES (8, 2, 1)
INSERT [dbo].[BillInfo] ([BillId], [BeverageId], [Count]) VALUES (9, 1, 2)
INSERT [dbo].[BillInfo] ([BillId], [BeverageId], [Count]) VALUES (11, 1, 2)
INSERT [dbo].[BillInfo] ([BillId], [BeverageId], [Count]) VALUES (12, 1, 1)
INSERT [dbo].[BillInfo] ([BillId], [BeverageId], [Count]) VALUES (12, 4, 1)
GO
ALTER TABLE [dbo].[Account] ADD  DEFAULT ((0)) FOR [PassWord]
GO
ALTER TABLE [dbo].[BeverageTable] ADD  DEFAULT (N'Trống') FOR [Status]
GO
ALTER TABLE [dbo].[Bill] ADD  DEFAULT (getdate()) FOR [DateCheckIn]
GO
ALTER TABLE [dbo].[Bill] ADD  DEFAULT ((0)) FOR [TotalPrice]
GO
ALTER TABLE [dbo].[Bill] ADD  DEFAULT ((0)) FOR [Status]
GO
ALTER TABLE [dbo].[BillInfo] ADD  DEFAULT ((0)) FOR [Count]
GO
ALTER TABLE [dbo].[Beverage]  WITH CHECK ADD FOREIGN KEY([BeverageCategoryId])
REFERENCES [dbo].[BeverageCategory] ([BeverageCategoryId])
GO
ALTER TABLE [dbo].[Bill]  WITH CHECK ADD FOREIGN KEY([BeverageTableId])
REFERENCES [dbo].[BeverageTable] ([BeverageTableId])
GO
ALTER TABLE [dbo].[BillInfo]  WITH CHECK ADD FOREIGN KEY([BeverageId])
REFERENCES [dbo].[Beverage] ([BeverageId])
GO
ALTER TABLE [dbo].[BillInfo]  WITH CHECK ADD FOREIGN KEY([BillId])
REFERENCES [dbo].[Bill] ([BillId])
GO
/****** Object:  StoredProcedure [dbo].[sp_GetBillByDate]    Script Date: 30/12/2022 11:58:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_GetBillByDate](@DateCheckIn date, @DateCheckOut date)
as
begin
	select t.Name as [Tên bàn], b.TotalPrice as [Tổng tiền] , b.DateCheckIn as[Ngày vào], b.DateCheckOut as [Ngày ra]
	from BeverageTable t, Bill b
	where  b.DateCheckIn >= @DateCheckIn and b.DateCheckOut<= @DateCheckOut
		and b.BeverageTableId = t.BeverageTableId and b.Status = 1 order by t.Name
end
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertBill]    Script Date: 30/12/2022 11:58:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--- Store procedure insertBill
CREATE PROC [dbo].[sp_InsertBill](@BeverageTableId int)
as	INSERT INTO Bill(DateCheckIn,DateCheckOut,BeverageTableId) values (GETDATE(),NULL,@BeverageTableId)
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertBillInfor]    Script Date: 30/12/2022 11:58:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---Store procedure insertBillInfor
CREATE PROC [dbo].[sp_InsertBillInfor](@BillId int, @BeverageId int , @Count int)
as 
begin
	declare @IsExitsBillInfor int 
	declare @BeverageCount int =1

	select @IsExitsBillInfor = BillInfo.BillId , @BeverageCount = BillInfo.Count
	from BillInfo
	where BillId = @BillId and BeverageId = @BeverageId
	if(@IsExitsBillInfor > 0)
		begin
			declare @NewCount int = @BeverageCount + @Count
			if(@NewCount > 0 )
				update BillInfo set Count = @BeverageCount + @Count where BillId = @BillId and BeverageId = @BeverageId
			else 
				delete BillInfo where	BillId = @BillId and BeverageId = @BeverageId
		end
	else	
	insert into BillInfo(BillId,BeverageId, Count) values (@BillId,@BeverageId,@count)
end
GO
/****** Object:  StoredProcedure [dbo].[sp_Login]    Script Date: 30/12/2022 11:58:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--- Store procedure kiem tra login
CREATE PROC [dbo].[sp_Login](
	@UserName NVARCHAR(100) ,
	@PassWord NVARCHAR(100) 
)
AS SELECT * FROM dbo.Account WHERE UserName = @UserName AND PassWord = @PassWord
---exec sp_Login 'bang', '1'
GO
/****** Object:  Trigger [dbo].[tg_UpdateBill]    Script Date: 30/12/2022 11:58:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create trigger [dbo].[tg_UpdateBill]
on [dbo].[Bill] for update
as 
begin
	declare @BillId int 
	declare	@BeverageTableId int
	declare @Count int = 0

	select @BillId = BillId from	inserted
	select @BeverageTableId = BeverageTableId from Bill where BillId = @BillId	
	select @Count = count(*) from Bill where BeverageTableId = @BeverageTableId and Status = 0
	if(@Count = 0)	
		update BeverageTable set Status = N'Trống' where BeverageTableId = @BeverageTableId
end
GO
ALTER TABLE [dbo].[Bill] ENABLE TRIGGER [tg_UpdateBill]
GO
/****** Object:  Trigger [dbo].[tg_DeleteBillInfo]    Script Date: 30/12/2022 11:58:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create trigger [dbo].[tg_DeleteBillInfo]
on [dbo].[BillInfo]  for delete
as 
begin
	declare @BeverageTableId int
	declare @BillId int
	declare @Count int = 0

	select @BillId = deleted.BillId  from deleted
	select @BeverageTableId = BeverageTableId from Bill where BillId = @BillId
	select @Count = count(*) from BillInfo bi, Bill b where b.BillId = bi.BillId and b.BillId = @BillId and b.Status = 0 
	if(@Count = 0 )
		update BeverageTable set Status = N'Trống' where	BeverageTableId = @BeverageTableId
end
GO
ALTER TABLE [dbo].[BillInfo] ENABLE TRIGGER [tg_DeleteBillInfo]
GO
/****** Object:  Trigger [dbo].[tg_UpdateBillInfo]    Script Date: 30/12/2022 11:58:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create trigger [dbo].[tg_UpdateBillInfo]
on [dbo].[BillInfo] for  insert , update
as
begin
	declare @BillId int 
	declare	@BeverageTableId int
	select @BillId = BillId from inserted
	select @BeverageTableId = BeverageTableId from Bill where BillId = @BillId and Status = 0

	update BeverageTable set status  = N'Có người' where BeverageTableId = @BeverageTableId
end
GO
ALTER TABLE [dbo].[BillInfo] ENABLE TRIGGER [tg_UpdateBillInfo]
GO
USE [master]
GO
ALTER DATABASE [QuanLyQuanCafe] SET  READ_WRITE 
GO
