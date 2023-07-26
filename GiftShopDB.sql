USE [master]
GO
/****** Object:  Database [SWP391_QN]    Script Date: 7/26/2023 11:09:28 PM ******/
CREATE DATABASE [SWP391_QN]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SWP391_QN', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.KOJER\MSSQL\DATA\SWP391_QN.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'SWP391_QN_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.KOJER\MSSQL\DATA\SWP391_QN_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [SWP391_QN] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SWP391_QN].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SWP391_QN] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SWP391_QN] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SWP391_QN] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SWP391_QN] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SWP391_QN] SET ARITHABORT OFF 
GO
ALTER DATABASE [SWP391_QN] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SWP391_QN] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SWP391_QN] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SWP391_QN] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SWP391_QN] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SWP391_QN] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SWP391_QN] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SWP391_QN] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SWP391_QN] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SWP391_QN] SET  ENABLE_BROKER 
GO
ALTER DATABASE [SWP391_QN] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SWP391_QN] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SWP391_QN] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SWP391_QN] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SWP391_QN] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SWP391_QN] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SWP391_QN] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SWP391_QN] SET RECOVERY FULL 
GO
ALTER DATABASE [SWP391_QN] SET  MULTI_USER 
GO
ALTER DATABASE [SWP391_QN] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SWP391_QN] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SWP391_QN] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SWP391_QN] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [SWP391_QN] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [SWP391_QN] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'SWP391_QN', N'ON'
GO
ALTER DATABASE [SWP391_QN] SET QUERY_STORE = OFF
GO
USE [SWP391_QN]
GO
/****** Object:  Table [dbo].[Best_Seller]    Script Date: 7/26/2023 11:09:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Best_Seller](
	[ProductID] [int] NOT NULL,
	[deleteFlag] [bit] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 7/26/2023 11:09:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](255) NOT NULL,
	[Status] [bit] NOT NULL,
	[Description] [text] NULL,
	[TagId] [int] NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Collections]    Script Date: 7/26/2023 11:09:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Collections](
	[CollectionID] [int] IDENTITY(1,1) NOT NULL,
	[CollectionName] [nvarchar](255) NOT NULL,
	[link] [varchar](max) NULL,
	[Status] [bit] NOT NULL,
	[Description] [text] NULL,
 CONSTRAINT [PK_Collections] PRIMARY KEY CLUSTERED 
(
	[CollectionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Image_Product]    Script Date: 7/26/2023 11:09:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Image_Product](
	[ProductID] [int] NULL,
	[image] [text] NULL,
	[deleteFlag] [bit] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[New_Arrival]    Script Date: 7/26/2023 11:09:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[New_Arrival](
	[ProductID] [int] NOT NULL,
	[deleteFlag] [bit] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 7/26/2023 11:09:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[OrderDetailsId] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
 CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED 
(
	[OrderDetailsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 7/26/2023 11:09:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[OrderID] [int] NOT NULL,
	[OrderFromUser] [int] NULL,
	[Customer_Name] [nvarchar](255) NULL,
	[Customer_Email] [varchar](255) NULL,
	[Customer_Phone] [varchar](20) NULL,
	[Customer_Address] [nvarchar](255) NULL,
	[EmloyeeID] [int] NULL,
	[DateTime] [datetime] NOT NULL,
	[PaymentMethod] [int] NOT NULL,
	[TotalOrder] [money] NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payments]    Script Date: 7/26/2023 11:09:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payments](
	[PaymentId] [int] NOT NULL,
	[Method] [nvarchar](255) NOT NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_Payments] PRIMARY KEY CLUSTERED 
(
	[PaymentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product_Collection]    Script Date: 7/26/2023 11:09:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_Collection](
	[ProductId] [int] NOT NULL,
	[CollectionId] [int] NOT NULL,
	[DeleteFlag] [bit] NOT NULL,
 CONSTRAINT [Product_Collection_PKs] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC,
	[CollectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product_Tag]    Script Date: 7/26/2023 11:09:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_Tag](
	[ProductId] [int] NOT NULL,
	[TagId] [int] NOT NULL,
	[DeleteFlag] [bit] NOT NULL,
 CONSTRAINT [Product_Tag_PKs] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC,
	[TagId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 7/26/2023 11:09:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ProductId] [int] NOT NULL,
	[Name] [nvarchar](255) NULL,
	[Price] [money] NULL,
	[Quantity] [int] NULL,
	[Status] [bit] NULL,
	[ClassType] [int] NULL,
	[ClassValue] [nvarchar](50) NULL,
	[createDate] [date] NULL,
	[ParentId] [int] NULL,
	[CategoryId] [int] NULL,
	[IsParent] [bit] NULL,
	[Description] [nvarchar](max) NULL,
	[DeleteFlag] [bit] NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 7/26/2023 11:09:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[RoleID] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](255) NOT NULL,
	[DeleteFlag] [bit] NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StatusOrder]    Script Date: 7/26/2023 11:09:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StatusOrder](
	[StatusOrderID] [int] NOT NULL,
	[StatusValue] [nvarchar](255) NULL,
 CONSTRAINT [PK_StatusOrder] PRIMARY KEY CLUSTERED 
(
	[StatusOrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tags]    Script Date: 7/26/2023 11:09:28 PM ******/
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
/****** Object:  Table [dbo].[Test]    Script Date: 7/26/2023 11:09:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Test](
	[image] [image] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Type]    Script Date: 7/26/2023 11:09:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Type](
	[TypeID] [int] NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_Type] PRIMARY KEY CLUSTERED 
(
	[TypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 7/26/2023 11:09:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[FullName] [nvarchar](255) NULL,
	[Email] [varchar](255) NULL,
	[EmailID] [text] NULL,
	[Password] [varchar](255) NULL,
	[Phone] [varchar](10) NULL,
	[DOB] [date] NULL,
	[Address] [nvarchar](max) NULL,
	[Avatar] [text] NULL,
	[RoleID] [int] NULL,
	[ManagerID] [int] NULL,
	[Status] [bit] NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[Best_Seller] ([ProductID], [deleteFlag]) VALUES (16, 0)
INSERT [dbo].[Best_Seller] ([ProductID], [deleteFlag]) VALUES (20, 0)
INSERT [dbo].[Best_Seller] ([ProductID], [deleteFlag]) VALUES (22, 0)
INSERT [dbo].[Best_Seller] ([ProductID], [deleteFlag]) VALUES (13, 0)
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Status], [Description], [TagId]) VALUES (1, N'Gối ôm', 1, NULL, 1)
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Status], [Description], [TagId]) VALUES (2, N'Tựa lưng, gối cổ', 1, NULL, 1)
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Status], [Description], [TagId]) VALUES (3, N'Gấu bông', 1, NULL, 1)
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Status], [Description], [TagId]) VALUES (4, N'Máy phun sương', 1, NULL, 2)
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Status], [Description], [TagId]) VALUES (5, N'Đồ chơi', 1, NULL, 2)
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Status], [Description], [TagId]) VALUES (6, N'Đèn ngủ', 1, NULL, 2)
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Status], [Description], [TagId]) VALUES (7, N'Mùi hương', 1, NULL, 2)
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Status], [Description], [TagId]) VALUES (8, N'Nghe nhạc', 1, NULL, 2)
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Status], [Description], [TagId]) VALUES (12, N'Bình nước', 1, NULL, 3)
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Status], [Description], [TagId]) VALUES (14, N'Cốc', 1, NULL, 3)
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Status], [Description], [TagId]) VALUES (16, N'Phòng ngủ', 1, NULL, 3)
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Status], [Description], [TagId]) VALUES (17, N'Quạt', 1, NULL, 3)
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Status], [Description], [TagId]) VALUES (18, N'Đồng hồ', 1, NULL, 3)
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Status], [Description], [TagId]) VALUES (19, N'Đồ gia dụng', 1, NULL, 3)
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Status], [Description], [TagId]) VALUES (21, N'Móc khóa', 1, NULL, 5)
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Status], [Description], [TagId]) VALUES (22, N'Vòng tay', 1, NULL, 5)
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Status], [Description], [TagId]) VALUES (27, N'Bình nước', 1, NULL, 7)
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Status], [Description], [TagId]) VALUES (28, N'Cốc', 1, NULL, 7)
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Status], [Description], [TagId]) VALUES (29, N'Quạt', 1, NULL, 7)
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Status], [Description], [TagId]) VALUES (32, N'Đồ Decor', 1, NULL, 7)
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Collections] ON 

INSERT [dbo].[Collections] ([CollectionID], [CollectionName], [link], [Status], [Description]) VALUES (1, N'FOR HIM', N'https://bizweb.dktcdn.net/thumb/compact/100/450/808/collections/10-37c9706f-413a-4123-b0d6-07905851440b.png?v=1648550713910', 1, NULL)
INSERT [dbo].[Collections] ([CollectionID], [CollectionName], [link], [Status], [Description]) VALUES (3, N'FOR HER', N'https://bizweb.dktcdn.net/thumb/compact/100/450/808/collections/9-228daf39-c660-4d00-9cc0-b9bbdb8f0e1d.png?v=1648550696500', 1, NULL)
INSERT [dbo].[Collections] ([CollectionID], [CollectionName], [link], [Status], [Description]) VALUES (4, N'Cuộc sống thường ngày', N'https://bizweb.dktcdn.net/thumb/compact/100/450/808/collections/cuo-c-so-ng-thu-o-ng-nga-y.png?v=1648549034233', 1, NULL)
INSERT [dbo].[Collections] ([CollectionID], [CollectionName], [link], [Status], [Description]) VALUES (5, N'Thư Giãn', N'https://bizweb.dktcdn.net/thumb/compact/100/450/808/collections/thu-gia-n.png?v=1648549150917', 1, NULL)
INSERT [dbo].[Collections] ([CollectionID], [CollectionName], [link], [Status], [Description]) VALUES (7, N'Trang trí nhà cửa', N'https://bizweb.dktcdn.net/thumb/compact/100/450/808/collections/trang-tri-nha-cu-a.png?v=1648549061927', 1, NULL)
INSERT [dbo].[Collections] ([CollectionID], [CollectionName], [link], [Status], [Description]) VALUES (8, N'Tiện ích', N'https://bizweb.dktcdn.net/thumb/compact/100/450/808/collections/tie-n-i-ch.png?v=1648548924423', 1, NULL)
SET IDENTITY_INSERT [dbo].[Collections] OFF
GO
INSERT [dbo].[Image_Product] ([ProductID], [image], [deleteFlag]) VALUES (2, N'https://bizweb.dktcdn.net/100/450/808/products/fb531c92-3159-4ba3-930e-a3842950875b.jpg?v=1688371134647', 0)
INSERT [dbo].[Image_Product] ([ProductID], [image], [deleteFlag]) VALUES (2, N'https://bizweb.dktcdn.net/100/450/808/products/e3f34c41-b25f-4996-bb4e-d8410b968ebc.jpg?v=1688371134647', 0)
INSERT [dbo].[Image_Product] ([ProductID], [image], [deleteFlag]) VALUES (2, N'https://bizweb.dktcdn.net/100/450/808/products/aadc8e51-68db-4ace-80cc-b6daf960d3a1.jpg?v=1688371134720', 0)
INSERT [dbo].[Image_Product] ([ProductID], [image], [deleteFlag]) VALUES (3, N'https://bizweb.dktcdn.net/100/450/808/products/d6ed4ec7-1923-466c-9bdb-a8716204fdbc.jpg?v=1686793653500', 0)
INSERT [dbo].[Image_Product] ([ProductID], [image], [deleteFlag]) VALUES (3, N'https://bizweb.dktcdn.net/100/450/808/products/2ef24317-1ad1-48a7-a7a4-4367dae6b09e.jpg?v=1686793653500', 0)
INSERT [dbo].[Image_Product] ([ProductID], [image], [deleteFlag]) VALUES (3, N'https://bizweb.dktcdn.net/100/450/808/products/f8bd7b69-58db-40ee-aa8f-0c76862f1dcc.jpg?v=1686794892940', 0)
INSERT [dbo].[Image_Product] ([ProductID], [image], [deleteFlag]) VALUES (3, N'https://bizweb.dktcdn.net/100/450/808/products/56ee7474-48bf-4d80-ac6d-f204a9760e87.jpg?v=1686793718270', 0)
INSERT [dbo].[Image_Product] ([ProductID], [image], [deleteFlag]) VALUES (4, N'https://bizweb.dktcdn.net/100/450/808/products/91f193b5-0453-4d30-9970-5a80dbb2d25e.jpg?v=1686793718270', 0)
INSERT [dbo].[Image_Product] ([ProductID], [image], [deleteFlag]) VALUES (4, N'https://bizweb.dktcdn.net/100/450/808/products/5bd2f178-db39-4256-84fd-5cc9346d661a.jpg?v=1686793399537', 0)
INSERT [dbo].[Image_Product] ([ProductID], [image], [deleteFlag]) VALUES (5, N'https://bizweb.dktcdn.net/100/450/808/products/81b7a107-b8d3-4ae8-b64a-610eb9d6a5d2.jpg?v=1686645159660', 0)
INSERT [dbo].[Image_Product] ([ProductID], [image], [deleteFlag]) VALUES (5, N'https://bizweb.dktcdn.net/100/450/808/products/66f91192-02de-4ce6-98d0-9eedf542463e.jpg?v=1686645159660', 0)
INSERT [dbo].[Image_Product] ([ProductID], [image], [deleteFlag]) VALUES (6, N'https://bizweb.dktcdn.net/100/450/808/products/23a5e89a-a7ed-402d-9ad4-8aeae6bc4d9f.jpg?v=1688174454607', 0)
INSERT [dbo].[Image_Product] ([ProductID], [image], [deleteFlag]) VALUES (7, N'https://bizweb.dktcdn.net/100/450/808/products/bd61000b-d0b6-4a43-9987-499276453213.jpg?v=1688174723403', 0)
INSERT [dbo].[Image_Product] ([ProductID], [image], [deleteFlag]) VALUES (8, N'https://bizweb.dktcdn.net/100/450/808/products/7c77d0eb-87a1-457b-b024-ef90213fa382.jpg?v=1686394374197', 0)
INSERT [dbo].[Image_Product] ([ProductID], [image], [deleteFlag]) VALUES (9, N'https://bizweb.dktcdn.net/100/450/808/products/57f60c56-a354-45d2-bba8-9ad1b93b91cf.jpg?v=1686394365177', 0)
INSERT [dbo].[Image_Product] ([ProductID], [image], [deleteFlag]) VALUES (10, N'https://bizweb.dktcdn.net/thumb/1024x1024/100/450/808/products/5fd34a09-7c56-4d38-8823-c0a9a2151190.jpg?v=1686394365177', 0)
INSERT [dbo].[Image_Product] ([ProductID], [image], [deleteFlag]) VALUES (11, N'https://bizweb.dktcdn.net/100/450/808/products/1dc87c77-abf0-491c-acb5-664f548ed52f.jpg?v=1686394365177', 0)
INSERT [dbo].[Image_Product] ([ProductID], [image], [deleteFlag]) VALUES (12, N'https://bizweb.dktcdn.net/100/450/808/products/f240c7f6-f627-4302-9726-c10f8b16eacb.jpg?v=1686394365177', 0)
INSERT [dbo].[Image_Product] ([ProductID], [image], [deleteFlag]) VALUES (13, N'https://bizweb.dktcdn.net/100/450/808/products/b59b5dec-803d-44f9-afce-f348590ff169.jpg?v=1680665073050', 0)
INSERT [dbo].[Image_Product] ([ProductID], [image], [deleteFlag]) VALUES (14, N'https://bizweb.dktcdn.net/100/450/808/products/e98f24de-65e2-4134-9b99-e05182ec916a.jpg?v=1680665073050', 0)
INSERT [dbo].[Image_Product] ([ProductID], [image], [deleteFlag]) VALUES (15, N'https://bizweb.dktcdn.net/100/450/808/products/c818e665-7153-4ff9-989b-a24ad5c80fa9.jpg?v=1684150788570', 0)
INSERT [dbo].[Image_Product] ([ProductID], [image], [deleteFlag]) VALUES (15, N'https://bizweb.dktcdn.net/100/450/808/products/bb56a4d3-ea81-4904-b648-4d0fac31a2f3.jpg?v=1684150683160', 0)
INSERT [dbo].[Image_Product] ([ProductID], [image], [deleteFlag]) VALUES (16, N'https://bizweb.dktcdn.net/100/450/808/products/7ecbae9d-7b88-4f40-98d1-d7c3177b552c.jpg?v=1678933460633', 0)
INSERT [dbo].[Image_Product] ([ProductID], [image], [deleteFlag]) VALUES (16, N'https://bizweb.dktcdn.net/100/450/808/products/f052ee27-1a31-4248-a140-dda778f12dc9.jpg?v=1678933460590', 0)
INSERT [dbo].[Image_Product] ([ProductID], [image], [deleteFlag]) VALUES (17, N'https://bizweb.dktcdn.net/100/450/808/products/3cd6aa10-2663-4ba8-856a-f49aa5704804.jpg?v=1678933460633', 0)
INSERT [dbo].[Image_Product] ([ProductID], [image], [deleteFlag]) VALUES (18, N'https://bizweb.dktcdn.net/100/450/808/products/1f066db6-3e08-49d5-bbcc-e099398ec595.jpg?v=1678933460633', 0)
INSERT [dbo].[Image_Product] ([ProductID], [image], [deleteFlag]) VALUES (21, N'https://bizweb.dktcdn.net/100/450/808/products/968f021d-7ec3-4477-9483-8a70d96cdd90.jpg?v=1684898264877', 0)
INSERT [dbo].[Image_Product] ([ProductID], [image], [deleteFlag]) VALUES (22, N'https://bizweb.dktcdn.net/100/450/808/products/b1b9f23f-351b-4aea-a007-c677d04a4e1a.jpg?v=1677144357610', 0)
INSERT [dbo].[Image_Product] ([ProductID], [image], [deleteFlag]) VALUES (22, N'https://bizweb.dktcdn.net/100/450/808/products/50399e24-7cdb-488d-9072-b89633578c37.jpg?v=1677232077637', 0)
INSERT [dbo].[Image_Product] ([ProductID], [image], [deleteFlag]) VALUES (23, N'https://bizweb.dktcdn.net/100/450/808/products/0a0a8f48-9873-4848-b609-afac9339cce5.jpg?v=1677232077637', 0)
INSERT [dbo].[Image_Product] ([ProductID], [image], [deleteFlag]) VALUES (24, N'https://bizweb.dktcdn.net/100/450/808/products/5558ca7f-1462-43c1-9e85-2a58ae2d0e0b.jpg?v=1677232077637', 0)
INSERT [dbo].[Image_Product] ([ProductID], [image], [deleteFlag]) VALUES (1, N'/images/b9dace81-2a93-4e01-9994-5094d74ed1b8.png', 0)
INSERT [dbo].[Image_Product] ([ProductID], [image], [deleteFlag]) VALUES (20, N'https://bizweb.dktcdn.net/100/450/808/products/9eecf7c3-f5ae-466f-a109-bd2c5d15fdb6.jpg?v=1684898264830', 0)
INSERT [dbo].[Image_Product] ([ProductID], [image], [deleteFlag]) VALUES (19, N'https://bizweb.dktcdn.net/100/450/808/products/cfa1d6c5-ffa0-4fcd-8349-51e83792254e.jpg?v=1684150755303', 0)
GO
INSERT [dbo].[New_Arrival] ([ProductID], [deleteFlag]) VALUES (4, 0)
INSERT [dbo].[New_Arrival] ([ProductID], [deleteFlag]) VALUES (2, 0)
INSERT [dbo].[New_Arrival] ([ProductID], [deleteFlag]) VALUES (8, 0)
INSERT [dbo].[New_Arrival] ([ProductID], [deleteFlag]) VALUES (15, 0)
GO
SET IDENTITY_INSERT [dbo].[OrderDetails] ON 

INSERT [dbo].[OrderDetails] ([OrderDetailsId], [OrderId], [ProductId], [Quantity]) VALUES (6, 16, 9, 1)
INSERT [dbo].[OrderDetails] ([OrderDetailsId], [OrderId], [ProductId], [Quantity]) VALUES (7, 16, 11, 1)
INSERT [dbo].[OrderDetails] ([OrderDetailsId], [OrderId], [ProductId], [Quantity]) VALUES (8, 16, 12, 1)
INSERT [dbo].[OrderDetails] ([OrderDetailsId], [OrderId], [ProductId], [Quantity]) VALUES (9, 17, 16, 1)
INSERT [dbo].[OrderDetails] ([OrderDetailsId], [OrderId], [ProductId], [Quantity]) VALUES (10, 17, 18, 1)
INSERT [dbo].[OrderDetails] ([OrderDetailsId], [OrderId], [ProductId], [Quantity]) VALUES (11, 17, 4, 4)
INSERT [dbo].[OrderDetails] ([OrderDetailsId], [OrderId], [ProductId], [Quantity]) VALUES (12, 18, 15, 5)
INSERT [dbo].[OrderDetails] ([OrderDetailsId], [OrderId], [ProductId], [Quantity]) VALUES (13, 19, 20, 2)
INSERT [dbo].[OrderDetails] ([OrderDetailsId], [OrderId], [ProductId], [Quantity]) VALUES (14, 19, 15, 1)
INSERT [dbo].[OrderDetails] ([OrderDetailsId], [OrderId], [ProductId], [Quantity]) VALUES (15, 19, 4, 1)
INSERT [dbo].[OrderDetails] ([OrderDetailsId], [OrderId], [ProductId], [Quantity]) VALUES (16, 20, 13, 1)
INSERT [dbo].[OrderDetails] ([OrderDetailsId], [OrderId], [ProductId], [Quantity]) VALUES (17, 20, 24, 2)
INSERT [dbo].[OrderDetails] ([OrderDetailsId], [OrderId], [ProductId], [Quantity]) VALUES (18, 21, 9, 1)
INSERT [dbo].[OrderDetails] ([OrderDetailsId], [OrderId], [ProductId], [Quantity]) VALUES (19, 21, 15, 5)
INSERT [dbo].[OrderDetails] ([OrderDetailsId], [OrderId], [ProductId], [Quantity]) VALUES (20, 22, 16, 1)
INSERT [dbo].[OrderDetails] ([OrderDetailsId], [OrderId], [ProductId], [Quantity]) VALUES (21, 22, 18, 1)
INSERT [dbo].[OrderDetails] ([OrderDetailsId], [OrderId], [ProductId], [Quantity]) VALUES (22, 22, 11, 1)
INSERT [dbo].[OrderDetails] ([OrderDetailsId], [OrderId], [ProductId], [Quantity]) VALUES (23, 22, 13, 1)
INSERT [dbo].[OrderDetails] ([OrderDetailsId], [OrderId], [ProductId], [Quantity]) VALUES (24, 23, 20, 1)
INSERT [dbo].[OrderDetails] ([OrderDetailsId], [OrderId], [ProductId], [Quantity]) VALUES (25, 23, 18, 3)
INSERT [dbo].[OrderDetails] ([OrderDetailsId], [OrderId], [ProductId], [Quantity]) VALUES (26, 24, 5, 1)
INSERT [dbo].[OrderDetails] ([OrderDetailsId], [OrderId], [ProductId], [Quantity]) VALUES (27, 24, 7, 1)
INSERT [dbo].[OrderDetails] ([OrderDetailsId], [OrderId], [ProductId], [Quantity]) VALUES (28, 24, 9, 1)
INSERT [dbo].[OrderDetails] ([OrderDetailsId], [OrderId], [ProductId], [Quantity]) VALUES (29, 25, 3, 2)
INSERT [dbo].[OrderDetails] ([OrderDetailsId], [OrderId], [ProductId], [Quantity]) VALUES (30, 25, 13, 1)
INSERT [dbo].[OrderDetails] ([OrderDetailsId], [OrderId], [ProductId], [Quantity]) VALUES (31, 25, 4, 1)
INSERT [dbo].[OrderDetails] ([OrderDetailsId], [OrderId], [ProductId], [Quantity]) VALUES (32, 25, 5, 1)
INSERT [dbo].[OrderDetails] ([OrderDetailsId], [OrderId], [ProductId], [Quantity]) VALUES (33, 26, 19, 1)
INSERT [dbo].[OrderDetails] ([OrderDetailsId], [OrderId], [ProductId], [Quantity]) VALUES (34, 26, 20, 1)
INSERT [dbo].[OrderDetails] ([OrderDetailsId], [OrderId], [ProductId], [Quantity]) VALUES (35, 27, 17, 1)
INSERT [dbo].[OrderDetails] ([OrderDetailsId], [OrderId], [ProductId], [Quantity]) VALUES (36, 27, 15, 1)
INSERT [dbo].[OrderDetails] ([OrderDetailsId], [OrderId], [ProductId], [Quantity]) VALUES (37, 27, 4, 1)
INSERT [dbo].[OrderDetails] ([OrderDetailsId], [OrderId], [ProductId], [Quantity]) VALUES (38, 28, 19, 3)
INSERT [dbo].[OrderDetails] ([OrderDetailsId], [OrderId], [ProductId], [Quantity]) VALUES (39, 29, 16, 1)
INSERT [dbo].[OrderDetails] ([OrderDetailsId], [OrderId], [ProductId], [Quantity]) VALUES (40, 29, 17, 1)
INSERT [dbo].[OrderDetails] ([OrderDetailsId], [OrderId], [ProductId], [Quantity]) VALUES (41, 29, 9, 1)
INSERT [dbo].[OrderDetails] ([OrderDetailsId], [OrderId], [ProductId], [Quantity]) VALUES (42, 29, 12, 1)
INSERT [dbo].[OrderDetails] ([OrderDetailsId], [OrderId], [ProductId], [Quantity]) VALUES (43, 30, 15, 1)
INSERT [dbo].[OrderDetails] ([OrderDetailsId], [OrderId], [ProductId], [Quantity]) VALUES (44, 30, 12, 1)
INSERT [dbo].[OrderDetails] ([OrderDetailsId], [OrderId], [ProductId], [Quantity]) VALUES (45, 31, 22, 1)
INSERT [dbo].[OrderDetails] ([OrderDetailsId], [OrderId], [ProductId], [Quantity]) VALUES (46, 32, 17, 2)
INSERT [dbo].[OrderDetails] ([OrderDetailsId], [OrderId], [ProductId], [Quantity]) VALUES (47, 32, 18, 1)
INSERT [dbo].[OrderDetails] ([OrderDetailsId], [OrderId], [ProductId], [Quantity]) VALUES (48, 32, 15, 1)
INSERT [dbo].[OrderDetails] ([OrderDetailsId], [OrderId], [ProductId], [Quantity]) VALUES (49, 33, 13, 1)
INSERT [dbo].[OrderDetails] ([OrderDetailsId], [OrderId], [ProductId], [Quantity]) VALUES (50, 33, 24, 1)
INSERT [dbo].[OrderDetails] ([OrderDetailsId], [OrderId], [ProductId], [Quantity]) VALUES (51, 34, 4, 2)
INSERT [dbo].[OrderDetails] ([OrderDetailsId], [OrderId], [ProductId], [Quantity]) VALUES (52, 35, 15, 2)
INSERT [dbo].[OrderDetails] ([OrderDetailsId], [OrderId], [ProductId], [Quantity]) VALUES (53, 36, 24, 2)
INSERT [dbo].[OrderDetails] ([OrderDetailsId], [OrderId], [ProductId], [Quantity]) VALUES (54, 36, 19, 1)
INSERT [dbo].[OrderDetails] ([OrderDetailsId], [OrderId], [ProductId], [Quantity]) VALUES (55, 37, 3, 2)
INSERT [dbo].[OrderDetails] ([OrderDetailsId], [OrderId], [ProductId], [Quantity]) VALUES (56, 38, 16, 1)
INSERT [dbo].[OrderDetails] ([OrderDetailsId], [OrderId], [ProductId], [Quantity]) VALUES (57, 38, 18, 1)
SET IDENTITY_INSERT [dbo].[OrderDetails] OFF
GO
INSERT [dbo].[Orders] ([OrderID], [OrderFromUser], [Customer_Name], [Customer_Email], [Customer_Phone], [Customer_Address], [EmloyeeID], [DateTime], [PaymentMethod], [TotalOrder], [Status]) VALUES (16, 24, N'Hồ Trọng Hiếu', N'hieuenglishabc@gmail.com', N'0378630778', N'Long An', NULL, CAST(N'2023-01-26T00:00:00.000' AS DateTime), 2, 290.0000, 3)
INSERT [dbo].[Orders] ([OrderID], [OrderFromUser], [Customer_Name], [Customer_Email], [Customer_Phone], [Customer_Address], [EmloyeeID], [DateTime], [PaymentMethod], [TotalOrder], [Status]) VALUES (17, 24, N'Hồ Trọng Hiếu', N'hieuenglishabc@gmail.com', N'0986563856', N'Vũng Tàu', NULL, CAST(N'2023-01-26T00:00:00.000' AS DateTime), 2, 1660.0000, 3)
INSERT [dbo].[Orders] ([OrderID], [OrderFromUser], [Customer_Name], [Customer_Email], [Customer_Phone], [Customer_Address], [EmloyeeID], [DateTime], [PaymentMethod], [TotalOrder], [Status]) VALUES (18, 24, N'Hồ Trọng Hiếu', N'hieuenglishabc@gmail.com', N'0123459876', N'Tp HCM', NULL, CAST(N'2023-05-26T00:00:00.000' AS DateTime), 1, 1970.0000, 3)
INSERT [dbo].[Orders] ([OrderID], [OrderFromUser], [Customer_Name], [Customer_Email], [Customer_Phone], [Customer_Address], [EmloyeeID], [DateTime], [PaymentMethod], [TotalOrder], [Status]) VALUES (19, 21, N'Ngô Trần Nhật Quân', N'quanntn0811@gmail.com', N'0986573825', N'Tp HCM', NULL, CAST(N'2023-06-26T00:00:00.000' AS DateTime), 2, 1770.0000, 4)
INSERT [dbo].[Orders] ([OrderID], [OrderFromUser], [Customer_Name], [Customer_Email], [Customer_Phone], [Customer_Address], [EmloyeeID], [DateTime], [PaymentMethod], [TotalOrder], [Status]) VALUES (20, 21, N'Ngô Trần Nhật Quân', N'quanntn0811@gmail.com', N'0986573825', N'Tp HCM', NULL, CAST(N'2023-04-26T00:00:00.000' AS DateTime), 2, 1150.0000, 5)
INSERT [dbo].[Orders] ([OrderID], [OrderFromUser], [Customer_Name], [Customer_Email], [Customer_Phone], [Customer_Address], [EmloyeeID], [DateTime], [PaymentMethod], [TotalOrder], [Status]) VALUES (21, 21, N'Ngô Trần Nhật Quân', N'quanntn0811@gmail.com', N'0986563856', N'Tp HCM', NULL, CAST(N'2023-04-26T00:00:00.000' AS DateTime), 2, 2060.0000, 5)
INSERT [dbo].[Orders] ([OrderID], [OrderFromUser], [Customer_Name], [Customer_Email], [Customer_Phone], [Customer_Address], [EmloyeeID], [DateTime], [PaymentMethod], [TotalOrder], [Status]) VALUES (22, 21, N'Ngô Trần Nhật Quân', N'quanntn0811@gmail.com', N'0986573825', N'Tp HCM', NULL, CAST(N'2023-02-26T00:00:00.000' AS DateTime), 1, 1220.0000, 5)
INSERT [dbo].[Orders] ([OrderID], [OrderFromUser], [Customer_Name], [Customer_Email], [Customer_Phone], [Customer_Address], [EmloyeeID], [DateTime], [PaymentMethod], [TotalOrder], [Status]) VALUES (23, 21, N'Ngô Trần Nhật Quân', N'quanntn0811@gmail.com', N'0986563856', N'Tp HCM', NULL, CAST(N'2023-06-26T00:00:00.000' AS DateTime), 1, 1080.0000, 5)
INSERT [dbo].[Orders] ([OrderID], [OrderFromUser], [Customer_Name], [Customer_Email], [Customer_Phone], [Customer_Address], [EmloyeeID], [DateTime], [PaymentMethod], [TotalOrder], [Status]) VALUES (24, 22, N'Nguyễn Bảo Quốc', N'quocnb2012@gmail.com', N'0123459876', N'Tp HCM', NULL, CAST(N'2023-01-26T00:00:00.000' AS DateTime), 2, 840.0000, 5)
INSERT [dbo].[Orders] ([OrderID], [OrderFromUser], [Customer_Name], [Customer_Email], [Customer_Phone], [Customer_Address], [EmloyeeID], [DateTime], [PaymentMethod], [TotalOrder], [Status]) VALUES (25, 22, N'Nguyễn Bảo Quốc', N'quocnb2012@gmail.com', N'0986573825', N'Tp HCM', NULL, CAST(N'2023-02-26T00:00:00.000' AS DateTime), 1, 2130.0000, 3)
INSERT [dbo].[Orders] ([OrderID], [OrderFromUser], [Customer_Name], [Customer_Email], [Customer_Phone], [Customer_Address], [EmloyeeID], [DateTime], [PaymentMethod], [TotalOrder], [Status]) VALUES (26, 22, N'Nguyễn Bảo Quốc', N'quocnb2012@gmail.com', N'0123459876', N'Tp HCM', NULL, CAST(N'2023-03-26T00:00:00.000' AS DateTime), 1, 930.0000, 3)
INSERT [dbo].[Orders] ([OrderID], [OrderFromUser], [Customer_Name], [Customer_Email], [Customer_Phone], [Customer_Address], [EmloyeeID], [DateTime], [PaymentMethod], [TotalOrder], [Status]) VALUES (27, 22, N'Nguyễn Bảo Quốc', N'quocnb2012@gmail.com', N'0123459876', N'Tp HCM', NULL, CAST(N'2023-04-26T00:00:00.000' AS DateTime), 1, 910.0000, 2)
INSERT [dbo].[Orders] ([OrderID], [OrderFromUser], [Customer_Name], [Customer_Email], [Customer_Phone], [Customer_Address], [EmloyeeID], [DateTime], [PaymentMethod], [TotalOrder], [Status]) VALUES (28, 22, N'Nguyễn Bảo Quốc', N'quocnb2012@gmail.com', N'0378630778', N'Long An', NULL, CAST(N'2023-05-26T00:00:00.000' AS DateTime), 1, 1190.0000, 3)
INSERT [dbo].[Orders] ([OrderID], [OrderFromUser], [Customer_Name], [Customer_Email], [Customer_Phone], [Customer_Address], [EmloyeeID], [DateTime], [PaymentMethod], [TotalOrder], [Status]) VALUES (29, 23, N'Bùi Huy Đạt', N'buihuydat207@gmail.com', N'0876323544', N'Vũng Tàu', NULL, CAST(N'2023-06-26T00:00:00.000' AS DateTime), 1, 560.0000, 4)
INSERT [dbo].[Orders] ([OrderID], [OrderFromUser], [Customer_Name], [Customer_Email], [Customer_Phone], [Customer_Address], [EmloyeeID], [DateTime], [PaymentMethod], [TotalOrder], [Status]) VALUES (30, 23, N'Bùi Huy Đạt', N'buihuydat207@gmail.com', N'0896748391', N'Vũng Tàu', NULL, CAST(N'2023-03-26T00:00:00.000' AS DateTime), 1, 500.0000, 3)
INSERT [dbo].[Orders] ([OrderID], [OrderFromUser], [Customer_Name], [Customer_Email], [Customer_Phone], [Customer_Address], [EmloyeeID], [DateTime], [PaymentMethod], [TotalOrder], [Status]) VALUES (31, 23, N'Bùi Huy Đạt', N'buihuydat207@gmail.com', N'0896748391', N'Tp HCM', NULL, CAST(N'2023-06-26T00:00:00.000' AS DateTime), 1, 210.0000, 2)
INSERT [dbo].[Orders] ([OrderID], [OrderFromUser], [Customer_Name], [Customer_Email], [Customer_Phone], [Customer_Address], [EmloyeeID], [DateTime], [PaymentMethod], [TotalOrder], [Status]) VALUES (32, 23, N'Bùi Huy Đạt', N'buihuydat207@gmail.com', N'0896748391', N'Vũng Tàu', NULL, CAST(N'2023-07-26T00:00:00.000' AS DateTime), 2, 950.0000, 3)
INSERT [dbo].[Orders] ([OrderID], [OrderFromUser], [Customer_Name], [Customer_Email], [Customer_Phone], [Customer_Address], [EmloyeeID], [DateTime], [PaymentMethod], [TotalOrder], [Status]) VALUES (33, 23, N'Bùi Huy Đạt', N'buihuydat207@gmail.com', N'0986573825', N'Vũng Tàu', NULL, CAST(N'2023-02-26T00:00:00.000' AS DateTime), 2, 960.0000, 3)
INSERT [dbo].[Orders] ([OrderID], [OrderFromUser], [Customer_Name], [Customer_Email], [Customer_Phone], [Customer_Address], [EmloyeeID], [DateTime], [PaymentMethod], [TotalOrder], [Status]) VALUES (34, 23, N'Bùi Huy Đạt', N'buihuydat207@gmail.com', N'0986563856', N'Vũng Tàu', NULL, CAST(N'2023-01-26T00:00:00.000' AS DateTime), 1, 660.0000, 3)
INSERT [dbo].[Orders] ([OrderID], [OrderFromUser], [Customer_Name], [Customer_Email], [Customer_Phone], [Customer_Address], [EmloyeeID], [DateTime], [PaymentMethod], [TotalOrder], [Status]) VALUES (35, 23, N'Bùi Huy Đạt', N'buihuydat207@gmail.com', N'0123459876', N'Vũng Tàu', NULL, CAST(N'2023-07-26T00:00:00.000' AS DateTime), 1, 800.0000, 3)
INSERT [dbo].[Orders] ([OrderID], [OrderFromUser], [Customer_Name], [Customer_Email], [Customer_Phone], [Customer_Address], [EmloyeeID], [DateTime], [PaymentMethod], [TotalOrder], [Status]) VALUES (36, 23, N'Bùi Huy Đạt', N'buihuydat207@gmail.com', N'0378630778', N'Vũng Tàu', NULL, CAST(N'2023-07-26T00:00:00.000' AS DateTime), 1, 790.0000, 2)
INSERT [dbo].[Orders] ([OrderID], [OrderFromUser], [Customer_Name], [Customer_Email], [Customer_Phone], [Customer_Address], [EmloyeeID], [DateTime], [PaymentMethod], [TotalOrder], [Status]) VALUES (37, 23, N'Bùi Huy Đạt', N'buihuydat207@gmail.com', N'0896748391', N'Vũng Tàu', NULL, CAST(N'2023-04-26T00:00:00.000' AS DateTime), 2, 580.0000, 3)
INSERT [dbo].[Orders] ([OrderID], [OrderFromUser], [Customer_Name], [Customer_Email], [Customer_Phone], [Customer_Address], [EmloyeeID], [DateTime], [PaymentMethod], [TotalOrder], [Status]) VALUES (38, 23, N'Bùi Huy Đạt', N'buihuydat207@gmail.com', N'0123459876', N'Vũng Tàu', NULL, CAST(N'2023-07-26T00:00:00.000' AS DateTime), 1, 380.0000, 3)
GO
INSERT [dbo].[Payments] ([PaymentId], [Method], [Status]) VALUES (1, N'Ship COD', 1)
INSERT [dbo].[Payments] ([PaymentId], [Method], [Status]) VALUES (2, N'Chuyển khoản', 1)
INSERT [dbo].[Payments] ([PaymentId], [Method], [Status]) VALUES (3, N'Paypal', 0)
GO
INSERT [dbo].[Product_Collection] ([ProductId], [CollectionId], [DeleteFlag]) VALUES (1, 1, 0)
INSERT [dbo].[Product_Collection] ([ProductId], [CollectionId], [DeleteFlag]) VALUES (3, 1, 0)
INSERT [dbo].[Product_Collection] ([ProductId], [CollectionId], [DeleteFlag]) VALUES (3, 5, 0)
INSERT [dbo].[Product_Collection] ([ProductId], [CollectionId], [DeleteFlag]) VALUES (4, 1, 0)
INSERT [dbo].[Product_Collection] ([ProductId], [CollectionId], [DeleteFlag]) VALUES (13, 1, 0)
INSERT [dbo].[Product_Collection] ([ProductId], [CollectionId], [DeleteFlag]) VALUES (13, 5, 0)
INSERT [dbo].[Product_Collection] ([ProductId], [CollectionId], [DeleteFlag]) VALUES (19, 5, 0)
INSERT [dbo].[Product_Collection] ([ProductId], [CollectionId], [DeleteFlag]) VALUES (20, 1, 0)
INSERT [dbo].[Product_Collection] ([ProductId], [CollectionId], [DeleteFlag]) VALUES (22, 1, 0)
GO
INSERT [dbo].[Products] ([ProductId], [Name], [Price], [Quantity], [Status], [ClassType], [ClassValue], [createDate], [ParentId], [CategoryId], [IsParent], [Description], [DeleteFlag]) VALUES (1, N'Check', 123.0000, 1, 0, NULL, NULL, NULL, NULL, 1, 1, N'', 1)
INSERT [dbo].[Products] ([ProductId], [Name], [Price], [Quantity], [Status], [ClassType], [ClassValue], [createDate], [ParentId], [CategoryId], [IsParent], [Description], [DeleteFlag]) VALUES (2, N'Gấu Lena Lotso', 220.0000, 0, 1, NULL, NULL, NULL, NULL, 3, 1, N'Đây là gấu bông có lông mềm mịn, được nhồi bông gòn cao cấp êm ái, rất thích hợp để làm quà tặng, trang trí sofa, phòng khách,...', 0)
INSERT [dbo].[Products] ([ProductId], [Name], [Price], [Quantity], [Status], [ClassType], [ClassValue], [createDate], [ParentId], [CategoryId], [IsParent], [Description], [DeleteFlag]) VALUES (3, N'Thỏ bông Cinna êm mềm 30cm', 280.0000, 57, 1, NULL, NULL, NULL, NULL, 3, 1, N'Mô tả thử', 0)
INSERT [dbo].[Products] ([ProductId], [Name], [Price], [Quantity], [Status], [ClassType], [ClassValue], [createDate], [ParentId], [CategoryId], [IsParent], [Description], [DeleteFlag]) VALUES (4, N'Cừu ong êm mềm Momi 45cm', 320.0000, 45, 1, NULL, NULL, NULL, NULL, 3, 1, N'Đây là gấu bông có lông mềm mịn, được nhồi bông gòn cao cấp êm ái, rất thích hợp để làm quà tặng, trang trí sofa, phòng khách,...', 0)
INSERT [dbo].[Products] ([ProductId], [Name], [Price], [Quantity], [Status], [ClassType], [ClassValue], [createDate], [ParentId], [CategoryId], [IsParent], [Description], [DeleteFlag]) VALUES (5, N'Mèo mun mắt liếc Kiki', 480.0000, 12, 1, 2, N'60cm', NULL, NULL, 1, 1, N'Mô tả thử', 0)
INSERT [dbo].[Products] ([ProductId], [Name], [Price], [Quantity], [Status], [ClassType], [ClassValue], [createDate], [ParentId], [CategoryId], [IsParent], [Description], [DeleteFlag]) VALUES (6, N'Mèo mun mắt liếc Kiki', 350.0000, 8, 1, 2, N'40cm', NULL, 5, 1, 0, NULL, 0)
INSERT [dbo].[Products] ([ProductId], [Name], [Price], [Quantity], [Status], [ClassType], [ClassValue], [createDate], [ParentId], [CategoryId], [IsParent], [Description], [DeleteFlag]) VALUES (7, N'Mèo mun mắt liếc Kiki', 250.0000, 6, 1, 2, N'35cm', NULL, 5, 1, 0, NULL, 0)
INSERT [dbo].[Products] ([ProductId], [Name], [Price], [Quantity], [Status], [ClassType], [ClassValue], [createDate], [ParentId], [CategoryId], [IsParent], [Description], [DeleteFlag]) VALUES (8, N'Móc khoá cung hoàng đạo Hiha', 90.0000, 0, 1, 1, N'Bạch Dương', NULL, NULL, 21, 1, N'Đây là móc khóa cung hoàng đạo hina, chất liệu được làm từ nỉ mềm mịn cao cấp. Có công dụng làm móc khóa xe , treo balo, túi xách,...', 0)
INSERT [dbo].[Products] ([ProductId], [Name], [Price], [Quantity], [Status], [ClassType], [ClassValue], [createDate], [ParentId], [CategoryId], [IsParent], [Description], [DeleteFlag]) VALUES (9, N'Móc khoá cung hoàng đạo Hiha', 90.0000, 34, 1, 1, N'Kim ngưu', NULL, 8, 21, 0, NULL, 0)
INSERT [dbo].[Products] ([ProductId], [Name], [Price], [Quantity], [Status], [ClassType], [ClassValue], [createDate], [ParentId], [CategoryId], [IsParent], [Description], [DeleteFlag]) VALUES (10, N'Móc khoá cung hoàng đạo Hiha', 90.0000, 0, 1, 1, N'Song tử', NULL, 8, 21, 0, NULL, 0)
INSERT [dbo].[Products] ([ProductId], [Name], [Price], [Quantity], [Status], [ClassType], [ClassValue], [createDate], [ParentId], [CategoryId], [IsParent], [Description], [DeleteFlag]) VALUES (11, N'Móc khoá cung hoàng đạo Hiha', 90.0000, 42, 1, 1, N'Cự giải', NULL, 8, 21, 0, NULL, 0)
INSERT [dbo].[Products] ([ProductId], [Name], [Price], [Quantity], [Status], [ClassType], [ClassValue], [createDate], [ParentId], [CategoryId], [IsParent], [Description], [DeleteFlag]) VALUES (12, N'Móc khoá cung hoàng đạo Hiha', 90.0000, 13, 1, 1, N'Bọ cạp', NULL, 8, 21, 0, NULL, 0)
INSERT [dbo].[Products] ([ProductId], [Name], [Price], [Quantity], [Status], [ClassType], [ClassValue], [createDate], [ParentId], [CategoryId], [IsParent], [Description], [DeleteFlag]) VALUES (13, N'Sưởi ấm Minty Cat kiêm đèn ngủ và sạc dự phòng', 750.0000, 10, 1, 3, N'Hồng', NULL, NULL, 16, 1, N'Một ngày trời lạnh có bé mèo Minty ấm áp ở cạnh sưởi ấm thì còn gì hạnh phúc hơn. Đặc biệt bé mèo còn có thể làm đèn ngủ giúp bạn ngủ ngon hơn mỗi tối nữa đó.', 0)
INSERT [dbo].[Products] ([ProductId], [Name], [Price], [Quantity], [Status], [ClassType], [ClassValue], [createDate], [ParentId], [CategoryId], [IsParent], [Description], [DeleteFlag]) VALUES (14, N'Sưởi ấm Minty Cat kiêm đèn ngủ và sạc dự phòng', 750.0000, 8, 1, 3, N'Trắng', NULL, NULL, 16, 0, NULL, 0)
INSERT [dbo].[Products] ([ProductId], [Name], [Price], [Quantity], [Status], [ClassType], [ClassValue], [createDate], [ParentId], [CategoryId], [IsParent], [Description], [DeleteFlag]) VALUES (15, N'Bé cáo cam bông mềm Capi', 390.0000, 23, 1, NULL, NULL, NULL, NULL, 3, 1, N'Bé cáo dễ thương có lông xù siêu mềm mịn, êm ái. Thường được làm ôm tựa, quà tặng,...', 0)
INSERT [dbo].[Products] ([ProductId], [Name], [Price], [Quantity], [Status], [ClassType], [ClassValue], [createDate], [ParentId], [CategoryId], [IsParent], [Description], [DeleteFlag]) VALUES (16, N'Cốc sứ cao cấp Pomi Cup', 180.0000, 19, 1, 2, N'Bánh Mì', NULL, NULL, 14, 1, N'Những chiếc cốc bánh xinh xắn, ngọt ngào tiếp thêm nhiều vitamin vui vẻ, năng động cho cả ngày dài. Được thiết kế chất liệu sứ chịu nhiệt cao thích hợp với mọi đồ uống', 0)
INSERT [dbo].[Products] ([ProductId], [Name], [Price], [Quantity], [Status], [ClassType], [ClassValue], [createDate], [ParentId], [CategoryId], [IsParent], [Description], [DeleteFlag]) VALUES (17, N'Cốc sứ cao cấp Pomi Cup', 180.0000, 8, 1, 2, N'Phô mai', NULL, 16, 14, 0, NULL, 0)
INSERT [dbo].[Products] ([ProductId], [Name], [Price], [Quantity], [Status], [ClassType], [ClassValue], [createDate], [ParentId], [CategoryId], [IsParent], [Description], [DeleteFlag]) VALUES (18, N'Cốc sứ cao cấp Pomi Cup', 180.0000, 11, 1, 2, N'Donut', NULL, 16, 14, 0, NULL, 0)
INSERT [dbo].[Products] ([ProductId], [Name], [Price], [Quantity], [Status], [ClassType], [ClassValue], [createDate], [ParentId], [CategoryId], [IsParent], [Description], [DeleteFlag]) VALUES (19, N'Bé lừa bông Winnie', 390.0000, 14, 1, NULL, NULL, NULL, NULL, 3, 1, N'Gấu bông có lông xù siêu mềm mịn, êm ái. Thích hợp để làm gấu ôm, quà tặng, trang trí phòng,...', 0)
INSERT [dbo].[Products] ([ProductId], [Name], [Price], [Quantity], [Status], [ClassType], [ClassValue], [createDate], [ParentId], [CategoryId], [IsParent], [Description], [DeleteFlag]) VALUES (20, N'Quạt tích điện cao cấp Sora Fan', 520.0000, 2, 1, 3, N'Hồng', NULL, NULL, 29, 1, N'Đây là quạt tích điện để bàn văn phòng, làm việc, có thể gấp gọn mang đi bất kỳ đâu', 0)
INSERT [dbo].[Products] ([ProductId], [Name], [Price], [Quantity], [Status], [ClassType], [ClassValue], [createDate], [ParentId], [CategoryId], [IsParent], [Description], [DeleteFlag]) VALUES (21, N'Quạt tích điện cao cấp Sora Fan', 520.0000, 0, 1, 3, N'Be', NULL, 20, 29, 0, NULL, 0)
INSERT [dbo].[Products] ([ProductId], [Name], [Price], [Quantity], [Status], [ClassType], [ClassValue], [createDate], [ParentId], [CategoryId], [IsParent], [Description], [DeleteFlag]) VALUES (22, N'Cốc cao cấp Lily Cup kèm nắp và thìa', 190.0000, 5, 1, 2, N'Trái tim hoa', NULL, NULL, 14, 1, N'Cốc xinh lung linh như một vườn hoa thơm ngát. Có chất liệu được làm từ gốm sứ cao cấp chịu nhiệt cao. An toàn thân thiện với sức khỏe', 0)
INSERT [dbo].[Products] ([ProductId], [Name], [Price], [Quantity], [Status], [ClassType], [ClassValue], [createDate], [ParentId], [CategoryId], [IsParent], [Description], [DeleteFlag]) VALUES (23, N'Cốc cao cấp Lily Cup kèm nắp và thìa', 190.0000, 0, 1, 2, N'Hoa tuylip tím', NULL, 22, 14, 0, NULL, 0)
INSERT [dbo].[Products] ([ProductId], [Name], [Price], [Quantity], [Status], [ClassType], [ClassValue], [createDate], [ParentId], [CategoryId], [IsParent], [Description], [DeleteFlag]) VALUES (24, N'Cốc cao cấp Lily Cup kèm nắp và thìa', 190.0000, 2, 1, 2, N'Hoa tuylip hồng', NULL, 22, 14, 0, NULL, 0)
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([RoleID], [RoleName], [DeleteFlag]) VALUES (1, N'Admin', 0)
INSERT [dbo].[Role] ([RoleID], [RoleName], [DeleteFlag]) VALUES (2, N'Customer', 0)
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
INSERT [dbo].[StatusOrder] ([StatusOrderID], [StatusValue]) VALUES (1, N'Chờ xác nhận')
INSERT [dbo].[StatusOrder] ([StatusOrderID], [StatusValue]) VALUES (2, N'Đang vận chuyển')
INSERT [dbo].[StatusOrder] ([StatusOrderID], [StatusValue]) VALUES (3, N'Hoàn thành')
INSERT [dbo].[StatusOrder] ([StatusOrderID], [StatusValue]) VALUES (4, N'Vận chuyển thất bại')
INSERT [dbo].[StatusOrder] ([StatusOrderID], [StatusValue]) VALUES (5, N'Bị Hủy')
INSERT [dbo].[StatusOrder] ([StatusOrderID], [StatusValue]) VALUES (6, N'Từ chối giao hàng')
GO
SET IDENTITY_INSERT [dbo].[Tags] ON 

INSERT [dbo].[Tags] ([TagId], [TagName], [Status], [Description]) VALUES (1, N'Mềm mại', 1, NULL)
INSERT [dbo].[Tags] ([TagId], [TagName], [Status], [Description]) VALUES (2, N'Thư giãn', 1, NULL)
INSERT [dbo].[Tags] ([TagId], [TagName], [Status], [Description]) VALUES (3, N'Cuộc sống thường ngày', 1, NULL)
INSERT [dbo].[Tags] ([TagId], [TagName], [Status], [Description]) VALUES (5, N'Trang trí nhà cửa', 1, NULL)
INSERT [dbo].[Tags] ([TagId], [TagName], [Status], [Description]) VALUES (7, N'Nhỏ xinh', 1, NULL)
SET IDENTITY_INSERT [dbo].[Tags] OFF
GO
INSERT [dbo].[Type] ([TypeID], [Name]) VALUES (1, N'Loại')
INSERT [dbo].[Type] ([TypeID], [Name]) VALUES (2, N'Kích thước')
INSERT [dbo].[Type] ([TypeID], [Name]) VALUES (3, N'Màu sắc')
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([UserID], [FullName], [Email], [EmailID], [Password], [Phone], [DOB], [Address], [Avatar], [RoleID], [ManagerID], [Status], [Description]) VALUES (1, N'Nguyễn Ánh Linh', N'admin@gmail.com', NULL, N'53e6086284353cb73d4979f08537d950', N'0987654321', CAST(N'1999-12-02' AS Date), N'Hà Ðông, Hà Nội', NULL, 1, NULL, 1, NULL)
INSERT [dbo].[User] ([UserID], [FullName], [Email], [EmailID], [Password], [Phone], [DOB], [Address], [Avatar], [RoleID], [ManagerID], [Status], [Description]) VALUES (19, N'asdfdfs', N'satff2@gmail.com', NULL, N'53e6086284353cb73d4979f08537d950', N'1231233333', CAST(N'2023-06-28' AS Date), N'Hà nội', NULL, 2, NULL, 1, NULL)
INSERT [dbo].[User] ([UserID], [FullName], [Email], [EmailID], [Password], [Phone], [DOB], [Address], [Avatar], [RoleID], [ManagerID], [Status], [Description]) VALUES (21, N'Ngô Trần Nhật Quân', N'quanntn0811@gmail.com', NULL, N'210b48b542659fb951a80a15c5997513', N'0986563856', CAST(N'2002-11-08' AS Date), N'Tp HCM', NULL, 2, NULL, 1, NULL)
INSERT [dbo].[User] ([UserID], [FullName], [Email], [EmailID], [Password], [Phone], [DOB], [Address], [Avatar], [RoleID], [ManagerID], [Status], [Description]) VALUES (22, N'Nguyễn Bảo Quốc', N'quocnb2012@gmail.com', NULL, N'210b48b542659fb951a80a15c5997513', N'0986573825', CAST(N'2002-12-20' AS Date), N'Tp HCM', NULL, 2, NULL, 1, NULL)
INSERT [dbo].[User] ([UserID], [FullName], [Email], [EmailID], [Password], [Phone], [DOB], [Address], [Avatar], [RoleID], [ManagerID], [Status], [Description]) VALUES (23, N'Bùi Huy Đạt', N'buihuydat207@gmail.com', NULL, N'210b48b542659fb951a80a15c5997513', N'0876323544', CAST(N'2002-07-20' AS Date), N'Vũng Tàu', NULL, 2, NULL, 1, NULL)
INSERT [dbo].[User] ([UserID], [FullName], [Email], [EmailID], [Password], [Phone], [DOB], [Address], [Avatar], [RoleID], [ManagerID], [Status], [Description]) VALUES (24, N'Hồ Trọng Hiếu', N'hieuenglishabc@gmail.com', NULL, N'210b48b542659fb951a80a15c5997513', N'0986473825', CAST(N'2002-08-25' AS Date), N'Long An', NULL, 2, NULL, 1, NULL)
SET IDENTITY_INSERT [dbo].[User] OFF
GO
ALTER TABLE [dbo].[Best_Seller]  WITH CHECK ADD  CONSTRAINT [FK_Best_seller_Products] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ProductId])
GO
ALTER TABLE [dbo].[Best_Seller] CHECK CONSTRAINT [FK_Best_seller_Products]
GO
ALTER TABLE [dbo].[Categories]  WITH CHECK ADD  CONSTRAINT [FK_Categories_Tags] FOREIGN KEY([TagId])
REFERENCES [dbo].[Tags] ([TagId])
GO
ALTER TABLE [dbo].[Categories] CHECK CONSTRAINT [FK_Categories_Tags]
GO
ALTER TABLE [dbo].[Image_Product]  WITH CHECK ADD  CONSTRAINT [FK_Image_Product_Products] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ProductId])
GO
ALTER TABLE [dbo].[Image_Product] CHECK CONSTRAINT [FK_Image_Product_Products]
GO
ALTER TABLE [dbo].[New_Arrival]  WITH CHECK ADD  CONSTRAINT [FK_New_Arrival_Products] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ProductId])
GO
ALTER TABLE [dbo].[New_Arrival] CHECK CONSTRAINT [FK_New_Arrival_Products]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Orders] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([OrderID])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Orders]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Products] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([ProductId])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Products]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Orders] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Orders] ([OrderID])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Orders]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Orders1] FOREIGN KEY([Status])
REFERENCES [dbo].[StatusOrder] ([StatusOrderID])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Orders1]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Payments] FOREIGN KEY([PaymentMethod])
REFERENCES [dbo].[Payments] ([PaymentId])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Payments]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_StatusOrder] FOREIGN KEY([Status])
REFERENCES [dbo].[StatusOrder] ([StatusOrderID])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_StatusOrder]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_User] FOREIGN KEY([EmloyeeID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_User]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_User1] FOREIGN KEY([OrderFromUser])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_User1]
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
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Products1] FOREIGN KEY([ClassType])
REFERENCES [dbo].[Type] ([TypeID])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Products1]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Role] FOREIGN KEY([RoleID])
REFERENCES [dbo].[Role] ([RoleID])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Role]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_User] FOREIGN KEY([ManagerID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_User]
GO
USE [master]
GO
ALTER DATABASE [SWP391_QN] SET  READ_WRITE 
GO
