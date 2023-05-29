USE [master]
GO
/****** Object:  Database [GiftShopDB]    Script Date: 5/29/2023 3:55:58 PM ******/
CREATE DATABASE [GiftShopDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SWP391_QN', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\SWP391_QN.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'SWP391_QN_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\SWP391_QN_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [GiftShopDB] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [GiftShopDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [GiftShopDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [GiftShopDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [GiftShopDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [GiftShopDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [GiftShopDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [GiftShopDB] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [GiftShopDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [GiftShopDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [GiftShopDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [GiftShopDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [GiftShopDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [GiftShopDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [GiftShopDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [GiftShopDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [GiftShopDB] SET  ENABLE_BROKER 
GO
ALTER DATABASE [GiftShopDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [GiftShopDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [GiftShopDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [GiftShopDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [GiftShopDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [GiftShopDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [GiftShopDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [GiftShopDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [GiftShopDB] SET  MULTI_USER 
GO
ALTER DATABASE [GiftShopDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [GiftShopDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [GiftShopDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [GiftShopDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [GiftShopDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [GiftShopDB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [GiftShopDB] SET QUERY_STORE = ON
GO
ALTER DATABASE [GiftShopDB] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [GiftShopDB]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 5/29/2023 3:55:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](255) NOT NULL,
	[Status] [bit] NOT NULL,
	[Description] [text] NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Collections]    Script Date: 5/29/2023 3:55:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Collections](
	[CollectionID] [int] IDENTITY(1,1) NOT NULL,
	[CollectionName] [nvarchar](255) NOT NULL,
	[Status] [bit] NOT NULL,
	[Descreption] [text] NULL,
 CONSTRAINT [PK_Collections] PRIMARY KEY CLUSTERED 
(
	[CollectionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 5/29/2023 3:55:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[CustomerId] [varchar](10) NOT NULL,
	[FullName] [nvarchar](255) NOT NULL,
	[Phone] [varchar](10) NULL,
	[DOB] [date] NULL,
	[Address] [text] NULL,
	[Status] [bit] NOT NULL,
	[Description] [text] NULL,
 CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED 
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 5/29/2023 3:55:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[EmployeeId] [varchar](10) NOT NULL,
	[FullName] [nvarchar](255) NOT NULL,
	[DOB] [date] NULL,
	[Phone] [varchar](10) NOT NULL,
	[Email] [varchar](150) NOT NULL,
	[Password] [nvarchar](255) NOT NULL,
	[Address] [text] NULL,
	[Status] [bit] NOT NULL,
	[ManagerId] [varchar](10) NULL,
	[Description] [text] NULL,
 CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED 
(
	[EmployeeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 5/29/2023 3:55:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[OrderDetailsId] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NOT NULL,
	[ProductId] [varchar](10) NOT NULL,
	[Quantity] [int] NOT NULL,
 CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED 
(
	[OrderDetailsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 5/29/2023 3:55:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[OrderId] [int] IDENTITY(1,1) NOT NULL,
	[CustomerId] [varchar](10) NOT NULL,
	[EmloyeeId] [varchar](10) NOT NULL,
	[DateTime] [datetime] NOT NULL,
	[PaymentMethod] [int] NOT NULL,
	[Status] [tinyint] NOT NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payments]    Script Date: 5/29/2023 3:55:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payments](
	[PaymentId] [int] IDENTITY(1,1) NOT NULL,
	[Method] [nvarchar](255) NOT NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_Payments] PRIMARY KEY CLUSTERED 
(
	[PaymentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product_Collection]    Script Date: 5/29/2023 3:55:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_Collection](
	[ProductId] [varchar](10) NOT NULL,
	[CollectionId] [int] NOT NULL,
	[DeleteFlag] [bit] NOT NULL,
 CONSTRAINT [Product_Collection_PKs] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC,
	[CollectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product_Tag]    Script Date: 5/29/2023 3:55:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_Tag](
	[ProductId] [varchar](10) NOT NULL,
	[TagId] [int] NOT NULL,
	[DeleteFlag] [bit] NOT NULL,
 CONSTRAINT [Product_Tag_PKs] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC,
	[TagId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 5/29/2023 3:55:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ProductId] [varchar](10) NOT NULL,
	[Name] [nvarchar](255) NULL,
	[Price] [money] NULL,
	[Quantity] [int] NULL,
	[Status] [bit] NULL,
	[ClassName] [nvarchar](255) NULL,
	[ClassValue] [nvarchar](50) NULL,
	[ParentId] [varchar](10) NULL,
	[CategoryId] [int] NULL,
	[IsParent] [bit] NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tags]    Script Date: 5/29/2023 3:55:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tags](
	[TagId] [int] IDENTITY(1,1) NOT NULL,
	[TagName] [nvarchar](255) NOT NULL,
	[Status] [bit] NOT NULL,
	[Description] [text] NULL,
 CONSTRAINT [PK_Tags] PRIMARY KEY CLUSTERED 
(
	[TagId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Status], [Description]) VALUES (1, N'Móc khóa', 1, NULL)
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Status], [Description]) VALUES (2, N'Đồng hồ treo tường', 1, NULL)
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Status], [Description]) VALUES (3, N'Gấu bông', 1, NULL)
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Status], [Description]) VALUES (4, N'Mô hình', 1, NULL)
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Status], [Description]) VALUES (5, N'Tranh', 1, NULL)
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Status], [Description]) VALUES (6, N'Đèn ngủ', 1, NULL)
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Status], [Description]) VALUES (7, N'Đèn bàn', 1, NULL)
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Status], [Description]) VALUES (8, N'Tranh', 1, NULL)
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Status], [Description]) VALUES (9, N'Cốc', 1, NULL)
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Collections] ON 

INSERT [dbo].[Collections] ([CollectionID], [CollectionName], [Status], [Descreption]) VALUES (1, N'Quà tặng bố', 1, NULL)
INSERT [dbo].[Collections] ([CollectionID], [CollectionName], [Status], [Descreption]) VALUES (3, N'Quà tặng mẹ', 1, NULL)
INSERT [dbo].[Collections] ([CollectionID], [CollectionName], [Status], [Descreption]) VALUES (4, N'Quà tặng người yêu', 1, NULL)
INSERT [dbo].[Collections] ([CollectionID], [CollectionName], [Status], [Descreption]) VALUES (5, N'Set du lịch', 1, NULL)
INSERT [dbo].[Collections] ([CollectionID], [CollectionName], [Status], [Descreption]) VALUES (7, N'Quà tặng ông bà', 1, NULL)
SET IDENTITY_INSERT [dbo].[Collections] OFF
GO
INSERT [dbo].[Customers] ([CustomerId], [FullName], [Phone], [DOB], [Address], [Status], [Description]) VALUES (N'C001', N'Nguyễn Ánh Linh', N'0987654321', CAST(N'1999-12-02' AS Date), N'Hà Ðông, Hà N?i', 1, NULL)
INSERT [dbo].[Customers] ([CustomerId], [FullName], [Phone], [DOB], [Address], [Status], [Description]) VALUES (N'C002', N'Đào Phúc Lộc', N'0987283476', CAST(N'1992-02-15' AS Date), NULL, 1, NULL)
INSERT [dbo].[Customers] ([CustomerId], [FullName], [Phone], [DOB], [Address], [Status], [Description]) VALUES (N'C003', N'Quyền Hải Long', N'0332837477', CAST(N'2002-06-23' AS Date), N'Lao Cai', 1, NULL)
INSERT [dbo].[Customers] ([CustomerId], [FullName], [Phone], [DOB], [Address], [Status], [Description]) VALUES (N'C004', N'Nguyễn Quang Huy', N'0982678876', CAST(N'2001-05-04' AS Date), N'Khu?t Duy Ti?n, Hà N?i', 1, NULL)
INSERT [dbo].[Customers] ([CustomerId], [FullName], [Phone], [DOB], [Address], [Status], [Description]) VALUES (N'C005', N'Trần Trí Dũng', NULL, NULL, NULL, 0, N'Khách hàng không có thông tin')
INSERT [dbo].[Customers] ([CustomerId], [FullName], [Phone], [DOB], [Address], [Status], [Description]) VALUES (N'C007', N'Vũ Duy Nam', N'0983123122', CAST(N'2001-10-06' AS Date), NULL, 1, N'C?n xin d?a ch? khách hàng')
GO
INSERT [dbo].[Employees] ([EmployeeId], [FullName], [DOB], [Phone], [Email], [Password], [Address], [Status], [ManagerId], [Description]) VALUES (N'E001', N'Nguyễn Huyền Anh', CAST(N'1996-12-05' AS Date), N'0987654354', N'AnhNH@gmail.com', N'123', N'Hàng Bu?m, Hà N?i', 1, NULL, NULL)
INSERT [dbo].[Employees] ([EmployeeId], [FullName], [DOB], [Phone], [Email], [Password], [Address], [Status], [ManagerId], [Description]) VALUES (N'E002', N'Nguyễn Quang Huy', CAST(N'2001-05-26' AS Date), N'0982767565', N'HuyNQ@gmail.com', N'123', NULL, 1, N'E001', NULL)
INSERT [dbo].[Employees] ([EmployeeId], [FullName], [DOB], [Phone], [Email], [Password], [Address], [Status], [ManagerId], [Description]) VALUES (N'E004', N'Vũ Bảo An', CAST(N'2000-11-15' AS Date), N'0334253587', N'AnVB@gmail.com', N'123', N'C?u gi?y, Hà N?i', 1, NULL, NULL)
INSERT [dbo].[Employees] ([EmployeeId], [FullName], [DOB], [Phone], [Email], [Password], [Address], [Status], [ManagerId], [Description]) VALUES (N'E005', N'Nguyễn Khánh Thành', CAST(N'1992-02-25' AS Date), N'0343235878', N'ThanhNK@gmail.com', N'123', N'Hoàn Ki?m, Hà N?i', 0, N'E001', NULL)
GO
SET IDENTITY_INSERT [dbo].[OrderDetails] ON 

INSERT [dbo].[OrderDetails] ([OrderDetailsId], [OrderId], [ProductId], [Quantity]) VALUES (1, 2, N'P001', 1)
INSERT [dbo].[OrderDetails] ([OrderDetailsId], [OrderId], [ProductId], [Quantity]) VALUES (2, 2, N'P003', 1)
INSERT [dbo].[OrderDetails] ([OrderDetailsId], [OrderId], [ProductId], [Quantity]) VALUES (3, 4, N'P006', 1)
INSERT [dbo].[OrderDetails] ([OrderDetailsId], [OrderId], [ProductId], [Quantity]) VALUES (4, 5, N'P007', 1)
INSERT [dbo].[OrderDetails] ([OrderDetailsId], [OrderId], [ProductId], [Quantity]) VALUES (5, 9, N'P008', 1)
INSERT [dbo].[OrderDetails] ([OrderDetailsId], [OrderId], [ProductId], [Quantity]) VALUES (6, 9, N'P004', 2)
INSERT [dbo].[OrderDetails] ([OrderDetailsId], [OrderId], [ProductId], [Quantity]) VALUES (7, 10, N'P001', 1)
INSERT [dbo].[OrderDetails] ([OrderDetailsId], [OrderId], [ProductId], [Quantity]) VALUES (8, 11, N'P005', 1)
SET IDENTITY_INSERT [dbo].[OrderDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([OrderId], [CustomerId], [EmloyeeId], [DateTime], [PaymentMethod], [Status]) VALUES (2, N'C001', N'E001', CAST(N'2023-05-20T11:35:05.000' AS DateTime), 1, 3)
INSERT [dbo].[Orders] ([OrderId], [CustomerId], [EmloyeeId], [DateTime], [PaymentMethod], [Status]) VALUES (4, N'C004', N'E002', CAST(N'2023-04-29T08:48:50.000' AS DateTime), 3, 2)
INSERT [dbo].[Orders] ([OrderId], [CustomerId], [EmloyeeId], [DateTime], [PaymentMethod], [Status]) VALUES (5, N'C003', N'E002', CAST(N'2032-05-21T15:21:36.000' AS DateTime), 1, 3)
INSERT [dbo].[Orders] ([OrderId], [CustomerId], [EmloyeeId], [DateTime], [PaymentMethod], [Status]) VALUES (9, N'C004', N'E002', CAST(N'2023-05-17T16:05:34.000' AS DateTime), 1, 3)
INSERT [dbo].[Orders] ([OrderId], [CustomerId], [EmloyeeId], [DateTime], [PaymentMethod], [Status]) VALUES (10, N'C002', N'E004', CAST(N'2023-05-17T09:13:56.000' AS DateTime), 1, 3)
INSERT [dbo].[Orders] ([OrderId], [CustomerId], [EmloyeeId], [DateTime], [PaymentMethod], [Status]) VALUES (11, N'C004', N'E002', CAST(N'2023-05-20T00:00:00.000' AS DateTime), 3, 1)
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[Payments] ON 

INSERT [dbo].[Payments] ([PaymentId], [Method], [Status]) VALUES (1, N'Cash', 1)
INSERT [dbo].[Payments] ([PaymentId], [Method], [Status]) VALUES (3, N'VNPay', 1)
INSERT [dbo].[Payments] ([PaymentId], [Method], [Status]) VALUES (4, N'MoMo', 0)
SET IDENTITY_INSERT [dbo].[Payments] OFF
GO
INSERT [dbo].[Product_Collection] ([ProductId], [CollectionId], [DeleteFlag]) VALUES (N'P001', 1, 0)
INSERT [dbo].[Product_Collection] ([ProductId], [CollectionId], [DeleteFlag]) VALUES (N'P001', 3, 0)
INSERT [dbo].[Product_Collection] ([ProductId], [CollectionId], [DeleteFlag]) VALUES (N'P002', 1, 0)
INSERT [dbo].[Product_Collection] ([ProductId], [CollectionId], [DeleteFlag]) VALUES (N'P002', 7, 0)
GO
INSERT [dbo].[Product_Tag] ([ProductId], [TagId], [DeleteFlag]) VALUES (N'P001', 1, 0)
INSERT [dbo].[Product_Tag] ([ProductId], [TagId], [DeleteFlag]) VALUES (N'P001', 2, 0)
INSERT [dbo].[Product_Tag] ([ProductId], [TagId], [DeleteFlag]) VALUES (N'P003', 4, 0)
INSERT [dbo].[Product_Tag] ([ProductId], [TagId], [DeleteFlag]) VALUES (N'P004', 1, 0)
GO
INSERT [dbo].[Products] ([ProductId], [Name], [Price], [Quantity], [Status], [ClassName], [ClassValue], [ParentId], [CategoryId], [IsParent]) VALUES (N'P001', N'Tranh thêu chữ Lộc', 120.0000, 12, 1, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Products] ([ProductId], [Name], [Price], [Quantity], [Status], [ClassName], [ClassValue], [ParentId], [CategoryId], [IsParent]) VALUES (N'P002', N'Cốc sứ trái tim', 100.0000, 32, 1, N'Màu sắc', N'Trắng', NULL, NULL, 1)
INSERT [dbo].[Products] ([ProductId], [Name], [Price], [Quantity], [Status], [ClassName], [ClassValue], [ParentId], [CategoryId], [IsParent]) VALUES (N'P003', N'Cốc sứ trái tim', 110.0000, 14, 1, N'Màu sắc', N'Đen', N'P002', NULL, 0)
INSERT [dbo].[Products] ([ProductId], [Name], [Price], [Quantity], [Status], [ClassName], [ClassValue], [ParentId], [CategoryId], [IsParent]) VALUES (N'P004', N'Móc khóa Pubg', 75.0000, 51, 1, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Products] ([ProductId], [Name], [Price], [Quantity], [Status], [ClassName], [ClassValue], [ParentId], [CategoryId], [IsParent]) VALUES (N'P005', N'Mô hình xe Ducati', 500.0000, 3, 1, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Products] ([ProductId], [Name], [Price], [Quantity], [Status], [ClassName], [ClassValue], [ParentId], [CategoryId], [IsParent]) VALUES (N'P006', N'Gấu Teddy', 150.0000, 8, 1, N'Kích Thước', N'1m', NULL, NULL, 1)
INSERT [dbo].[Products] ([ProductId], [Name], [Price], [Quantity], [Status], [ClassName], [ClassValue], [ParentId], [CategoryId], [IsParent]) VALUES (N'P007', N'Gấu Teddy', 250.0000, 6, 1, N'Kích Thước', N'1m8', N'P007', NULL, 0)
INSERT [dbo].[Products] ([ProductId], [Name], [Price], [Quantity], [Status], [ClassName], [ClassValue], [ParentId], [CategoryId], [IsParent]) VALUES (N'P008', N'Mô hình Toyota Camty', 350.0000, 14, 1, N'Màu sắc', N'Đen', NULL, NULL, 1)
INSERT [dbo].[Products] ([ProductId], [Name], [Price], [Quantity], [Status], [ClassName], [ClassValue], [ParentId], [CategoryId], [IsParent]) VALUES (N'P009', N'Mô hình Toyota Cảmy', 370.0000, 9, 1, N'Màu sắc', N'Trắng', N'P008', NULL, 1)
GO
SET IDENTITY_INSERT [dbo].[Tags] ON 

INSERT [dbo].[Tags] ([TagId], [TagName], [Status], [Description]) VALUES (1, N'Gấu nhồi bông', 1, NULL)
INSERT [dbo].[Tags] ([TagId], [TagName], [Status], [Description]) VALUES (2, N'Đồ Decor', 1, NULL)
INSERT [dbo].[Tags] ([TagId], [TagName], [Status], [Description]) VALUES (3, N'Giá rẻ', 1, NULL)
INSERT [dbo].[Tags] ([TagId], [TagName], [Status], [Description]) VALUES (4, N'Đồ phòng ngủ', 1, NULL)
SET IDENTITY_INSERT [dbo].[Tags] OFF
GO
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD  CONSTRAINT [FK_Employees_Employees] FOREIGN KEY([ManagerId])
REFERENCES [dbo].[Employees] ([EmployeeId])
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [FK_Employees_Employees]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Orders] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([OrderId])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Orders]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Products] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([ProductId])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Products]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Customers] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customers] ([CustomerId])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Customers]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Employees] FOREIGN KEY([EmloyeeId])
REFERENCES [dbo].[Employees] ([EmployeeId])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Employees]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Payments] FOREIGN KEY([PaymentMethod])
REFERENCES [dbo].[Payments] ([PaymentId])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Payments]
GO
ALTER TABLE [dbo].[Product_Collection]  WITH CHECK ADD  CONSTRAINT [FK_Product_Collection_Collections] FOREIGN KEY([CollectionId])
REFERENCES [dbo].[Collections] ([CollectionID])
GO
ALTER TABLE [dbo].[Product_Collection] CHECK CONSTRAINT [FK_Product_Collection_Collections]
GO
ALTER TABLE [dbo].[Product_Collection]  WITH CHECK ADD  CONSTRAINT [FK_Product_Collection_Products] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([ProductId])
GO
ALTER TABLE [dbo].[Product_Collection] CHECK CONSTRAINT [FK_Product_Collection_Products]
GO
ALTER TABLE [dbo].[Product_Tag]  WITH CHECK ADD  CONSTRAINT [FK_Product_Tag_Products] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([ProductId])
GO
ALTER TABLE [dbo].[Product_Tag] CHECK CONSTRAINT [FK_Product_Tag_Products]
GO
ALTER TABLE [dbo].[Product_Tag]  WITH CHECK ADD  CONSTRAINT [FK_Product_Tag_Tags1] FOREIGN KEY([TagId])
REFERENCES [dbo].[Tags] ([TagId])
GO
ALTER TABLE [dbo].[Product_Tag] CHECK CONSTRAINT [FK_Product_Tag_Tags1]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([CategoryID])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Products] FOREIGN KEY([ParentId])
REFERENCES [dbo].[Products] ([ProductId])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Products]
GO
USE [master]
GO
ALTER DATABASE [GiftShopDB] SET  READ_WRITE 
GO
