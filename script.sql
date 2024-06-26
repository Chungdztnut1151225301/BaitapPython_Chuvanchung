USE [master]
GO
/****** Object:  Database [anhchung]    Script Date: 5/15/2024 12:53:59 AM ******/
CREATE DATABASE [anhchung]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'chuchua', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS01\MSSQL\DATA\chuchua.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'chuchua_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS01\MSSQL\DATA\chuchua_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [anhchung] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [anhchung].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [anhchung] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [anhchung] SET ANSI_NULLS OFF
GO
ALTER DATABASE [anhchung] SET ANSI_PADDING OFF
GO
ALTER DATABASE [anhchung] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [anhchung] SET ARITHABORT OFF
GO
ALTER DATABASE [anhchung] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [anhchung] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [anhchung] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [anhchung] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [anhchung] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [anhchung] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [anhchung] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [anhchung] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [anhchung] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [anhchung] SET  DISABLE_BROKER 
GO
ALTER DATABASE [anhchung] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [anhchung] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [anhchung] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [anhchung] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [anhchung] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [anhchung] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [anhchung] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [anhchung] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [anhchung] SET  MULTI_USER 
GO
ALTER DATABASE [anhchung] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [anhchung] SET DB_CHAINING OFF 
GO
ALTER DATABASE [anhchung] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [anhchung] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [anhchung] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [anhchung] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [anhchung] SET QUERY_STORE = ON
GO
ALTER DATABASE [anhchung] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [anhchung]
GO
/****** Object:  Table [dbo].[history]    Script Date: 5/15/2024 12:53:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[history](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[sid] [int] NOT NULL,
	[value] [decimal](18, 0) NULL,
	[time] [datetime] NULL,
 CONSTRAINT [PK_history] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sensor]    Script Date: 5/15/2024 12:53:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sensor](
	[sid] [int] NOT NULL,
	[name] [nchar](10) NULL,
	[unit] [nchar](10) NULL,
	[value] [numeric](18, 0) NULL,
	[time] [datetime] NULL,
 CONSTRAINT [PK_sensor] PRIMARY KEY CLUSTERED 
(
	[sid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[history] ON 

INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (1, 1, CAST(3 AS Decimal(18, 0)), CAST(N'2024-04-03T00:00:00.000' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (7, 1, CAST(28 AS Decimal(18, 0)), CAST(N'2024-05-14T14:58:59.223' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (8, 1, CAST(27 AS Decimal(18, 0)), CAST(N'2024-05-14T14:59:54.983' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (9, 2, CAST(85 AS Decimal(18, 0)), CAST(N'2024-05-14T15:03:18.763' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (10, 2, CAST(93 AS Decimal(18, 0)), CAST(N'2024-05-14T15:10:34.393' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (11, 2, CAST(88 AS Decimal(18, 0)), CAST(N'2024-05-14T15:16:36.590' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (12, 2, CAST(91 AS Decimal(18, 0)), CAST(N'2024-05-14T15:16:46.047' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (13, 2, CAST(87 AS Decimal(18, 0)), CAST(N'2024-05-14T15:23:18.313' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (14, 1, CAST(28 AS Decimal(18, 0)), CAST(N'2024-05-14T15:23:21.280' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (15, 2, CAST(91 AS Decimal(18, 0)), CAST(N'2024-05-14T15:23:30.293' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (16, 1, CAST(30 AS Decimal(18, 0)), CAST(N'2024-05-14T15:23:36.310' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (17, 2, CAST(84 AS Decimal(18, 0)), CAST(N'2024-05-14T15:23:42.303' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (18, 1, CAST(29 AS Decimal(18, 0)), CAST(N'2024-05-14T15:23:51.320' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (19, 2, CAST(95 AS Decimal(18, 0)), CAST(N'2024-05-14T15:23:54.297' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (20, 2, CAST(95 AS Decimal(18, 0)), CAST(N'2024-05-14T15:24:06.340' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (21, 1, CAST(25 AS Decimal(18, 0)), CAST(N'2024-05-14T15:24:06.340' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (22, 2, CAST(83 AS Decimal(18, 0)), CAST(N'2024-05-14T15:24:18.320' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (23, 1, CAST(28 AS Decimal(18, 0)), CAST(N'2024-05-14T15:24:21.307' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (24, 2, CAST(86 AS Decimal(18, 0)), CAST(N'2024-05-14T15:24:30.333' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (25, 1, CAST(29 AS Decimal(18, 0)), CAST(N'2024-05-14T15:24:36.333' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (26, 2, CAST(90 AS Decimal(18, 0)), CAST(N'2024-05-14T15:24:42.337' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (27, 1, CAST(27 AS Decimal(18, 0)), CAST(N'2024-05-14T15:24:51.330' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (28, 2, CAST(93 AS Decimal(18, 0)), CAST(N'2024-05-14T15:24:54.340' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (29, 1, CAST(26 AS Decimal(18, 0)), CAST(N'2024-05-14T15:25:06.347' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (30, 2, CAST(92 AS Decimal(18, 0)), CAST(N'2024-05-14T15:25:06.353' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (31, 2, CAST(87 AS Decimal(18, 0)), CAST(N'2024-05-14T15:25:18.353' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (32, 1, CAST(25 AS Decimal(18, 0)), CAST(N'2024-05-14T15:25:21.340' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (33, 2, CAST(92 AS Decimal(18, 0)), CAST(N'2024-05-14T15:25:30.367' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (34, 1, CAST(29 AS Decimal(18, 0)), CAST(N'2024-05-14T15:25:36.360' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (35, 2, CAST(86 AS Decimal(18, 0)), CAST(N'2024-05-14T15:25:42.380' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (36, 1, CAST(25 AS Decimal(18, 0)), CAST(N'2024-05-14T15:25:51.360' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (37, 2, CAST(89 AS Decimal(18, 0)), CAST(N'2024-05-14T15:25:54.377' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (38, 1, CAST(25 AS Decimal(18, 0)), CAST(N'2024-05-14T15:26:06.373' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (39, 2, CAST(93 AS Decimal(18, 0)), CAST(N'2024-05-14T15:26:06.377' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (40, 2, CAST(86 AS Decimal(18, 0)), CAST(N'2024-05-14T15:26:18.403' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (41, 1, CAST(27 AS Decimal(18, 0)), CAST(N'2024-05-14T15:26:21.360' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (42, 2, CAST(88 AS Decimal(18, 0)), CAST(N'2024-05-14T15:26:30.410' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (43, 1, CAST(25 AS Decimal(18, 0)), CAST(N'2024-05-14T15:26:36.393' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (44, 2, CAST(85 AS Decimal(18, 0)), CAST(N'2024-05-14T15:26:42.413' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (45, 1, CAST(28 AS Decimal(18, 0)), CAST(N'2024-05-14T15:26:51.390' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (46, 2, CAST(84 AS Decimal(18, 0)), CAST(N'2024-05-14T15:26:54.437' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (47, 1, CAST(27 AS Decimal(18, 0)), CAST(N'2024-05-14T15:27:06.403' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (48, 2, CAST(94 AS Decimal(18, 0)), CAST(N'2024-05-14T15:27:06.427' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (49, 2, CAST(83 AS Decimal(18, 0)), CAST(N'2024-05-14T15:27:18.443' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (50, 1, CAST(26 AS Decimal(18, 0)), CAST(N'2024-05-14T15:27:21.397' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (51, 2, CAST(84 AS Decimal(18, 0)), CAST(N'2024-05-14T15:27:30.460' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (52, 1, CAST(30 AS Decimal(18, 0)), CAST(N'2024-05-14T15:27:36.420' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (53, 2, CAST(81 AS Decimal(18, 0)), CAST(N'2024-05-14T15:27:42.470' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (54, 1, CAST(28 AS Decimal(18, 0)), CAST(N'2024-05-14T15:27:51.417' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (55, 2, CAST(84 AS Decimal(18, 0)), CAST(N'2024-05-14T15:27:54.463' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (56, 1, CAST(25 AS Decimal(18, 0)), CAST(N'2024-05-14T15:28:06.430' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (57, 2, CAST(94 AS Decimal(18, 0)), CAST(N'2024-05-14T15:28:06.447' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (58, 2, CAST(88 AS Decimal(18, 0)), CAST(N'2024-05-14T15:28:18.487' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (59, 1, CAST(28 AS Decimal(18, 0)), CAST(N'2024-05-14T15:28:21.420' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (60, 2, CAST(86 AS Decimal(18, 0)), CAST(N'2024-05-14T15:28:30.480' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (61, 1, CAST(28 AS Decimal(18, 0)), CAST(N'2024-05-14T15:28:36.457' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (62, 2, CAST(81 AS Decimal(18, 0)), CAST(N'2024-05-14T15:28:42.483' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (63, 1, CAST(30 AS Decimal(18, 0)), CAST(N'2024-05-14T15:28:51.457' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (64, 2, CAST(92 AS Decimal(18, 0)), CAST(N'2024-05-14T15:28:54.473' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (65, 1, CAST(27 AS Decimal(18, 0)), CAST(N'2024-05-14T15:29:06.477' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (66, 2, CAST(87 AS Decimal(18, 0)), CAST(N'2024-05-14T15:29:06.490' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (67, 2, CAST(92 AS Decimal(18, 0)), CAST(N'2024-05-14T15:29:18.487' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (68, 1, CAST(26 AS Decimal(18, 0)), CAST(N'2024-05-14T15:29:21.460' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (69, 2, CAST(86 AS Decimal(18, 0)), CAST(N'2024-05-14T15:29:30.500' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (70, 1, CAST(27 AS Decimal(18, 0)), CAST(N'2024-05-14T15:29:36.490' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (71, 2, CAST(90 AS Decimal(18, 0)), CAST(N'2024-05-14T15:29:42.507' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (72, 1, CAST(26 AS Decimal(18, 0)), CAST(N'2024-05-14T15:29:51.487' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (73, 2, CAST(95 AS Decimal(18, 0)), CAST(N'2024-05-14T15:29:54.520' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (74, 1, CAST(27 AS Decimal(18, 0)), CAST(N'2024-05-14T15:30:06.500' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (75, 2, CAST(84 AS Decimal(18, 0)), CAST(N'2024-05-14T15:30:06.507' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (76, 2, CAST(86 AS Decimal(18, 0)), CAST(N'2024-05-14T15:30:18.520' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (77, 1, CAST(25 AS Decimal(18, 0)), CAST(N'2024-05-14T15:30:21.483' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (78, 2, CAST(83 AS Decimal(18, 0)), CAST(N'2024-05-14T15:30:30.537' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (79, 1, CAST(26 AS Decimal(18, 0)), CAST(N'2024-05-14T15:30:36.500' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (80, 2, CAST(91 AS Decimal(18, 0)), CAST(N'2024-05-14T15:30:42.550' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (81, 1, CAST(30 AS Decimal(18, 0)), CAST(N'2024-05-14T15:30:51.510' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (82, 2, CAST(88 AS Decimal(18, 0)), CAST(N'2024-05-14T15:30:54.560' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (83, 1, CAST(26 AS Decimal(18, 0)), CAST(N'2024-05-14T15:31:06.510' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (84, 2, CAST(89 AS Decimal(18, 0)), CAST(N'2024-05-14T15:31:06.550' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (85, 2, CAST(82 AS Decimal(18, 0)), CAST(N'2024-05-14T15:31:18.573' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (86, 1, CAST(28 AS Decimal(18, 0)), CAST(N'2024-05-14T15:31:21.500' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (87, 2, CAST(89 AS Decimal(18, 0)), CAST(N'2024-05-14T15:31:30.587' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (88, 1, CAST(29 AS Decimal(18, 0)), CAST(N'2024-05-14T15:31:36.517' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (89, 2, CAST(93 AS Decimal(18, 0)), CAST(N'2024-05-14T15:31:42.583' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (90, 1, CAST(25 AS Decimal(18, 0)), CAST(N'2024-05-14T15:31:51.517' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (91, 2, CAST(86 AS Decimal(18, 0)), CAST(N'2024-05-14T15:31:54.600' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (92, 1, CAST(26 AS Decimal(18, 0)), CAST(N'2024-05-14T15:32:06.527' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (93, 2, CAST(92 AS Decimal(18, 0)), CAST(N'2024-05-14T15:32:06.583' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (94, 2, CAST(94 AS Decimal(18, 0)), CAST(N'2024-05-14T15:32:18.607' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (95, 1, CAST(27 AS Decimal(18, 0)), CAST(N'2024-05-14T15:32:21.523' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (96, 2, CAST(82 AS Decimal(18, 0)), CAST(N'2024-05-14T15:32:30.627' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (97, 1, CAST(29 AS Decimal(18, 0)), CAST(N'2024-05-14T15:32:36.550' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (98, 2, CAST(82 AS Decimal(18, 0)), CAST(N'2024-05-14T15:32:42.630' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (99, 1, CAST(27 AS Decimal(18, 0)), CAST(N'2024-05-14T15:32:51.547' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (100, 2, CAST(83 AS Decimal(18, 0)), CAST(N'2024-05-14T15:32:54.633' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (101, 1, CAST(28 AS Decimal(18, 0)), CAST(N'2024-05-14T15:33:06.573' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (102, 2, CAST(85 AS Decimal(18, 0)), CAST(N'2024-05-14T15:33:06.630' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (103, 2, CAST(87 AS Decimal(18, 0)), CAST(N'2024-05-14T15:33:18.653' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (104, 1, CAST(28 AS Decimal(18, 0)), CAST(N'2024-05-14T15:33:21.550' AS DateTime))
GO
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (105, 2, CAST(94 AS Decimal(18, 0)), CAST(N'2024-05-14T15:33:30.670' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (106, 1, CAST(28 AS Decimal(18, 0)), CAST(N'2024-05-14T15:33:36.570' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (107, 2, CAST(92 AS Decimal(18, 0)), CAST(N'2024-05-14T15:33:42.673' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (108, 1, CAST(26 AS Decimal(18, 0)), CAST(N'2024-05-14T15:33:51.583' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (109, 2, CAST(83 AS Decimal(18, 0)), CAST(N'2024-05-14T15:33:54.687' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (110, 1, CAST(28 AS Decimal(18, 0)), CAST(N'2024-05-14T19:45:00.983' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (111, 2, CAST(94 AS Decimal(18, 0)), CAST(N'2024-05-14T19:45:09.990' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (112, 1, CAST(26 AS Decimal(18, 0)), CAST(N'2024-05-14T19:45:15.933' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (113, 2, CAST(82 AS Decimal(18, 0)), CAST(N'2024-05-14T19:45:21.997' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (114, 1, CAST(30 AS Decimal(18, 0)), CAST(N'2024-05-14T19:45:30.937' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (115, 2, CAST(86 AS Decimal(18, 0)), CAST(N'2024-05-14T19:45:34.000' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (116, 1, CAST(28 AS Decimal(18, 0)), CAST(N'2024-05-14T19:45:45.950' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (117, 2, CAST(85 AS Decimal(18, 0)), CAST(N'2024-05-14T19:45:45.993' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (118, 2, CAST(83 AS Decimal(18, 0)), CAST(N'2024-05-14T19:45:58.013' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (119, 1, CAST(29 AS Decimal(18, 0)), CAST(N'2024-05-14T19:46:00.933' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (120, 2, CAST(86 AS Decimal(18, 0)), CAST(N'2024-05-14T19:46:10.017' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (121, 1, CAST(26 AS Decimal(18, 0)), CAST(N'2024-05-14T19:46:15.960' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (122, 2, CAST(86 AS Decimal(18, 0)), CAST(N'2024-05-14T19:46:22.017' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (123, 1, CAST(27 AS Decimal(18, 0)), CAST(N'2024-05-14T19:46:30.963' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (124, 2, CAST(93 AS Decimal(18, 0)), CAST(N'2024-05-14T19:46:34.030' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (125, 1, CAST(29 AS Decimal(18, 0)), CAST(N'2024-05-14T19:46:45.970' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (126, 2, CAST(92 AS Decimal(18, 0)), CAST(N'2024-05-14T19:46:46.020' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (127, 2, CAST(95 AS Decimal(18, 0)), CAST(N'2024-05-14T19:46:58.033' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (128, 1, CAST(26 AS Decimal(18, 0)), CAST(N'2024-05-14T19:47:00.950' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (129, 2, CAST(84 AS Decimal(18, 0)), CAST(N'2024-05-14T19:57:20.577' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (130, 1, CAST(30 AS Decimal(18, 0)), CAST(N'2024-05-14T19:57:23.467' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (131, 2, CAST(81 AS Decimal(18, 0)), CAST(N'2024-05-14T19:57:32.497' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (132, 1, CAST(27 AS Decimal(18, 0)), CAST(N'2024-05-14T19:57:38.480' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (133, 2, CAST(80 AS Decimal(18, 0)), CAST(N'2024-05-14T19:57:44.503' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (134, 1, CAST(28 AS Decimal(18, 0)), CAST(N'2024-05-14T19:57:53.497' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (135, 2, CAST(93 AS Decimal(18, 0)), CAST(N'2024-05-14T19:57:56.487' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (136, 1, CAST(27 AS Decimal(18, 0)), CAST(N'2024-05-14T19:58:08.503' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (137, 2, CAST(83 AS Decimal(18, 0)), CAST(N'2024-05-14T19:58:08.507' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (138, 2, CAST(83 AS Decimal(18, 0)), CAST(N'2024-05-14T19:58:20.513' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (139, 1, CAST(28 AS Decimal(18, 0)), CAST(N'2024-05-14T19:58:23.480' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (140, 2, CAST(93 AS Decimal(18, 0)), CAST(N'2024-05-14T19:58:32.530' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (141, 1, CAST(28 AS Decimal(18, 0)), CAST(N'2024-05-14T19:58:38.507' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (142, 2, CAST(85 AS Decimal(18, 0)), CAST(N'2024-05-14T19:58:44.530' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (143, 1, CAST(29 AS Decimal(18, 0)), CAST(N'2024-05-14T19:58:53.507' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (144, 2, CAST(92 AS Decimal(18, 0)), CAST(N'2024-05-14T19:58:56.537' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (145, 1, CAST(26 AS Decimal(18, 0)), CAST(N'2024-05-14T19:59:08.493' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (146, 2, CAST(84 AS Decimal(18, 0)), CAST(N'2024-05-14T19:59:08.517' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (147, 2, CAST(82 AS Decimal(18, 0)), CAST(N'2024-05-14T19:59:20.550' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (148, 1, CAST(30 AS Decimal(18, 0)), CAST(N'2024-05-14T19:59:23.497' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (149, 2, CAST(87 AS Decimal(18, 0)), CAST(N'2024-05-14T19:59:32.557' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (150, 1, CAST(25 AS Decimal(18, 0)), CAST(N'2024-05-14T19:59:38.517' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (151, 2, CAST(83 AS Decimal(18, 0)), CAST(N'2024-05-14T19:59:44.563' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (152, 1, CAST(25 AS Decimal(18, 0)), CAST(N'2024-05-14T19:59:53.520' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (153, 2, CAST(88 AS Decimal(18, 0)), CAST(N'2024-05-14T19:59:56.567' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (154, 1, CAST(26 AS Decimal(18, 0)), CAST(N'2024-05-14T20:00:08.523' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (155, 2, CAST(82 AS Decimal(18, 0)), CAST(N'2024-05-14T20:00:08.560' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (156, 2, CAST(93 AS Decimal(18, 0)), CAST(N'2024-05-14T20:00:20.577' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (157, 1, CAST(27 AS Decimal(18, 0)), CAST(N'2024-05-14T20:00:23.497' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (158, 2, CAST(89 AS Decimal(18, 0)), CAST(N'2024-05-14T20:00:32.570' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (159, 1, CAST(25 AS Decimal(18, 0)), CAST(N'2024-05-14T20:00:38.530' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (160, 2, CAST(89 AS Decimal(18, 0)), CAST(N'2024-05-14T20:00:44.570' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (161, 1, CAST(30 AS Decimal(18, 0)), CAST(N'2024-05-14T20:00:53.530' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (162, 2, CAST(81 AS Decimal(18, 0)), CAST(N'2024-05-14T20:00:56.600' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (163, 1, CAST(26 AS Decimal(18, 0)), CAST(N'2024-05-14T20:01:08.537' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (164, 2, CAST(81 AS Decimal(18, 0)), CAST(N'2024-05-14T20:01:08.590' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (165, 2, CAST(85 AS Decimal(18, 0)), CAST(N'2024-05-14T20:01:20.610' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (166, 1, CAST(26 AS Decimal(18, 0)), CAST(N'2024-05-14T20:01:23.523' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (167, 2, CAST(94 AS Decimal(18, 0)), CAST(N'2024-05-14T20:01:32.610' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (168, 1, CAST(27 AS Decimal(18, 0)), CAST(N'2024-05-14T20:01:38.560' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (169, 2, CAST(90 AS Decimal(18, 0)), CAST(N'2024-05-14T20:01:44.613' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (170, 1, CAST(26 AS Decimal(18, 0)), CAST(N'2024-05-14T20:01:53.560' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (171, 2, CAST(83 AS Decimal(18, 0)), CAST(N'2024-05-14T20:01:56.620' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (172, 1, CAST(28 AS Decimal(18, 0)), CAST(N'2024-05-14T20:02:08.583' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (173, 2, CAST(93 AS Decimal(18, 0)), CAST(N'2024-05-14T20:02:08.617' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (174, 2, CAST(82 AS Decimal(18, 0)), CAST(N'2024-05-14T20:02:20.633' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (175, 1, CAST(29 AS Decimal(18, 0)), CAST(N'2024-05-14T20:02:23.570' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (176, 2, CAST(94 AS Decimal(18, 0)), CAST(N'2024-05-14T20:02:32.643' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (177, 1, CAST(28 AS Decimal(18, 0)), CAST(N'2024-05-14T20:02:38.600' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (178, 2, CAST(93 AS Decimal(18, 0)), CAST(N'2024-05-14T20:02:44.647' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (179, 1, CAST(26 AS Decimal(18, 0)), CAST(N'2024-05-14T20:02:53.603' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (180, 2, CAST(81 AS Decimal(18, 0)), CAST(N'2024-05-14T20:02:56.650' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (181, 1, CAST(28 AS Decimal(18, 0)), CAST(N'2024-05-14T20:03:08.627' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (182, 2, CAST(84 AS Decimal(18, 0)), CAST(N'2024-05-14T20:03:08.643' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (183, 2, CAST(91 AS Decimal(18, 0)), CAST(N'2024-05-14T20:03:20.667' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (184, 1, CAST(28 AS Decimal(18, 0)), CAST(N'2024-05-14T20:03:23.613' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (185, 2, CAST(93 AS Decimal(18, 0)), CAST(N'2024-05-14T20:03:32.670' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (186, 1, CAST(28 AS Decimal(18, 0)), CAST(N'2024-05-14T20:03:38.630' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (187, 2, CAST(88 AS Decimal(18, 0)), CAST(N'2024-05-14T20:03:44.673' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (188, 1, CAST(26 AS Decimal(18, 0)), CAST(N'2024-05-14T20:03:53.633' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (189, 2, CAST(90 AS Decimal(18, 0)), CAST(N'2024-05-14T20:03:56.687' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (190, 1, CAST(29 AS Decimal(18, 0)), CAST(N'2024-05-14T20:04:08.637' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (191, 2, CAST(91 AS Decimal(18, 0)), CAST(N'2024-05-14T20:04:08.683' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (192, 2, CAST(94 AS Decimal(18, 0)), CAST(N'2024-05-14T20:04:20.710' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (193, 1, CAST(29 AS Decimal(18, 0)), CAST(N'2024-05-14T20:04:23.620' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (194, 2, CAST(87 AS Decimal(18, 0)), CAST(N'2024-05-14T20:04:32.717' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (195, 1, CAST(25 AS Decimal(18, 0)), CAST(N'2024-05-14T20:04:38.643' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (196, 2, CAST(86 AS Decimal(18, 0)), CAST(N'2024-05-14T20:04:44.720' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (197, 1, CAST(28 AS Decimal(18, 0)), CAST(N'2024-05-14T20:04:53.630' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (198, 2, CAST(85 AS Decimal(18, 0)), CAST(N'2024-05-14T20:04:56.727' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (199, 1, CAST(28 AS Decimal(18, 0)), CAST(N'2024-05-14T20:05:08.650' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (200, 2, CAST(85 AS Decimal(18, 0)), CAST(N'2024-05-14T20:05:08.720' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (201, 2, CAST(82 AS Decimal(18, 0)), CAST(N'2024-05-14T20:05:20.740' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (202, 1, CAST(26 AS Decimal(18, 0)), CAST(N'2024-05-14T20:05:23.633' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (203, 2, CAST(94 AS Decimal(18, 0)), CAST(N'2024-05-14T20:05:32.743' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (204, 1, CAST(25 AS Decimal(18, 0)), CAST(N'2024-05-14T20:05:38.653' AS DateTime))
GO
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (205, 2, CAST(85 AS Decimal(18, 0)), CAST(N'2024-05-14T20:05:44.753' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (206, 1, CAST(27 AS Decimal(18, 0)), CAST(N'2024-05-14T20:05:53.660' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (207, 2, CAST(89 AS Decimal(18, 0)), CAST(N'2024-05-14T20:05:56.753' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (208, 1, CAST(29 AS Decimal(18, 0)), CAST(N'2024-05-14T20:06:08.660' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (209, 2, CAST(85 AS Decimal(18, 0)), CAST(N'2024-05-14T20:06:08.750' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (210, 2, CAST(82 AS Decimal(18, 0)), CAST(N'2024-05-14T20:06:20.770' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (211, 1, CAST(30 AS Decimal(18, 0)), CAST(N'2024-05-14T20:06:23.647' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (212, 2, CAST(83 AS Decimal(18, 0)), CAST(N'2024-05-14T20:06:32.790' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (213, 1, CAST(28 AS Decimal(18, 0)), CAST(N'2024-05-14T20:06:38.667' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (214, 2, CAST(90 AS Decimal(18, 0)), CAST(N'2024-05-14T20:06:44.793' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (215, 1, CAST(30 AS Decimal(18, 0)), CAST(N'2024-05-14T20:06:53.673' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (216, 2, CAST(92 AS Decimal(18, 0)), CAST(N'2024-05-14T20:06:56.800' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (217, 1, CAST(27 AS Decimal(18, 0)), CAST(N'2024-05-14T20:07:08.677' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (218, 2, CAST(83 AS Decimal(18, 0)), CAST(N'2024-05-14T20:07:08.797' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (219, 2, CAST(94 AS Decimal(18, 0)), CAST(N'2024-05-14T20:07:20.817' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (220, 1, CAST(29 AS Decimal(18, 0)), CAST(N'2024-05-14T20:07:23.653' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (221, 2, CAST(87 AS Decimal(18, 0)), CAST(N'2024-05-14T20:07:32.820' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (222, 1, CAST(26 AS Decimal(18, 0)), CAST(N'2024-05-14T20:07:38.683' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (223, 2, CAST(93 AS Decimal(18, 0)), CAST(N'2024-05-14T20:07:44.840' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (224, 1, CAST(29 AS Decimal(18, 0)), CAST(N'2024-05-14T20:07:53.687' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (225, 2, CAST(85 AS Decimal(18, 0)), CAST(N'2024-05-14T20:07:56.850' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (226, 1, CAST(27 AS Decimal(18, 0)), CAST(N'2024-05-14T20:08:08.670' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (227, 2, CAST(94 AS Decimal(18, 0)), CAST(N'2024-05-14T20:08:08.823' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (228, 2, CAST(85 AS Decimal(18, 0)), CAST(N'2024-05-14T20:08:20.860' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (229, 1, CAST(27 AS Decimal(18, 0)), CAST(N'2024-05-14T20:08:23.670' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (230, 2, CAST(81 AS Decimal(18, 0)), CAST(N'2024-05-14T20:08:32.863' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (231, 1, CAST(28 AS Decimal(18, 0)), CAST(N'2024-05-14T20:08:38.673' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (232, 2, CAST(85 AS Decimal(18, 0)), CAST(N'2024-05-14T20:08:44.857' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (233, 1, CAST(29 AS Decimal(18, 0)), CAST(N'2024-05-14T20:08:53.697' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (234, 2, CAST(92 AS Decimal(18, 0)), CAST(N'2024-05-14T20:08:56.870' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (235, 1, CAST(28 AS Decimal(18, 0)), CAST(N'2024-05-14T20:09:08.687' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (236, 2, CAST(84 AS Decimal(18, 0)), CAST(N'2024-05-14T20:09:08.860' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (237, 2, CAST(89 AS Decimal(18, 0)), CAST(N'2024-05-14T20:09:20.900' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (238, 1, CAST(27 AS Decimal(18, 0)), CAST(N'2024-05-14T20:09:23.680' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (239, 2, CAST(84 AS Decimal(18, 0)), CAST(N'2024-05-14T20:09:32.910' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (240, 1, CAST(27 AS Decimal(18, 0)), CAST(N'2024-05-14T20:09:38.703' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (241, 2, CAST(94 AS Decimal(18, 0)), CAST(N'2024-05-14T20:09:44.913' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (242, 1, CAST(26 AS Decimal(18, 0)), CAST(N'2024-05-14T20:09:53.707' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (243, 2, CAST(81 AS Decimal(18, 0)), CAST(N'2024-05-14T20:09:56.917' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (244, 1, CAST(26 AS Decimal(18, 0)), CAST(N'2024-05-14T20:10:08.713' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (245, 2, CAST(92 AS Decimal(18, 0)), CAST(N'2024-05-14T20:10:08.910' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (246, 2, CAST(91 AS Decimal(18, 0)), CAST(N'2024-05-14T20:10:20.930' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (247, 1, CAST(25 AS Decimal(18, 0)), CAST(N'2024-05-14T20:10:23.690' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (248, 2, CAST(85 AS Decimal(18, 0)), CAST(N'2024-05-14T20:10:32.930' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (249, 1, CAST(29 AS Decimal(18, 0)), CAST(N'2024-05-14T20:10:38.700' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (250, 2, CAST(92 AS Decimal(18, 0)), CAST(N'2024-05-14T20:10:44.943' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (251, 1, CAST(25 AS Decimal(18, 0)), CAST(N'2024-05-14T20:10:53.720' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (252, 2, CAST(84 AS Decimal(18, 0)), CAST(N'2024-05-14T20:10:56.950' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (253, 1, CAST(25 AS Decimal(18, 0)), CAST(N'2024-05-14T20:11:08.723' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (254, 2, CAST(90 AS Decimal(18, 0)), CAST(N'2024-05-14T20:11:08.943' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (255, 2, CAST(84 AS Decimal(18, 0)), CAST(N'2024-05-14T20:11:20.960' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (256, 1, CAST(28 AS Decimal(18, 0)), CAST(N'2024-05-14T20:11:23.713' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (257, 2, CAST(94 AS Decimal(18, 0)), CAST(N'2024-05-14T20:11:32.967' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (258, 1, CAST(29 AS Decimal(18, 0)), CAST(N'2024-05-14T20:11:38.727' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (259, 2, CAST(84 AS Decimal(18, 0)), CAST(N'2024-05-14T20:11:44.973' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (260, 1, CAST(28 AS Decimal(18, 0)), CAST(N'2024-05-14T20:11:53.730' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (261, 2, CAST(83 AS Decimal(18, 0)), CAST(N'2024-05-14T20:11:56.980' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (262, 1, CAST(29 AS Decimal(18, 0)), CAST(N'2024-05-14T20:12:08.737' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (263, 2, CAST(88 AS Decimal(18, 0)), CAST(N'2024-05-14T20:12:08.970' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (264, 2, CAST(93 AS Decimal(18, 0)), CAST(N'2024-05-14T20:12:20.980' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (265, 1, CAST(26 AS Decimal(18, 0)), CAST(N'2024-05-14T20:12:23.717' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (266, 2, CAST(92 AS Decimal(18, 0)), CAST(N'2024-05-14T20:12:33.000' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (267, 1, CAST(25 AS Decimal(18, 0)), CAST(N'2024-05-14T20:12:38.740' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (268, 2, CAST(89 AS Decimal(18, 0)), CAST(N'2024-05-14T20:12:45.003' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (269, 1, CAST(26 AS Decimal(18, 0)), CAST(N'2024-05-14T20:12:53.730' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (270, 2, CAST(92 AS Decimal(18, 0)), CAST(N'2024-05-14T20:12:57.007' AS DateTime))
INSERT [dbo].[history] ([id], [sid], [value], [time]) VALUES (271, 1, CAST(29 AS Decimal(18, 0)), CAST(N'2024-05-15T00:26:18.160' AS DateTime))
SET IDENTITY_INSERT [dbo].[history] OFF
GO
INSERT [dbo].[sensor] ([sid], [name], [unit], [value], [time]) VALUES (1, N'nhietdo   ', N'độ c      ', CAST(4 AS Numeric(18, 0)), CAST(N'2024-05-14T14:40:04.347' AS DateTime))
INSERT [dbo].[sensor] ([sid], [name], [unit], [value], [time]) VALUES (2, N'doam      ', N'phần trăm ', CAST(30 AS Numeric(18, 0)), CAST(N'2024-05-14T14:42:05.500' AS DateTime))
GO
ALTER TABLE [dbo].[history] ADD  CONSTRAINT [DF_history_time]  DEFAULT (getdate()) FOR [time]
GO
ALTER TABLE [dbo].[sensor] ADD  CONSTRAINT [DF_sensor_time]  DEFAULT (getdate()) FOR [time]
GO
ALTER TABLE [dbo].[history]  WITH CHECK ADD  CONSTRAINT [FK_history_sensor] FOREIGN KEY([sid])
REFERENCES [dbo].[sensor] ([sid])
GO
ALTER TABLE [dbo].[history] CHECK CONSTRAINT [FK_history_sensor]
GO
/****** Object:  StoredProcedure [dbo].[SP_Chart]    Script Date: 5/15/2024 12:53:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_Chart]
AS
BEGIN
    DECLARE @json nvarchar(max) = N'{"ok":1,"msg":"ok","data":[';

    SELECT @json += FORMATMESSAGE(N'{"id":"%d","sid":"%d","value":"%s","time":"%s"},',
                              [id], [sid], CONVERT(nvarchar(50), [value]), CONVERT(nvarchar(50), [time]))
    FROM history;

    IF RIGHT(@json, 1) = ','
    BEGIN
        SET @json = LEFT(@json, LEN(@json) - 1);
    END

    SET @json = @json + ']}';

    SELECT @json AS json;
END
GO
USE [master]
GO
ALTER DATABASE [anhchung] SET  READ_WRITE 
GO
