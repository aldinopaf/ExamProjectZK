USE [master]
GO
/****** Object:  Database [belajarhibernatedb]    Script Date: 01/06/2019 11:05:13 ******/
CREATE DATABASE [belajarhibernatedb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'belajarhibernatedb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\belajarhibernatedb.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'belajarhibernatedb_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\belajarhibernatedb_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [belajarhibernatedb] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [belajarhibernatedb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [belajarhibernatedb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [belajarhibernatedb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [belajarhibernatedb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [belajarhibernatedb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [belajarhibernatedb] SET ARITHABORT OFF 
GO
ALTER DATABASE [belajarhibernatedb] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [belajarhibernatedb] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [belajarhibernatedb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [belajarhibernatedb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [belajarhibernatedb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [belajarhibernatedb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [belajarhibernatedb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [belajarhibernatedb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [belajarhibernatedb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [belajarhibernatedb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [belajarhibernatedb] SET  DISABLE_BROKER 
GO
ALTER DATABASE [belajarhibernatedb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [belajarhibernatedb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [belajarhibernatedb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [belajarhibernatedb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [belajarhibernatedb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [belajarhibernatedb] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [belajarhibernatedb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [belajarhibernatedb] SET RECOVERY FULL 
GO
ALTER DATABASE [belajarhibernatedb] SET  MULTI_USER 
GO
ALTER DATABASE [belajarhibernatedb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [belajarhibernatedb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [belajarhibernatedb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [belajarhibernatedb] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'belajarhibernatedb', N'ON'
GO
USE [belajarhibernatedb]
GO
/****** Object:  Table [dbo].[mst_city]    Script Date: 01/06/2019 11:05:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mst_city](
	[city_code] [varchar](255) NOT NULL,
	[created_date] [datetime] NULL,
	[created_user] [varchar](255) NULL,
	[deleted] [bit] NULL,
	[updated_date] [datetime] NULL,
	[updated_user] [varchar](255) NULL,
	[city_name] [varchar](255) NULL,
	[province_code] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[city_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[mst_customer]    Script Date: 01/06/2019 11:05:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mst_customer](
	[customer_code] [varchar](255) NOT NULL,
	[created_date] [datetime] NULL,
	[created_user] [varchar](255) NULL,
	[deleted] [bit] NULL,
	[updated_date] [datetime] NULL,
	[updated_user] [varchar](255) NULL,
	[address] [varchar](255) NULL,
	[city_code] [varchar](255) NULL,
	[customer_name] [varchar](255) NULL,
	[date_of_birth] [datetime] NULL,
	[gender] [int] NULL,
	[postal_code] [varchar](255) NULL,
	[province_code] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[customer_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[mst_department]    Script Date: 01/06/2019 11:05:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mst_department](
	[id] [int] NOT NULL,
	[created_date] [datetime] NULL,
	[created_user] [varchar](255) NULL,
	[deleted] [bit] NULL,
	[updated_date] [datetime] NULL,
	[updated_user] [varchar](255) NULL,
	[dept_name] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[mst_employee]    Script Date: 01/06/2019 11:05:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mst_employee](
	[id] [int] NOT NULL,
	[created_date] [datetime] NULL,
	[created_user] [varchar](255) NULL,
	[deleted] [bit] NULL,
	[updated_date] [datetime] NULL,
	[updated_user] [varchar](255) NULL,
	[address] [varchar](255) NULL,
	[birth_place] [varchar](255) NULL,
	[city_code] [varchar](255) NULL,
	[date_of_birth] [datetime] NULL,
	[employee_name] [varchar](255) NULL,
	[gender] [int] NULL,
	[postal_code] [varchar](255) NULL,
	[province_code] [varchar](255) NULL,
	[department_id] [int] NULL,
	[username] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[mst_product]    Script Date: 01/06/2019 11:05:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mst_product](
	[product_code] [varchar](255) NOT NULL,
	[created_date] [datetime] NULL,
	[created_user] [varchar](255) NULL,
	[deleted] [bit] NULL,
	[updated_date] [datetime] NULL,
	[updated_user] [varchar](255) NULL,
	[category] [int] NULL,
	[product_name] [varchar](255) NULL,
	[quantity] [numeric](19, 0) NULL,
	[unit_price] [numeric](19, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[product_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[mst_province]    Script Date: 01/06/2019 11:05:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mst_province](
	[province_code] [varchar](255) NOT NULL,
	[created_date] [datetime] NULL,
	[created_user] [varchar](255) NULL,
	[deleted] [bit] NULL,
	[updated_date] [datetime] NULL,
	[updated_user] [varchar](255) NULL,
	[province_name] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[province_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[mst_user]    Script Date: 01/06/2019 11:05:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mst_user](
	[id] [varchar](255) NOT NULL,
	[created_date] [datetime] NULL,
	[created_user] [varchar](255) NULL,
	[deleted] [bit] NULL,
	[updated_date] [datetime] NULL,
	[updated_user] [varchar](255) NULL,
	[password] [varchar](255) NULL,
	[username] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tr_order_detail]    Script Date: 01/06/2019 11:05:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tr_order_detail](
	[detail_id] [varchar](255) NOT NULL,
	[created_date] [datetime] NULL,
	[created_user] [varchar](255) NULL,
	[deleted] [bit] NULL,
	[updated_date] [datetime] NULL,
	[updated_user] [varchar](255) NULL,
	[discount] [int] NULL,
	[no_nota] [varchar](255) NULL,
	[product_code] [varchar](255) NULL,
	[qty] [numeric](19, 0) NULL,
	[subtotal] [numeric](19, 2) NULL,
	[unit_price] [numeric](19, 2) NULL,
 CONSTRAINT [PK__tr_order__38E9A224A4A3BBE8] PRIMARY KEY CLUSTERED 
(
	[detail_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tr_order_header]    Script Date: 01/06/2019 11:05:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tr_order_header](
	[no_nota] [varchar](255) NOT NULL,
	[created_date] [datetime] NULL,
	[created_user] [varchar](255) NULL,
	[deleted] [bit] NULL,
	[updated_date] [datetime] NULL,
	[updated_user] [varchar](255) NULL,
	[customer_code] [varchar](255) NULL,
	[employee_code] [int] NULL,
	[global_discount] [int] NULL,
	[total_price] [numeric](19, 2) NULL,
	[transaction_date] [datetime] NULL,
 CONSTRAINT [PK__tr_order__737F5CA6F5F3571F] PRIMARY KEY CLUSTERED 
(
	[no_nota] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[mst_city] ([city_code], [created_date], [created_user], [deleted], [updated_date], [updated_user], [city_name], [province_code]) VALUES (N'CTY_001', CAST(0x0000AA5B0181DC5A AS DateTime), N'ADMIN', 0, NULL, NULL, N'JAKARTA TIMUR', N'PROV_01')
INSERT [dbo].[mst_city] ([city_code], [created_date], [created_user], [deleted], [updated_date], [updated_user], [city_name], [province_code]) VALUES (N'CTY_002', CAST(0x0000AA5B0181DC5A AS DateTime), N'ADMIN', 0, NULL, NULL, N'JAKARTA PUSAT', N'PROV_01')
INSERT [dbo].[mst_city] ([city_code], [created_date], [created_user], [deleted], [updated_date], [updated_user], [city_name], [province_code]) VALUES (N'CTY_003', CAST(0x0000AA5B0181DC5A AS DateTime), N'ADMIN', 0, NULL, NULL, N'JAKARTA SELATAN', N'PROV_01')
INSERT [dbo].[mst_city] ([city_code], [created_date], [created_user], [deleted], [updated_date], [updated_user], [city_name], [province_code]) VALUES (N'CTY_004', CAST(0x0000AA5B0181DC5A AS DateTime), N'ADMIN', 0, NULL, NULL, N'JAKARTA BARAT', N'PROV_01')
INSERT [dbo].[mst_city] ([city_code], [created_date], [created_user], [deleted], [updated_date], [updated_user], [city_name], [province_code]) VALUES (N'CTY_005', CAST(0x0000AA5B0181DC5A AS DateTime), N'ADMIN', 0, NULL, NULL, N'JAKARTA SELATAN', N'PROV_01')
INSERT [dbo].[mst_city] ([city_code], [created_date], [created_user], [deleted], [updated_date], [updated_user], [city_name], [province_code]) VALUES (N'CTY_006', CAST(0x0000AA5B0181DC5A AS DateTime), N'ADMIN', 0, NULL, NULL, N'DEPOK', N'PROV_02')
INSERT [dbo].[mst_city] ([city_code], [created_date], [created_user], [deleted], [updated_date], [updated_user], [city_name], [province_code]) VALUES (N'CTY_007', CAST(0x0000AA5B0181DC5A AS DateTime), N'ADMIN', 0, NULL, NULL, N'BANDUNG', N'PROV_02')
INSERT [dbo].[mst_city] ([city_code], [created_date], [created_user], [deleted], [updated_date], [updated_user], [city_name], [province_code]) VALUES (N'CTY_008', CAST(0x0000AA5B0181DC5A AS DateTime), N'ADMIN', 0, NULL, NULL, N'BOGOR', N'PROV_02')
INSERT [dbo].[mst_city] ([city_code], [created_date], [created_user], [deleted], [updated_date], [updated_user], [city_name], [province_code]) VALUES (N'CTY_009', CAST(0x0000AA5B0181DC5A AS DateTime), N'ADMIN', 0, NULL, NULL, N'KARAWANG', N'PROV_02')
INSERT [dbo].[mst_city] ([city_code], [created_date], [created_user], [deleted], [updated_date], [updated_user], [city_name], [province_code]) VALUES (N'CTY_010', CAST(0x0000AA5B0181DC5A AS DateTime), N'ADMIN', 0, NULL, NULL, N'BEKASI', N'PROV_02')
INSERT [dbo].[mst_city] ([city_code], [created_date], [created_user], [deleted], [updated_date], [updated_user], [city_name], [province_code]) VALUES (N'CTY_011', CAST(0x0000AA5B0181DC5A AS DateTime), N'ADMIN', 0, NULL, NULL, N'SEMARANG', N'PROV_03')
INSERT [dbo].[mst_city] ([city_code], [created_date], [created_user], [deleted], [updated_date], [updated_user], [city_name], [province_code]) VALUES (N'CTY_012', CAST(0x0000AA5B0181DC5A AS DateTime), N'ADMIN', 0, NULL, NULL, N'PURWOKERTO', N'PROV_03')
INSERT [dbo].[mst_customer] ([customer_code], [created_date], [created_user], [deleted], [updated_date], [updated_user], [address], [city_code], [customer_name], [date_of_birth], [gender], [postal_code], [province_code]) VALUES (N'CM_0001', CAST(0x0000AA5D0184B1CB AS DateTime), N'ADMIN', 0, NULL, NULL, N'Jakarta', N'CTY_003', N'Bayu', CAST(0x0000AA5D0184B1C7 AS DateTime), 0, N'13460', N'PROV_01')
INSERT [dbo].[mst_customer] ([customer_code], [created_date], [created_user], [deleted], [updated_date], [updated_user], [address], [city_code], [customer_name], [date_of_birth], [gender], [postal_code], [province_code]) VALUES (N'CM_0002', CAST(0x0000AA5E0000D920 AS DateTime), N'ADMIN', 0, NULL, NULL, N'Bandung', N'CTY_007', N'Andi', CAST(0x0000AA5E0000D91C AS DateTime), 0, N'13460', N'PROV_02')
INSERT [dbo].[mst_department] ([id], [created_date], [created_user], [deleted], [updated_date], [updated_user], [dept_name]) VALUES (1, CAST(0x0000AA590185B8CE AS DateTime), N'ADMIN', 0, NULL, NULL, N'DIVISI FINANCE')
INSERT [dbo].[mst_department] ([id], [created_date], [created_user], [deleted], [updated_date], [updated_user], [dept_name]) VALUES (2, CAST(0x0000AA5A006DFB8A AS DateTime), N'ADMIN', 0, NULL, NULL, N'DIVISI RND')
INSERT [dbo].[mst_employee] ([id], [created_date], [created_user], [deleted], [updated_date], [updated_user], [address], [birth_place], [city_code], [date_of_birth], [employee_name], [gender], [postal_code], [province_code], [department_id], [username]) VALUES (1, CAST(0x0000AA5B018418B9 AS DateTime), N'ADMIN', 0, NULL, NULL, N'Jl. Pondok Kopi', N'DKI JAKARTA', N'CTY_001', CAST(0x0000AA5B018418B9 AS DateTime), N'Haqi', 0, N'13460', N'PROV_01', 2, N'Haqi')
INSERT [dbo].[mst_employee] ([id], [created_date], [created_user], [deleted], [updated_date], [updated_user], [address], [birth_place], [city_code], [date_of_birth], [employee_name], [gender], [postal_code], [province_code], [department_id], [username]) VALUES (2, CAST(0x0000AA5B01845CEF AS DateTime), N'ADMIN', 0, NULL, NULL, N'Jl. H. Daing', N'DEPOK', N'CTY_006', CAST(0x0000AA5B01845CEF AS DateTime), N'Jaka', 0, N'14130', N'PROV_02', 2, N'Jaka')
INSERT [dbo].[mst_employee] ([id], [created_date], [created_user], [deleted], [updated_date], [updated_user], [address], [birth_place], [city_code], [date_of_birth], [employee_name], [gender], [postal_code], [province_code], [department_id], [username]) VALUES (3, CAST(0x0000AA5B0184B5DC AS DateTime), N'ADMIN', 0, NULL, NULL, N'Jl. H. Naim', N'PURWOKERTO', N'CTY_012', CAST(0x0000AA5B0184B5DC AS DateTime), N'Raka', 0, N'15320', N'PROV_03', 2, N'Raka')
INSERT [dbo].[mst_product] ([product_code], [created_date], [created_user], [deleted], [updated_date], [updated_user], [category], [product_name], [quantity], [unit_price]) VALUES (N'PD_20190001', CAST(0x0000AA5F00A11597 AS DateTime), N'ADMIN', 0, NULL, NULL, 0, N'Shrimp Roll', CAST(200 AS Numeric(19, 0)), CAST(20000.00 AS Numeric(19, 2)))
INSERT [dbo].[mst_product] ([product_code], [created_date], [created_user], [deleted], [updated_date], [updated_user], [category], [product_name], [quantity], [unit_price]) VALUES (N'PD_20190002', CAST(0x0000AA5F00A127E0 AS DateTime), N'ADMIN', 0, NULL, NULL, 0, N'Ebifurai', CAST(200 AS Numeric(19, 0)), CAST(25000.00 AS Numeric(19, 2)))
INSERT [dbo].[mst_product] ([product_code], [created_date], [created_user], [deleted], [updated_date], [updated_user], [category], [product_name], [quantity], [unit_price]) VALUES (N'PD_20190003', CAST(0x0000AA5F00A14867 AS DateTime), N'ADMIN', 0, NULL, NULL, 0, N'Salmon', CAST(100 AS Numeric(19, 0)), CAST(55000.00 AS Numeric(19, 2)))
INSERT [dbo].[mst_province] ([province_code], [created_date], [created_user], [deleted], [updated_date], [updated_user], [province_name]) VALUES (N'PROV_01', CAST(0x0000AA5B017F799E AS DateTime), N'ADMIN', 0, NULL, NULL, N'DKI JAKARTA')
INSERT [dbo].[mst_province] ([province_code], [created_date], [created_user], [deleted], [updated_date], [updated_user], [province_name]) VALUES (N'PROV_02', CAST(0x0000AA5B017F799E AS DateTime), N'ADMIN', 0, NULL, NULL, N'JAWA BARAT')
INSERT [dbo].[mst_province] ([province_code], [created_date], [created_user], [deleted], [updated_date], [updated_user], [province_name]) VALUES (N'PROV_03', CAST(0x0000AA5B017F799E AS DateTime), N'ADMIN', 0, NULL, NULL, N'JAWA TENGAH')
INSERT [dbo].[mst_user] ([id], [created_date], [created_user], [deleted], [updated_date], [updated_user], [password], [username]) VALUES (N'1', CAST(0x0000AA590121BAAF AS DateTime), N'ADMIN', 0, NULL, NULL, N'Haqi', N'Haqi')
INSERT [dbo].[tr_order_detail] ([detail_id], [created_date], [created_user], [deleted], [updated_date], [updated_user], [discount], [no_nota], [product_code], [qty], [subtotal], [unit_price]) VALUES (N'ORDTL1905100001', CAST(0x0000AA49009F0BA5 AS DateTime), N'ADMIN', 0, NULL, NULL, 0, N'ORD_20190004', N'PD_20190003', CAST(2 AS Numeric(19, 0)), CAST(110000.00 AS Numeric(19, 2)), CAST(55000.00 AS Numeric(19, 2)))
INSERT [dbo].[tr_order_detail] ([detail_id], [created_date], [created_user], [deleted], [updated_date], [updated_user], [discount], [no_nota], [product_code], [qty], [subtotal], [unit_price]) VALUES (N'ORDTL1905200002', CAST(0x0000AA53009F0239 AS DateTime), N'ADMIN', 0, NULL, NULL, 0, N'ORD_20190002', N'PD_20190001', CAST(4 AS Numeric(19, 0)), CAST(80000.00 AS Numeric(19, 2)), CAST(20000.00 AS Numeric(19, 2)))
INSERT [dbo].[tr_order_detail] ([detail_id], [created_date], [created_user], [deleted], [updated_date], [updated_user], [discount], [no_nota], [product_code], [qty], [subtotal], [unit_price]) VALUES (N'ORDTL1906010001', CAST(0x0000AA5F009D8082 AS DateTime), N'ADMIN', 0, NULL, NULL, 0, N'ORD_20190001', N'PD_20190001', CAST(5 AS Numeric(19, 0)), CAST(100000.00 AS Numeric(19, 2)), CAST(20000.00 AS Numeric(19, 2)))
INSERT [dbo].[tr_order_detail] ([detail_id], [created_date], [created_user], [deleted], [updated_date], [updated_user], [discount], [no_nota], [product_code], [qty], [subtotal], [unit_price]) VALUES (N'ORDTL1906010002', CAST(0x0000AA5F009D8082 AS DateTime), N'ADMIN', 0, NULL, NULL, 0, N'ORD_20190001', N'PD_20190002', CAST(4 AS Numeric(19, 0)), CAST(100000.00 AS Numeric(19, 2)), CAST(25000.00 AS Numeric(19, 2)))
INSERT [dbo].[tr_order_header] ([no_nota], [created_date], [created_user], [deleted], [updated_date], [updated_user], [customer_code], [employee_code], [global_discount], [total_price], [transaction_date]) VALUES (N'ORD_20190001', CAST(0x0000AA5F009D8082 AS DateTime), N'ADMIN', 0, NULL, NULL, N'CM_0001', 1, 10, CAST(2000000.00 AS Numeric(19, 2)), CAST(0x0000AA5F009D8082 AS DateTime))
INSERT [dbo].[tr_order_header] ([no_nota], [created_date], [created_user], [deleted], [updated_date], [updated_user], [customer_code], [employee_code], [global_discount], [total_price], [transaction_date]) VALUES (N'ORD_20190002', CAST(0x0000AA53009F0239 AS DateTime), N'ADMIN', 0, NULL, NULL, N'CM_0002', 1, 5, CAST(800000.00 AS Numeric(19, 2)), CAST(0x0000AA53009F0239 AS DateTime))
INSERT [dbo].[tr_order_header] ([no_nota], [created_date], [created_user], [deleted], [updated_date], [updated_user], [customer_code], [employee_code], [global_discount], [total_price], [transaction_date]) VALUES (N'ORD_20190003', CAST(0x0000AA49009F0BA5 AS DateTime), N'ADMIN', 0, NULL, NULL, N'CM_0001', 1, 5, CAST(1100000.00 AS Numeric(19, 2)), CAST(0x0000AA49009F0BA5 AS DateTime))
ALTER TABLE [dbo].[mst_employee]  WITH CHECK ADD  CONSTRAINT [FK_6fag6106o7jjlc96ewhbqxw0m] FOREIGN KEY([department_id])
REFERENCES [dbo].[mst_department] ([id])
GO
ALTER TABLE [dbo].[mst_employee] CHECK CONSTRAINT [FK_6fag6106o7jjlc96ewhbqxw0m]
GO
USE [master]
GO
ALTER DATABASE [belajarhibernatedb] SET  READ_WRITE 
GO
