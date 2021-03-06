USE [master]
GO
/****** Object:  Database [AttendanceManagement]    Script Date: 2019/6/27 13:27:30 ******/
CREATE DATABASE [AttendanceManagement]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'AttendanceManagement', FILENAME = N'D:\AttendanceManagement.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'AttendanceManagement_log', FILENAME = N'D:\AttendanceManagement_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [AttendanceManagement].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [AttendanceManagement] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [AttendanceManagement] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [AttendanceManagement] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [AttendanceManagement] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [AttendanceManagement] SET ARITHABORT OFF 
GO
ALTER DATABASE [AttendanceManagement] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [AttendanceManagement] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [AttendanceManagement] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [AttendanceManagement] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [AttendanceManagement] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [AttendanceManagement] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [AttendanceManagement] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [AttendanceManagement] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [AttendanceManagement] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [AttendanceManagement] SET  DISABLE_BROKER 
GO
ALTER DATABASE [AttendanceManagement] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [AttendanceManagement] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [AttendanceManagement] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [AttendanceManagement] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [AttendanceManagement] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [AttendanceManagement] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [AttendanceManagement] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [AttendanceManagement] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [AttendanceManagement] SET  MULTI_USER 
GO
ALTER DATABASE [AttendanceManagement] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [AttendanceManagement] SET DB_CHAINING OFF 
GO
ALTER DATABASE [AttendanceManagement] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [AttendanceManagement] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
USE [AttendanceManagement]
GO
/****** Object:  Table [dbo].[attendance]    Script Date: 2019/6/27 13:27:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[attendance](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NULL,
	[gender] [varchar](50) NULL,
	[date] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[authority]    Script Date: 2019/6/27 13:27:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[authority](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[authorityDescription] [nchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user]    Script Date: 2019/6/27 13:27:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userName] [varchar](50) NULL,
	[password] [varchar](50) NULL,
	[authority_id] [int] NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[attendance] ON 

INSERT [dbo].[attendance] ([id], [name], [gender], [date]) VALUES (3, N'陈呵呵', N'男', N'2019年6月27日')
INSERT [dbo].[attendance] ([id], [name], [gender], [date]) VALUES (2, N'夏青鸾', N'女', N'2019年6月27日')
INSERT [dbo].[attendance] ([id], [name], [gender], [date]) VALUES (4, N'王嘻嘻', N'男', N'2019年5月30日')
SET IDENTITY_INSERT [dbo].[attendance] OFF
SET IDENTITY_INSERT [dbo].[authority] ON 

INSERT [dbo].[authority] ([id], [authorityDescription]) VALUES (1, N'管理员权限     ')
INSERT [dbo].[authority] ([id], [authorityDescription]) VALUES (2, N'普通用户权限    ')
SET IDENTITY_INSERT [dbo].[authority] OFF
SET IDENTITY_INSERT [dbo].[user] ON 

INSERT [dbo].[user] ([id], [userName], [password], [authority_id]) VALUES (30, N'1', N'1', NULL)
SET IDENTITY_INSERT [dbo].[user] OFF
USE [master]
GO
ALTER DATABASE [AttendanceManagement] SET  READ_WRITE 
GO
