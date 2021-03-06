USE [master]
GO
/****** Object:  Database [TheaterTicketManagement]    Script Date: 2019/6/29 22:56:08 ******/
CREATE DATABASE [TheaterTicketManagement]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TheaterTicketManagement', FILENAME = N'D:\TheaterTicketManagement.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'TheaterTicketManagement_log', FILENAME = N'D:\TheaterTicketManagement_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
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
