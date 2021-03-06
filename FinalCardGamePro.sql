USE [master]
GO
/****** Object:  Database [FlipCardGame]    Script Date: 7/19/2020 10:11:10 PM ******/
CREATE DATABASE [FlipCardGame]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'FlipCardGame', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\FlipCardGame.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'FlipCardGame_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\FlipCardGame_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [FlipCardGame] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [FlipCardGame].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [FlipCardGame] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [FlipCardGame] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [FlipCardGame] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [FlipCardGame] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [FlipCardGame] SET ARITHABORT OFF 
GO
ALTER DATABASE [FlipCardGame] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [FlipCardGame] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [FlipCardGame] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [FlipCardGame] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [FlipCardGame] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [FlipCardGame] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [FlipCardGame] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [FlipCardGame] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [FlipCardGame] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [FlipCardGame] SET  DISABLE_BROKER 
GO
ALTER DATABASE [FlipCardGame] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [FlipCardGame] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [FlipCardGame] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [FlipCardGame] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [FlipCardGame] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [FlipCardGame] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [FlipCardGame] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [FlipCardGame] SET RECOVERY FULL 
GO
ALTER DATABASE [FlipCardGame] SET  MULTI_USER 
GO
ALTER DATABASE [FlipCardGame] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [FlipCardGame] SET DB_CHAINING OFF 
GO
ALTER DATABASE [FlipCardGame] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [FlipCardGame] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [FlipCardGame] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'FlipCardGame', N'ON'
GO
USE [FlipCardGame]
GO
/****** Object:  Table [dbo].[Easy]    Script Date: 7/19/2020 10:11:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Easy](
	[NickName] [nvarchar](20) NOT NULL,
	[Time] [nchar](10) NOT NULL,
	[timeInt] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Normal]    Script Date: 7/19/2020 10:11:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Normal](
	[NickName] [nvarchar](20) NOT NULL,
	[Time] [nchar](10) NOT NULL,
	[timeInt] [int] NULL
) ON [PRIMARY]

GO
INSERT [dbo].[Easy] ([NickName], [Time], [timeInt]) VALUES (N'max', N'00m31s    ', 31)
INSERT [dbo].[Easy] ([NickName], [Time], [timeInt]) VALUES (N'creator', N'00m37s    ', 37)
INSERT [dbo].[Easy] ([NickName], [Time], [timeInt]) VALUES (N'gai', N'00m31s    ', 31)
INSERT [dbo].[Easy] ([NickName], [Time], [timeInt]) VALUES (N'blackrice', N'00m26s    ', 26)
INSERT [dbo].[Easy] ([NickName], [Time], [timeInt]) VALUES (N'sand', N'00m28s    ', 28)
INSERT [dbo].[Easy] ([NickName], [Time], [timeInt]) VALUES (N'dell', N'00m24s    ', 24)
INSERT [dbo].[Easy] ([NickName], [Time], [timeInt]) VALUES (N'shadowlight', N'00m30s    ', 30)
INSERT [dbo].[Normal] ([NickName], [Time], [timeInt]) VALUES (N'starlord16112', N'01m01s    ', 61)
INSERT [dbo].[Normal] ([NickName], [Time], [timeInt]) VALUES (N'win10', N'01m25s    ', 85)
INSERT [dbo].[Normal] ([NickName], [Time], [timeInt]) VALUES (N'win', N'01m27s    ', 87)
INSERT [dbo].[Normal] ([NickName], [Time], [timeInt]) VALUES (N' 5', N'01m06s    ', 66)
USE [master]
GO
ALTER DATABASE [FlipCardGame] SET  READ_WRITE 
GO
