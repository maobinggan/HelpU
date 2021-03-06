USE [master]
GO
/****** Object:  Database [LibraryManageMent]    Script Date: 2019/6/26 3:57:22 ******/
CREATE DATABASE [LibraryManageMent]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'LibraryManageMent', FILENAME = N'D:\LibraryManageMent.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'LibraryManageMent_log', FILENAME = N'D:\LibraryManageMent_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [LibraryManageMent].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [LibraryManageMent] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [LibraryManageMent] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [LibraryManageMent] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [LibraryManageMent] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [LibraryManageMent] SET ARITHABORT OFF 
GO
ALTER DATABASE [LibraryManageMent] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [LibraryManageMent] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [LibraryManageMent] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [LibraryManageMent] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [LibraryManageMent] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [LibraryManageMent] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [LibraryManageMent] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [LibraryManageMent] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [LibraryManageMent] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [LibraryManageMent] SET  DISABLE_BROKER 
GO
ALTER DATABASE [LibraryManageMent] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [LibraryManageMent] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [LibraryManageMent] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [LibraryManageMent] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [LibraryManageMent] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [LibraryManageMent] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [LibraryManageMent] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [LibraryManageMent] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [LibraryManageMent] SET  MULTI_USER 
GO
ALTER DATABASE [LibraryManageMent] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [LibraryManageMent] SET DB_CHAINING OFF 
GO
ALTER DATABASE [LibraryManageMent] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [LibraryManageMent] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
USE [LibraryManageMent]
GO
/****** Object:  Table [dbo].[book]    Script Date: 2019/6/26 3:57:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[book](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NULL,
	[author] [varchar](50) NULL,
	[press] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lend]    Script Date: 2019/6/26 3:57:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lend](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NULL,
	[bookname] [nchar](10) NULL,
	[date] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user]    Script Date: 2019/6/26 3:57:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userName] [varchar](50) NULL,
	[password] [nchar](10) NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[book] ON 

INSERT [dbo].[book] ([id], [name], [author], [press]) VALUES (2, N'悲惨的命运', N'陈呵呵', N'中国人民出版社')
INSERT [dbo].[book] ([id], [name], [author], [press]) VALUES (4, N'哈利波特', N'罗琳', N'中国人民出版社')
SET IDENTITY_INSERT [dbo].[book] OFF
SET IDENTITY_INSERT [dbo].[lend] ON 

INSERT [dbo].[lend] ([id], [name], [bookname], [date]) VALUES (3, N'陈哈哈', N'数据结构      ', N'数据结构')
INSERT [dbo].[lend] ([id], [name], [bookname], [date]) VALUES (2, N'王嘻嘻', N'数据结构      ', N'数据结构')
SET IDENTITY_INSERT [dbo].[lend] OFF
SET IDENTITY_INSERT [dbo].[user] ON 

INSERT [dbo].[user] ([id], [userName], [password]) VALUES (1, N'111', N'111       ')
SET IDENTITY_INSERT [dbo].[user] OFF
USE [master]
GO
ALTER DATABASE [LibraryManageMent] SET  READ_WRITE 
GO
