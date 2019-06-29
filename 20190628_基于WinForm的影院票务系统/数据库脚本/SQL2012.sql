USE [master]
GO
/****** Object:  Database [TheaterTicketManagement]    Script Date: 2019/6/29 22:56:08 ******/
CREATE DATABASE [TheaterTicketManagement]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TheaterTicketManagement', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\TheaterTicketManagement.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'TheaterTicketManagement_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\TheaterTicketManagement_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TheaterTicketManagement].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TheaterTicketManagement] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TheaterTicketManagement] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TheaterTicketManagement] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TheaterTicketManagement] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TheaterTicketManagement] SET ARITHABORT OFF 
GO
ALTER DATABASE [TheaterTicketManagement] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TheaterTicketManagement] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TheaterTicketManagement] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TheaterTicketManagement] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TheaterTicketManagement] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TheaterTicketManagement] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TheaterTicketManagement] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TheaterTicketManagement] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TheaterTicketManagement] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TheaterTicketManagement] SET  DISABLE_BROKER 
GO
ALTER DATABASE [TheaterTicketManagement] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TheaterTicketManagement] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TheaterTicketManagement] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TheaterTicketManagement] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TheaterTicketManagement] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TheaterTicketManagement] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TheaterTicketManagement] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TheaterTicketManagement] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [TheaterTicketManagement] SET  MULTI_USER 
GO
ALTER DATABASE [TheaterTicketManagement] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TheaterTicketManagement] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TheaterTicketManagement] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TheaterTicketManagement] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
USE [TheaterTicketManagement]
GO
/****** Object:  Table [dbo].[ticket]    Script Date: 2019/6/29 22:56:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ticket](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[movieName] [varchar](50) NULL,
	[date] [varchar](50) NULL,
	[price] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user]    Script Date: 2019/6/29 22:56:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userName] [varchar](50) NULL,
	[password] [varchar](50) NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ticket] ON 

INSERT [dbo].[ticket] ([id], [movieName], [date], [price]) VALUES (4, N'哈利波特', N'2019年6月29日', N'155')
INSERT [dbo].[ticket] ([id], [movieName], [date], [price]) VALUES (3, N'等风来', N'2019年6月29日', N'122')
SET IDENTITY_INSERT [dbo].[ticket] OFF
SET IDENTITY_INSERT [dbo].[user] ON 

INSERT [dbo].[user] ([id], [userName], [password]) VALUES (1, N'1', N'1')
SET IDENTITY_INSERT [dbo].[user] OFF
USE [master]
GO
ALTER DATABASE [TheaterTicketManagement] SET  READ_WRITE 
GO
