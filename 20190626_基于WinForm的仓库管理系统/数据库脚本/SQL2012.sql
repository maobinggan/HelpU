USE [master]
GO
/****** Object:  Database [StorageManagement]    Script Date: 2019/6/26 3:11:39 ******/
CREATE DATABASE [StorageManagement]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'StorageManagement', FILENAME = N'D:\StorageManagement.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'StorageManagement_log', FILENAME = N'D:\StorageManagement_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [StorageManagement].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [StorageManagement] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [StorageManagement] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [StorageManagement] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [StorageManagement] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [StorageManagement] SET ARITHABORT OFF 
GO
ALTER DATABASE [StorageManagement] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [StorageManagement] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [StorageManagement] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [StorageManagement] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [StorageManagement] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [StorageManagement] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [StorageManagement] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [StorageManagement] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [StorageManagement] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [StorageManagement] SET  DISABLE_BROKER 
GO
ALTER DATABASE [StorageManagement] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [StorageManagement] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [StorageManagement] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [StorageManagement] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [StorageManagement] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [StorageManagement] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [StorageManagement] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [StorageManagement] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [StorageManagement] SET  MULTI_USER 
GO
ALTER DATABASE [StorageManagement] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [StorageManagement] SET DB_CHAINING OFF 
GO
ALTER DATABASE [StorageManagement] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [StorageManagement] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
USE [StorageManagement]
GO
/****** Object:  Table [dbo].[goods]    Script Date: 2019/6/26 3:11:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[goods](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NULL,
	[type] [varchar](50) NULL,
	[sum] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[material]    Script Date: 2019/6/26 3:11:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[material](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NULL,
	[price] [varchar](50) NULL,
	[sum] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user]    Script Date: 2019/6/26 3:11:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](50) NULL,
	[password] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[workshop]    Script Date: 2019/6/26 3:11:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[workshop](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NULL,
	[master] [varchar](50) NULL,
	[sum] [int] NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[goods] ON 

INSERT [dbo].[goods] ([id], [name], [type], [sum]) VALUES (4, N'面巾纸', N'纸制品', 45)
INSERT [dbo].[goods] ([id], [name], [type], [sum]) VALUES (6, N'牙刷', N'塑料制品', 22)
SET IDENTITY_INSERT [dbo].[goods] OFF
SET IDENTITY_INSERT [dbo].[material] ON 

INSERT [dbo].[material] ([id], [name], [price], [sum]) VALUES (4, N'塑料颗粒', N'18.5', 50)
INSERT [dbo].[material] ([id], [name], [price], [sum]) VALUES (3, N'黑凤梨', N'18.5', 50)
SET IDENTITY_INSERT [dbo].[material] OFF
SET IDENTITY_INSERT [dbo].[user] ON 

INSERT [dbo].[user] ([id], [username], [password]) VALUES (1, N'111', N'111')
SET IDENTITY_INSERT [dbo].[user] OFF
SET IDENTITY_INSERT [dbo].[workshop] ON 

INSERT [dbo].[workshop] ([id], [name], [master], [sum]) VALUES (1, N'1号车间', N'王呵呵', 16)
SET IDENTITY_INSERT [dbo].[workshop] OFF
USE [master]
GO
ALTER DATABASE [StorageManagement] SET  READ_WRITE 
GO
