USE [master]
GO
/****** Object:  Database [BlogManagement]    Script Date: 2019/6/29 19:35:39 ******/
CREATE DATABASE [BlogManagement] ON  PRIMARY 
( NAME = N'BlogManagement', FILENAME = N'D:\BlogManagement.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'BlogManagement_log', FILENAME = N'D:\BlogManagement_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BlogManagement].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BlogManagement] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BlogManagement] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BlogManagement] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BlogManagement] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BlogManagement] SET ARITHABORT OFF 
GO
ALTER DATABASE [BlogManagement] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BlogManagement] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BlogManagement] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BlogManagement] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BlogManagement] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BlogManagement] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BlogManagement] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BlogManagement] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BlogManagement] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BlogManagement] SET  DISABLE_BROKER 
GO
ALTER DATABASE [BlogManagement] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BlogManagement] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BlogManagement] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BlogManagement] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BlogManagement] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BlogManagement] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BlogManagement] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BlogManagement] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [BlogManagement] SET  MULTI_USER 
GO
ALTER DATABASE [BlogManagement] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BlogManagement] SET DB_CHAINING OFF 
GO
USE [BlogManagement]
GO
/****** Object:  Table [dbo].[Blog]    Script Date: 2019/6/29 19:35:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Blog](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NULL,
	[author] [varchar](50) NULL,
	[date] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 2019/6/29 19:35:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userName] [varchar](50) NULL,
	[password] [varchar](50) NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Blog] ON 

INSERT [dbo].[Blog] ([id], [name], [author], [date]) VALUES (4, N'美妙的夜晚', N'林徽因', N'2019年6月29日')
INSERT [dbo].[Blog] ([id], [name], [author], [date]) VALUES (3, N'等一个沟通', N'王安石', N'2019年6月8日')
SET IDENTITY_INSERT [dbo].[Blog] OFF
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([id], [userName], [password]) VALUES (1, N'1', N'1')
SET IDENTITY_INSERT [dbo].[User] OFF
USE [master]
GO
ALTER DATABASE [BlogManagement] SET  READ_WRITE 
GO
