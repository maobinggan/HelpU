USE [master]
GO
/****** Object:  Database [DormManagement]    Script Date: 2019/6/25 2:55:24 ******/
CREATE DATABASE [DormManagement]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DormManagement', FILENAME = N'D:\DormManagement.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DormManagement_log', FILENAME = N'D:\DormManagement_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DormManagement].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DormManagement] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DormManagement] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DormManagement] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DormManagement] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DormManagement] SET ARITHABORT OFF 
GO
ALTER DATABASE [DormManagement] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DormManagement] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DormManagement] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DormManagement] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DormManagement] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DormManagement] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DormManagement] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DormManagement] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DormManagement] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DormManagement] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DormManagement] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DormManagement] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DormManagement] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DormManagement] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DormManagement] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DormManagement] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DormManagement] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DormManagement] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DormManagement] SET  MULTI_USER 
GO
ALTER DATABASE [DormManagement] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DormManagement] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DormManagement] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DormManagement] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
USE [DormManagement]
GO
/****** Object:  Table [dbo].[accommodation]    Script Date: 2019/6/25 2:55:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[accommodation](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[sCode] [nchar](10) NULL,
	[name] [nchar](10) NULL,
	[gender] [nchar](10) NULL,
	[dormNo] [nchar](10) NULL,
	[roomNo] [nchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user]    Script Date: 2019/6/25 2:55:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userName] [char](10) NULL,
	[password] [char](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[visitor]    Script Date: 2019/6/25 2:55:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[visitor](
	[id] [int] NULL,
	[name] [nchar](10) NULL,
	[dormNo] [nchar](10) NULL,
	[reason] [nchar](10) NULL,
	[date] [nchar](10) NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[accommodation] ON 

INSERT [dbo].[accommodation] ([id], [sCode], [name], [gender], [dormNo], [roomNo]) VALUES (1, N'2017001   ', N'陈呵呵       ', N'男         ', N'2栋        ', N'666       ')
INSERT [dbo].[accommodation] ([id], [sCode], [name], [gender], [dormNo], [roomNo]) VALUES (5, N'2017666   ', N'林大大       ', N'男         ', N'2栋        ', N'123       ')
INSERT [dbo].[accommodation] ([id], [sCode], [name], [gender], [dormNo], [roomNo]) VALUES (3, N'2017201   ', N'林嘻嘻       ', N'女         ', N'3栋        ', N'301       ')
INSERT [dbo].[accommodation] ([id], [sCode], [name], [gender], [dormNo], [roomNo]) VALUES (4, N'2017205   ', N'毛毛        ', N'男         ', N'4栋        ', N'222       ')
SET IDENTITY_INSERT [dbo].[accommodation] OFF
SET IDENTITY_INSERT [dbo].[user] ON 

INSERT [dbo].[user] ([id], [userName], [password]) VALUES (8, N'mao       ', N'123       ')
SET IDENTITY_INSERT [dbo].[user] OFF
INSERT [dbo].[visitor] ([id], [name], [dormNo], [reason], [date]) VALUES (NULL, N'林东东       ', N'9号楼       ', N'探亲        ', N'2019.6.6  ')
USE [master]
GO
ALTER DATABASE [DormManagement] SET  READ_WRITE 
GO
