USE [master]
GO
/****** Object:  Database [ScoreManagement]    Script Date: 2019/6/27 12:41:40 ******/
CREATE DATABASE [ScoreManagement]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ScoreManagement', FILENAME = N'D:\ScoreManagement.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ScoreManagement_log', FILENAME = N'D:\ScoreManagement_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ScoreManagement].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ScoreManagement] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ScoreManagement] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ScoreManagement] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ScoreManagement] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ScoreManagement] SET ARITHABORT OFF 
GO
ALTER DATABASE [ScoreManagement] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ScoreManagement] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ScoreManagement] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ScoreManagement] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ScoreManagement] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ScoreManagement] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ScoreManagement] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ScoreManagement] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ScoreManagement] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ScoreManagement] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ScoreManagement] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ScoreManagement] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ScoreManagement] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ScoreManagement] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ScoreManagement] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ScoreManagement] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ScoreManagement] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ScoreManagement] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ScoreManagement] SET  MULTI_USER 
GO
ALTER DATABASE [ScoreManagement] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ScoreManagement] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ScoreManagement] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ScoreManagement] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
USE [ScoreManagement]
GO
/****** Object:  Table [dbo].[score]    Script Date: 2019/6/27 12:41:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[score](
	[sCode] [varchar](50) NULL,
	[name] [nchar](10) NULL,
	[kemu] [varchar](50) NULL,
	[score] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user]    Script Date: 2019/6/27 12:41:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user](
	[userName] [varchar](50) NULL,
	[password] [varchar](50) NULL
) ON [PRIMARY]
GO
INSERT [dbo].[score] ([sCode], [name], [kemu], [score]) VALUES (N'10001', N'章子怡       ', N'语文', N'99')
INSERT [dbo].[score] ([sCode], [name], [kemu], [score]) VALUES (N'10002', N'陈呵呵       ', N'数据结构', N'80')
INSERT [dbo].[user] ([userName], [password]) VALUES (N'1', N'1')
INSERT [dbo].[user] ([userName], [password]) VALUES (N'111', N'111')
USE [master]
GO
ALTER DATABASE [ScoreManagement] SET  READ_WRITE 
GO
