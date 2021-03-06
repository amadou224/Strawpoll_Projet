USE [master]
GO
/****** Object:  Database [Strawpoll]    Script Date: 25/04/2019 08:47:24 ******/
CREATE DATABASE [Strawpoll]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Strawpoll', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Strawpoll.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Strawpoll_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Strawpoll_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Strawpoll] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Strawpoll].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Strawpoll] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Strawpoll] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Strawpoll] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Strawpoll] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Strawpoll] SET ARITHABORT OFF 
GO
ALTER DATABASE [Strawpoll] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Strawpoll] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Strawpoll] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Strawpoll] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Strawpoll] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Strawpoll] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Strawpoll] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Strawpoll] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Strawpoll] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Strawpoll] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Strawpoll] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Strawpoll] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Strawpoll] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Strawpoll] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Strawpoll] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Strawpoll] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Strawpoll] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Strawpoll] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Strawpoll] SET  MULTI_USER 
GO
ALTER DATABASE [Strawpoll] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Strawpoll] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Strawpoll] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Strawpoll] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Strawpoll] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Strawpoll] SET QUERY_STORE = OFF
GO
USE [Strawpoll]
GO
/****** Object:  Table [dbo].[Resultat]    Script Date: 25/04/2019 08:47:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Resultat](
	[Id_Resultat] [int] IDENTITY(1,1) NOT NULL,
	[NbreVoteReponse1] [int] NULL,
	[NbreVoteReponse2] [int] NULL,
	[NbreVoteReponse3] [int] NULL,
	[NbreVotant] [int] NULL,
	[FK_Id_sondage] [int] NULL,
 CONSTRAINT [PK_Resultat] PRIMARY KEY CLUSTERED 
(
	[Id_Resultat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sondage]    Script Date: 25/04/2019 08:47:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sondage](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Questions] [nvarchar](255) NOT NULL,
	[Reponse1] [nvarchar](50) NOT NULL,
	[Reponse2] [nvarchar](50) NOT NULL,
	[Reponse3] [nvarchar](50) NOT NULL,
	[Choix] [bit] NULL,
	[ActiveSondage] [bit] NULL,
 CONSTRAINT [PK_Sondage] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Resultat] ON 

INSERT [dbo].[Resultat] ([Id_Resultat], [NbreVoteReponse1], [NbreVoteReponse2], [NbreVoteReponse3], [NbreVotant], [FK_Id_sondage]) VALUES (1, 1, 1, 1, 0, 45)
INSERT [dbo].[Resultat] ([Id_Resultat], [NbreVoteReponse1], [NbreVoteReponse2], [NbreVoteReponse3], [NbreVotant], [FK_Id_sondage]) VALUES (2, 2, 1, 2, 5, 46)
INSERT [dbo].[Resultat] ([Id_Resultat], [NbreVoteReponse1], [NbreVoteReponse2], [NbreVoteReponse3], [NbreVotant], [FK_Id_sondage]) VALUES (3, 0, 0, 0, 0, 47)
INSERT [dbo].[Resultat] ([Id_Resultat], [NbreVoteReponse1], [NbreVoteReponse2], [NbreVoteReponse3], [NbreVotant], [FK_Id_sondage]) VALUES (4, 0, 0, 0, 0, 48)
INSERT [dbo].[Resultat] ([Id_Resultat], [NbreVoteReponse1], [NbreVoteReponse2], [NbreVoteReponse3], [NbreVotant], [FK_Id_sondage]) VALUES (5, 1, 0, 0, 1, 49)
INSERT [dbo].[Resultat] ([Id_Resultat], [NbreVoteReponse1], [NbreVoteReponse2], [NbreVoteReponse3], [NbreVotant], [FK_Id_sondage]) VALUES (6, 4, 3, 3, 10, 50)
INSERT [dbo].[Resultat] ([Id_Resultat], [NbreVoteReponse1], [NbreVoteReponse2], [NbreVoteReponse3], [NbreVotant], [FK_Id_sondage]) VALUES (7, 1, 0, 1, 2, 51)
INSERT [dbo].[Resultat] ([Id_Resultat], [NbreVoteReponse1], [NbreVoteReponse2], [NbreVoteReponse3], [NbreVotant], [FK_Id_sondage]) VALUES (8, 1, 1, 1, 3, 52)
INSERT [dbo].[Resultat] ([Id_Resultat], [NbreVoteReponse1], [NbreVoteReponse2], [NbreVoteReponse3], [NbreVotant], [FK_Id_sondage]) VALUES (9, 0, 0, 0, 0, 53)
INSERT [dbo].[Resultat] ([Id_Resultat], [NbreVoteReponse1], [NbreVoteReponse2], [NbreVoteReponse3], [NbreVotant], [FK_Id_sondage]) VALUES (10, 1, 1, 1, 3, 54)
INSERT [dbo].[Resultat] ([Id_Resultat], [NbreVoteReponse1], [NbreVoteReponse2], [NbreVoteReponse3], [NbreVotant], [FK_Id_sondage]) VALUES (11, 1, 0, 1, 2, 55)
INSERT [dbo].[Resultat] ([Id_Resultat], [NbreVoteReponse1], [NbreVoteReponse2], [NbreVoteReponse3], [NbreVotant], [FK_Id_sondage]) VALUES (12, 1, 1, 1, 3, 56)
INSERT [dbo].[Resultat] ([Id_Resultat], [NbreVoteReponse1], [NbreVoteReponse2], [NbreVoteReponse3], [NbreVotant], [FK_Id_sondage]) VALUES (13, 1, 0, 0, 1, 57)
INSERT [dbo].[Resultat] ([Id_Resultat], [NbreVoteReponse1], [NbreVoteReponse2], [NbreVoteReponse3], [NbreVotant], [FK_Id_sondage]) VALUES (14, 1, 1, 1, 3, 58)
INSERT [dbo].[Resultat] ([Id_Resultat], [NbreVoteReponse1], [NbreVoteReponse2], [NbreVoteReponse3], [NbreVotant], [FK_Id_sondage]) VALUES (15, 1, 1, 0, 2, 59)
INSERT [dbo].[Resultat] ([Id_Resultat], [NbreVoteReponse1], [NbreVoteReponse2], [NbreVoteReponse3], [NbreVotant], [FK_Id_sondage]) VALUES (16, 0, 1, 0, 1, 60)
INSERT [dbo].[Resultat] ([Id_Resultat], [NbreVoteReponse1], [NbreVoteReponse2], [NbreVoteReponse3], [NbreVotant], [FK_Id_sondage]) VALUES (17, 1, 1, 0, 2, 61)
INSERT [dbo].[Resultat] ([Id_Resultat], [NbreVoteReponse1], [NbreVoteReponse2], [NbreVoteReponse3], [NbreVotant], [FK_Id_sondage]) VALUES (18, 2, 1, 0, 3, 62)
INSERT [dbo].[Resultat] ([Id_Resultat], [NbreVoteReponse1], [NbreVoteReponse2], [NbreVoteReponse3], [NbreVotant], [FK_Id_sondage]) VALUES (19, 2, 1, 1, 4, 63)
INSERT [dbo].[Resultat] ([Id_Resultat], [NbreVoteReponse1], [NbreVoteReponse2], [NbreVoteReponse3], [NbreVotant], [FK_Id_sondage]) VALUES (20, 2, 1, 2, 5, 64)
INSERT [dbo].[Resultat] ([Id_Resultat], [NbreVoteReponse1], [NbreVoteReponse2], [NbreVoteReponse3], [NbreVotant], [FK_Id_sondage]) VALUES (21, 2, 1, 1, 4, 65)
INSERT [dbo].[Resultat] ([Id_Resultat], [NbreVoteReponse1], [NbreVoteReponse2], [NbreVoteReponse3], [NbreVotant], [FK_Id_sondage]) VALUES (22, 1, 1, 0, 2, 66)
INSERT [dbo].[Resultat] ([Id_Resultat], [NbreVoteReponse1], [NbreVoteReponse2], [NbreVoteReponse3], [NbreVotant], [FK_Id_sondage]) VALUES (23, 2, 2, 1, 5, 67)
INSERT [dbo].[Resultat] ([Id_Resultat], [NbreVoteReponse1], [NbreVoteReponse2], [NbreVoteReponse3], [NbreVotant], [FK_Id_sondage]) VALUES (24, 6, 5, 4, 15, 68)
INSERT [dbo].[Resultat] ([Id_Resultat], [NbreVoteReponse1], [NbreVoteReponse2], [NbreVoteReponse3], [NbreVotant], [FK_Id_sondage]) VALUES (25, 1, 1, 1, 3, 69)
INSERT [dbo].[Resultat] ([Id_Resultat], [NbreVoteReponse1], [NbreVoteReponse2], [NbreVoteReponse3], [NbreVotant], [FK_Id_sondage]) VALUES (26, 2, 2, 2, 6, 70)
INSERT [dbo].[Resultat] ([Id_Resultat], [NbreVoteReponse1], [NbreVoteReponse2], [NbreVoteReponse3], [NbreVotant], [FK_Id_sondage]) VALUES (27, 1, 1, 0, 2, 71)
INSERT [dbo].[Resultat] ([Id_Resultat], [NbreVoteReponse1], [NbreVoteReponse2], [NbreVoteReponse3], [NbreVotant], [FK_Id_sondage]) VALUES (28, 1, 1, 1, 3, 72)
INSERT [dbo].[Resultat] ([Id_Resultat], [NbreVoteReponse1], [NbreVoteReponse2], [NbreVoteReponse3], [NbreVotant], [FK_Id_sondage]) VALUES (29, 1, 2, 0, 3, 73)
INSERT [dbo].[Resultat] ([Id_Resultat], [NbreVoteReponse1], [NbreVoteReponse2], [NbreVoteReponse3], [NbreVotant], [FK_Id_sondage]) VALUES (30, 0, 0, 0, 0, 74)
INSERT [dbo].[Resultat] ([Id_Resultat], [NbreVoteReponse1], [NbreVoteReponse2], [NbreVoteReponse3], [NbreVotant], [FK_Id_sondage]) VALUES (31, 1, 1, 0, 2, 75)
INSERT [dbo].[Resultat] ([Id_Resultat], [NbreVoteReponse1], [NbreVoteReponse2], [NbreVoteReponse3], [NbreVotant], [FK_Id_sondage]) VALUES (32, 1, 1, 1, 3, 76)
INSERT [dbo].[Resultat] ([Id_Resultat], [NbreVoteReponse1], [NbreVoteReponse2], [NbreVoteReponse3], [NbreVotant], [FK_Id_sondage]) VALUES (33, 0, 0, 0, 0, 77)
INSERT [dbo].[Resultat] ([Id_Resultat], [NbreVoteReponse1], [NbreVoteReponse2], [NbreVoteReponse3], [NbreVotant], [FK_Id_sondage]) VALUES (34, 1, 1, 1, 3, 78)
INSERT [dbo].[Resultat] ([Id_Resultat], [NbreVoteReponse1], [NbreVoteReponse2], [NbreVoteReponse3], [NbreVotant], [FK_Id_sondage]) VALUES (35, 1, 0, 0, 1, 79)
INSERT [dbo].[Resultat] ([Id_Resultat], [NbreVoteReponse1], [NbreVoteReponse2], [NbreVoteReponse3], [NbreVotant], [FK_Id_sondage]) VALUES (36, 3, 1, 1, 5, 80)
INSERT [dbo].[Resultat] ([Id_Resultat], [NbreVoteReponse1], [NbreVoteReponse2], [NbreVoteReponse3], [NbreVotant], [FK_Id_sondage]) VALUES (37, 2, 2, 2, 6, 81)
INSERT [dbo].[Resultat] ([Id_Resultat], [NbreVoteReponse1], [NbreVoteReponse2], [NbreVoteReponse3], [NbreVotant], [FK_Id_sondage]) VALUES (38, 2, 1, 3, 6, 82)
INSERT [dbo].[Resultat] ([Id_Resultat], [NbreVoteReponse1], [NbreVoteReponse2], [NbreVoteReponse3], [NbreVotant], [FK_Id_sondage]) VALUES (39, 1, 1, 1, 3, 83)
INSERT [dbo].[Resultat] ([Id_Resultat], [NbreVoteReponse1], [NbreVoteReponse2], [NbreVoteReponse3], [NbreVotant], [FK_Id_sondage]) VALUES (40, 1, 1, 1, 3, 84)
INSERT [dbo].[Resultat] ([Id_Resultat], [NbreVoteReponse1], [NbreVoteReponse2], [NbreVoteReponse3], [NbreVotant], [FK_Id_sondage]) VALUES (41, 1, 1, 1, 3, 85)
INSERT [dbo].[Resultat] ([Id_Resultat], [NbreVoteReponse1], [NbreVoteReponse2], [NbreVoteReponse3], [NbreVotant], [FK_Id_sondage]) VALUES (42, 1, 0, 1, 2, 86)
INSERT [dbo].[Resultat] ([Id_Resultat], [NbreVoteReponse1], [NbreVoteReponse2], [NbreVoteReponse3], [NbreVotant], [FK_Id_sondage]) VALUES (43, 1, 3, 1, 5, 87)
INSERT [dbo].[Resultat] ([Id_Resultat], [NbreVoteReponse1], [NbreVoteReponse2], [NbreVoteReponse3], [NbreVotant], [FK_Id_sondage]) VALUES (44, 4, 4, 1, 9, 88)
INSERT [dbo].[Resultat] ([Id_Resultat], [NbreVoteReponse1], [NbreVoteReponse2], [NbreVoteReponse3], [NbreVotant], [FK_Id_sondage]) VALUES (45, 1, 2, 2, 5, 89)
INSERT [dbo].[Resultat] ([Id_Resultat], [NbreVoteReponse1], [NbreVoteReponse2], [NbreVoteReponse3], [NbreVotant], [FK_Id_sondage]) VALUES (46, 1, 1, 0, 2, 90)
INSERT [dbo].[Resultat] ([Id_Resultat], [NbreVoteReponse1], [NbreVoteReponse2], [NbreVoteReponse3], [NbreVotant], [FK_Id_sondage]) VALUES (47, 0, 0, 0, 0, 91)
INSERT [dbo].[Resultat] ([Id_Resultat], [NbreVoteReponse1], [NbreVoteReponse2], [NbreVoteReponse3], [NbreVotant], [FK_Id_sondage]) VALUES (48, 1, 1, 0, 2, 92)
INSERT [dbo].[Resultat] ([Id_Resultat], [NbreVoteReponse1], [NbreVoteReponse2], [NbreVoteReponse3], [NbreVotant], [FK_Id_sondage]) VALUES (49, 1, 1, 0, 2, 93)
INSERT [dbo].[Resultat] ([Id_Resultat], [NbreVoteReponse1], [NbreVoteReponse2], [NbreVoteReponse3], [NbreVotant], [FK_Id_sondage]) VALUES (50, 0, 0, 0, 0, 94)
INSERT [dbo].[Resultat] ([Id_Resultat], [NbreVoteReponse1], [NbreVoteReponse2], [NbreVoteReponse3], [NbreVotant], [FK_Id_sondage]) VALUES (51, 0, 0, 0, 0, 95)
INSERT [dbo].[Resultat] ([Id_Resultat], [NbreVoteReponse1], [NbreVoteReponse2], [NbreVoteReponse3], [NbreVotant], [FK_Id_sondage]) VALUES (52, 1, 1, 1, 3, 96)
INSERT [dbo].[Resultat] ([Id_Resultat], [NbreVoteReponse1], [NbreVoteReponse2], [NbreVoteReponse3], [NbreVotant], [FK_Id_sondage]) VALUES (53, 0, 0, 0, 0, 97)
INSERT [dbo].[Resultat] ([Id_Resultat], [NbreVoteReponse1], [NbreVoteReponse2], [NbreVoteReponse3], [NbreVotant], [FK_Id_sondage]) VALUES (54, 0, 1, 0, 1, 98)
INSERT [dbo].[Resultat] ([Id_Resultat], [NbreVoteReponse1], [NbreVoteReponse2], [NbreVoteReponse3], [NbreVotant], [FK_Id_sondage]) VALUES (55, 0, 0, 0, 0, 99)
INSERT [dbo].[Resultat] ([Id_Resultat], [NbreVoteReponse1], [NbreVoteReponse2], [NbreVoteReponse3], [NbreVotant], [FK_Id_sondage]) VALUES (56, 1, 1, 1, 3, 100)
INSERT [dbo].[Resultat] ([Id_Resultat], [NbreVoteReponse1], [NbreVoteReponse2], [NbreVoteReponse3], [NbreVotant], [FK_Id_sondage]) VALUES (57, 3, 2, 3, 8, 101)
INSERT [dbo].[Resultat] ([Id_Resultat], [NbreVoteReponse1], [NbreVoteReponse2], [NbreVoteReponse3], [NbreVotant], [FK_Id_sondage]) VALUES (58, 1, 1, 0, 2, 102)
INSERT [dbo].[Resultat] ([Id_Resultat], [NbreVoteReponse1], [NbreVoteReponse2], [NbreVoteReponse3], [NbreVotant], [FK_Id_sondage]) VALUES (59, 0, 0, 0, 0, 103)
INSERT [dbo].[Resultat] ([Id_Resultat], [NbreVoteReponse1], [NbreVoteReponse2], [NbreVoteReponse3], [NbreVotant], [FK_Id_sondage]) VALUES (60, 0, 0, 0, 0, 104)
INSERT [dbo].[Resultat] ([Id_Resultat], [NbreVoteReponse1], [NbreVoteReponse2], [NbreVoteReponse3], [NbreVotant], [FK_Id_sondage]) VALUES (61, 2, 0, 2, 4, 105)
INSERT [dbo].[Resultat] ([Id_Resultat], [NbreVoteReponse1], [NbreVoteReponse2], [NbreVoteReponse3], [NbreVotant], [FK_Id_sondage]) VALUES (62, 0, 0, 0, 0, 106)
INSERT [dbo].[Resultat] ([Id_Resultat], [NbreVoteReponse1], [NbreVoteReponse2], [NbreVoteReponse3], [NbreVotant], [FK_Id_sondage]) VALUES (63, 0, 0, 0, 0, 107)
INSERT [dbo].[Resultat] ([Id_Resultat], [NbreVoteReponse1], [NbreVoteReponse2], [NbreVoteReponse3], [NbreVotant], [FK_Id_sondage]) VALUES (64, 1, 1, 1, 3, 108)
INSERT [dbo].[Resultat] ([Id_Resultat], [NbreVoteReponse1], [NbreVoteReponse2], [NbreVoteReponse3], [NbreVotant], [FK_Id_sondage]) VALUES (65, 1, 1, 1, 3, 109)
INSERT [dbo].[Resultat] ([Id_Resultat], [NbreVoteReponse1], [NbreVoteReponse2], [NbreVoteReponse3], [NbreVotant], [FK_Id_sondage]) VALUES (66, 0, 1, 1, 2, 110)
INSERT [dbo].[Resultat] ([Id_Resultat], [NbreVoteReponse1], [NbreVoteReponse2], [NbreVoteReponse3], [NbreVotant], [FK_Id_sondage]) VALUES (67, 0, 0, 0, 0, 111)
INSERT [dbo].[Resultat] ([Id_Resultat], [NbreVoteReponse1], [NbreVoteReponse2], [NbreVoteReponse3], [NbreVotant], [FK_Id_sondage]) VALUES (68, 1, 0, 0, 1, 112)
INSERT [dbo].[Resultat] ([Id_Resultat], [NbreVoteReponse1], [NbreVoteReponse2], [NbreVoteReponse3], [NbreVotant], [FK_Id_sondage]) VALUES (69, 0, 0, 0, 0, 113)
INSERT [dbo].[Resultat] ([Id_Resultat], [NbreVoteReponse1], [NbreVoteReponse2], [NbreVoteReponse3], [NbreVotant], [FK_Id_sondage]) VALUES (70, 1, 0, 0, 1, 114)
INSERT [dbo].[Resultat] ([Id_Resultat], [NbreVoteReponse1], [NbreVoteReponse2], [NbreVoteReponse3], [NbreVotant], [FK_Id_sondage]) VALUES (71, 0, 1, 0, 1, 115)
INSERT [dbo].[Resultat] ([Id_Resultat], [NbreVoteReponse1], [NbreVoteReponse2], [NbreVoteReponse3], [NbreVotant], [FK_Id_sondage]) VALUES (72, 0, 0, 0, 0, 116)
INSERT [dbo].[Resultat] ([Id_Resultat], [NbreVoteReponse1], [NbreVoteReponse2], [NbreVoteReponse3], [NbreVotant], [FK_Id_sondage]) VALUES (73, 0, 1, 1, 2, 117)
INSERT [dbo].[Resultat] ([Id_Resultat], [NbreVoteReponse1], [NbreVoteReponse2], [NbreVoteReponse3], [NbreVotant], [FK_Id_sondage]) VALUES (74, 0, 0, 0, 0, 118)
INSERT [dbo].[Resultat] ([Id_Resultat], [NbreVoteReponse1], [NbreVoteReponse2], [NbreVoteReponse3], [NbreVotant], [FK_Id_sondage]) VALUES (75, 0, 0, 0, 0, 119)
INSERT [dbo].[Resultat] ([Id_Resultat], [NbreVoteReponse1], [NbreVoteReponse2], [NbreVoteReponse3], [NbreVotant], [FK_Id_sondage]) VALUES (76, 2, 1, 2, 5, 120)
INSERT [dbo].[Resultat] ([Id_Resultat], [NbreVoteReponse1], [NbreVoteReponse2], [NbreVoteReponse3], [NbreVotant], [FK_Id_sondage]) VALUES (77, 1, 0, 0, 1, 121)
INSERT [dbo].[Resultat] ([Id_Resultat], [NbreVoteReponse1], [NbreVoteReponse2], [NbreVoteReponse3], [NbreVotant], [FK_Id_sondage]) VALUES (78, 0, 0, 0, 0, 122)
INSERT [dbo].[Resultat] ([Id_Resultat], [NbreVoteReponse1], [NbreVoteReponse2], [NbreVoteReponse3], [NbreVotant], [FK_Id_sondage]) VALUES (79, 0, 0, 0, 0, 123)
INSERT [dbo].[Resultat] ([Id_Resultat], [NbreVoteReponse1], [NbreVoteReponse2], [NbreVoteReponse3], [NbreVotant], [FK_Id_sondage]) VALUES (80, 1, 1, 0, 2, 124)
INSERT [dbo].[Resultat] ([Id_Resultat], [NbreVoteReponse1], [NbreVoteReponse2], [NbreVoteReponse3], [NbreVotant], [FK_Id_sondage]) VALUES (81, 0, 0, 0, 0, 125)
INSERT [dbo].[Resultat] ([Id_Resultat], [NbreVoteReponse1], [NbreVoteReponse2], [NbreVoteReponse3], [NbreVotant], [FK_Id_sondage]) VALUES (82, 1, 1, 1, 3, 126)
INSERT [dbo].[Resultat] ([Id_Resultat], [NbreVoteReponse1], [NbreVoteReponse2], [NbreVoteReponse3], [NbreVotant], [FK_Id_sondage]) VALUES (83, 1, 1, 1, 3, 127)
INSERT [dbo].[Resultat] ([Id_Resultat], [NbreVoteReponse1], [NbreVoteReponse2], [NbreVoteReponse3], [NbreVotant], [FK_Id_sondage]) VALUES (84, 0, 0, 0, 0, 128)
SET IDENTITY_INSERT [dbo].[Resultat] OFF
SET IDENTITY_INSERT [dbo].[Sondage] ON 

INSERT [dbo].[Sondage] ([ID], [Questions], [Reponse1], [Reponse2], [Reponse3], [Choix], [ActiveSondage]) VALUES (1, N'Votre repas préferé', N'riz', N'pates', N'salade', 1, NULL)
INSERT [dbo].[Sondage] ([ID], [Questions], [Reponse1], [Reponse2], [Reponse3], [Choix], [ActiveSondage]) VALUES (2, N'Votre sport préfére?', N'foot', N'golf', N'tennis', 1, NULL)
INSERT [dbo].[Sondage] ([ID], [Questions], [Reponse1], [Reponse2], [Reponse3], [Choix], [ActiveSondage]) VALUES (3, N'quel est ton pays preféré?', N'France', N'Italie ', N'Russie', 1, NULL)
INSERT [dbo].[Sondage] ([ID], [Questions], [Reponse1], [Reponse2], [Reponse3], [Choix], [ActiveSondage]) VALUES (4, N'Votre restaurant preféré', N'Chut', N'Hut Livraison', N'Dominos', 1, NULL)
INSERT [dbo].[Sondage] ([ID], [Questions], [Reponse1], [Reponse2], [Reponse3], [Choix], [ActiveSondage]) VALUES (5, N'Votre homme d''etat ', N'Chirac', N'Mandela', N'Obama', 0, NULL)
INSERT [dbo].[Sondage] ([ID], [Questions], [Reponse1], [Reponse2], [Reponse3], [Choix], [ActiveSondage]) VALUES (6, N'Votre sport préfére?', N'foot', N'golf', N'tennis', 0, NULL)
INSERT [dbo].[Sondage] ([ID], [Questions], [Reponse1], [Reponse2], [Reponse3], [Choix], [ActiveSondage]) VALUES (7, N'capitale favorite', N'paris ', N'Italie ', N'berlin', 0, NULL)
INSERT [dbo].[Sondage] ([ID], [Questions], [Reponse1], [Reponse2], [Reponse3], [Choix], [ActiveSondage]) VALUES (8, N'Votre restaurant preféré', N'Chut', N'Hut Livraison', N'repas in', 0, NULL)
INSERT [dbo].[Sondage] ([ID], [Questions], [Reponse1], [Reponse2], [Reponse3], [Choix], [ActiveSondage]) VALUES (9, N'Votre homme d''etat ', N'Chirac', N'Mandela', N'Obama', 1, NULL)
INSERT [dbo].[Sondage] ([ID], [Questions], [Reponse1], [Reponse2], [Reponse3], [Choix], [ActiveSondage]) VALUES (10, N'Votre sport préfére?', N'foot', N'golf', N'tennis', 0, NULL)
INSERT [dbo].[Sondage] ([ID], [Questions], [Reponse1], [Reponse2], [Reponse3], [Choix], [ActiveSondage]) VALUES (11, N'quel est ton pays preféré?', N'France', N'Italie ', N'russie', 0, NULL)
INSERT [dbo].[Sondage] ([ID], [Questions], [Reponse1], [Reponse2], [Reponse3], [Choix], [ActiveSondage]) VALUES (12, N'quel est votre sportif préferé', N'jordan', N'ronaldo', N'durant', 0, NULL)
INSERT [dbo].[Sondage] ([ID], [Questions], [Reponse1], [Reponse2], [Reponse3], [Choix], [ActiveSondage]) VALUES (13, N'quel est votre sportif de foot ', N'Zidane', N'Ronaldo', N'Mané', 1, NULL)
INSERT [dbo].[Sondage] ([ID], [Questions], [Reponse1], [Reponse2], [Reponse3], [Choix], [ActiveSondage]) VALUES (14, N'quel est votre sportif de basket pref', N'Dirk', N'Curry', N'Lebron', 1, NULL)
INSERT [dbo].[Sondage] ([ID], [Questions], [Reponse1], [Reponse2], [Reponse3], [Choix], [ActiveSondage]) VALUES (15, N'quel est ton journaliste pref', N'Mary Patrux', N'Olivier Menard', N'Jean', 1, NULL)
INSERT [dbo].[Sondage] ([ID], [Questions], [Reponse1], [Reponse2], [Reponse3], [Choix], [ActiveSondage]) VALUES (16, N'capitale favorite', N'Conakry', N'Dakar', N'Freetown', 1, NULL)
INSERT [dbo].[Sondage] ([ID], [Questions], [Reponse1], [Reponse2], [Reponse3], [Choix], [ActiveSondage]) VALUES (17, N'Groupe de musique pref', N'Danakil', N'Tiken', N'tiken', 1, NULL)
INSERT [dbo].[Sondage] ([ID], [Questions], [Reponse1], [Reponse2], [Reponse3], [Choix], [ActiveSondage]) VALUES (18, N'capitale favorite', N'paris ', N'conakry', N'berlin', 1, NULL)
INSERT [dbo].[Sondage] ([ID], [Questions], [Reponse1], [Reponse2], [Reponse3], [Choix], [ActiveSondage]) VALUES (19, N'capitale favorite', N'Dakar', N'Paris', N'Lisbonne', 1, NULL)
INSERT [dbo].[Sondage] ([ID], [Questions], [Reponse1], [Reponse2], [Reponse3], [Choix], [ActiveSondage]) VALUES (20, N'Votre sport préfére?', N'foot', N'golf', N'tennis', 1, NULL)
INSERT [dbo].[Sondage] ([ID], [Questions], [Reponse1], [Reponse2], [Reponse3], [Choix], [ActiveSondage]) VALUES (21, N'Votre sport préfére?', N'foot', N'golf', N'tennis', 1, NULL)
INSERT [dbo].[Sondage] ([ID], [Questions], [Reponse1], [Reponse2], [Reponse3], [Choix], [ActiveSondage]) VALUES (22, N'Votre sport préfére?', N'foot', N'golf', N'tennis', 1, NULL)
INSERT [dbo].[Sondage] ([ID], [Questions], [Reponse1], [Reponse2], [Reponse3], [Choix], [ActiveSondage]) VALUES (23, N'Votre sport préfére?', N'foot', N'petanque ', N'tennis', 1, NULL)
INSERT [dbo].[Sondage] ([ID], [Questions], [Reponse1], [Reponse2], [Reponse3], [Choix], [ActiveSondage]) VALUES (24, N'Votre sport préfére?', N'foot', N'golf', N'tennis', 1, NULL)
INSERT [dbo].[Sondage] ([ID], [Questions], [Reponse1], [Reponse2], [Reponse3], [Choix], [ActiveSondage]) VALUES (25, N'capitale favorite', N'paris ', N'conakry', N'berlin', 1, NULL)
INSERT [dbo].[Sondage] ([ID], [Questions], [Reponse1], [Reponse2], [Reponse3], [Choix], [ActiveSondage]) VALUES (26, N'capitale favorite', N'paris ', N'conakry', N'geneve', 1, NULL)
INSERT [dbo].[Sondage] ([ID], [Questions], [Reponse1], [Reponse2], [Reponse3], [Choix], [ActiveSondage]) VALUES (27, N'pays pref', N'USA', N'COLOMBIE', N'JAPON', 1, NULL)
INSERT [dbo].[Sondage] ([ID], [Questions], [Reponse1], [Reponse2], [Reponse3], [Choix], [ActiveSondage]) VALUES (28, N'Ville pref', N'Strasbourg', N'Colmar', N'Mulhouse', 0, NULL)
INSERT [dbo].[Sondage] ([ID], [Questions], [Reponse1], [Reponse2], [Reponse3], [Choix], [ActiveSondage]) VALUES (29, N'Votre sport préfére?', N'foot', N'golf', N'tennis', 1, NULL)
INSERT [dbo].[Sondage] ([ID], [Questions], [Reponse1], [Reponse2], [Reponse3], [Choix], [ActiveSondage]) VALUES (30, N'quel est ton pays preféré?', N'Algerie', N'Canada', N'Suisse', 1, NULL)
INSERT [dbo].[Sondage] ([ID], [Questions], [Reponse1], [Reponse2], [Reponse3], [Choix], [ActiveSondage]) VALUES (31, N'Votre sport préfére?', N'foot', N'golf', N'tennis', 1, NULL)
INSERT [dbo].[Sondage] ([ID], [Questions], [Reponse1], [Reponse2], [Reponse3], [Choix], [ActiveSondage]) VALUES (32, N'Ecole pref', N'Yale', N'UDS', N'ULP', 1, NULL)
INSERT [dbo].[Sondage] ([ID], [Questions], [Reponse1], [Reponse2], [Reponse3], [Choix], [ActiveSondage]) VALUES (33, N'capitale favorite', N'paris ', N'conakry', N'berlin', 1, NULL)
INSERT [dbo].[Sondage] ([ID], [Questions], [Reponse1], [Reponse2], [Reponse3], [Choix], [ActiveSondage]) VALUES (34, N'Votre sport préfére?', N'foot', N'golf', N'tennis', 1, NULL)
INSERT [dbo].[Sondage] ([ID], [Questions], [Reponse1], [Reponse2], [Reponse3], [Choix], [ActiveSondage]) VALUES (35, N'Votre homme d''etat ', N'Chirac', N'Mandela', N'Obama', 1, NULL)
INSERT [dbo].[Sondage] ([ID], [Questions], [Reponse1], [Reponse2], [Reponse3], [Choix], [ActiveSondage]) VALUES (36, N'capitale favorite', N'paris', N'conakry', N'Russie', 1, NULL)
INSERT [dbo].[Sondage] ([ID], [Questions], [Reponse1], [Reponse2], [Reponse3], [Choix], [ActiveSondage]) VALUES (37, N'Votre restaurant preféré', N'Chut', N'Hut Livraison', N'Dominos', 1, NULL)
INSERT [dbo].[Sondage] ([ID], [Questions], [Reponse1], [Reponse2], [Reponse3], [Choix], [ActiveSondage]) VALUES (38, N'capitale favorite', N'paris ', N'conakry', N'berlin', 1, NULL)
INSERT [dbo].[Sondage] ([ID], [Questions], [Reponse1], [Reponse2], [Reponse3], [Choix], [ActiveSondage]) VALUES (39, N'Votre sport préfére?', N'foot', N'golf', N'tennis', 1, NULL)
INSERT [dbo].[Sondage] ([ID], [Questions], [Reponse1], [Reponse2], [Reponse3], [Choix], [ActiveSondage]) VALUES (40, N'capitale favorite', N'paris ', N'conakry', N'berlin', 1, NULL)
INSERT [dbo].[Sondage] ([ID], [Questions], [Reponse1], [Reponse2], [Reponse3], [Choix], [ActiveSondage]) VALUES (41, N'Votre sport préfére?', N'foot', N'golf', N'tennis', 1, NULL)
INSERT [dbo].[Sondage] ([ID], [Questions], [Reponse1], [Reponse2], [Reponse3], [Choix], [ActiveSondage]) VALUES (42, N'capitale favorite', N'paris ', N'Italie ', N'Obama', 1, NULL)
INSERT [dbo].[Sondage] ([ID], [Questions], [Reponse1], [Reponse2], [Reponse3], [Choix], [ActiveSondage]) VALUES (43, N'capitale favorite', N'paris ', N'conakry', N'berlin', 1, NULL)
INSERT [dbo].[Sondage] ([ID], [Questions], [Reponse1], [Reponse2], [Reponse3], [Choix], [ActiveSondage]) VALUES (44, N'Votre sport préfére?', N'foot', N'golf', N'tennis', 1, NULL)
INSERT [dbo].[Sondage] ([ID], [Questions], [Reponse1], [Reponse2], [Reponse3], [Choix], [ActiveSondage]) VALUES (45, N'Votre sport préfére?', N'foot', N'golf', N'tennis', 1, NULL)
INSERT [dbo].[Sondage] ([ID], [Questions], [Reponse1], [Reponse2], [Reponse3], [Choix], [ActiveSondage]) VALUES (46, N'Votre sport préfére?', N'foot', N'golf', N'tennis', 1, NULL)
INSERT [dbo].[Sondage] ([ID], [Questions], [Reponse1], [Reponse2], [Reponse3], [Choix], [ActiveSondage]) VALUES (47, N'Votre sport préfére?', N'foot', N'golf', N'tennis', 0, NULL)
INSERT [dbo].[Sondage] ([ID], [Questions], [Reponse1], [Reponse2], [Reponse3], [Choix], [ActiveSondage]) VALUES (48, N'capitale favorite', N'paris ', N'conakry', N'berlin', 1, NULL)
INSERT [dbo].[Sondage] ([ID], [Questions], [Reponse1], [Reponse2], [Reponse3], [Choix], [ActiveSondage]) VALUES (49, N'capitale favorite', N'paris ', N'conakry', N'berlin', 0, NULL)
INSERT [dbo].[Sondage] ([ID], [Questions], [Reponse1], [Reponse2], [Reponse3], [Choix], [ActiveSondage]) VALUES (50, N'Votre sport préfére?', N'foot', N'golf', N'tennis', 1, NULL)
INSERT [dbo].[Sondage] ([ID], [Questions], [Reponse1], [Reponse2], [Reponse3], [Choix], [ActiveSondage]) VALUES (51, N'capitale favorite', N'paris ', N'conakry', N'berlin', 1, NULL)
INSERT [dbo].[Sondage] ([ID], [Questions], [Reponse1], [Reponse2], [Reponse3], [Choix], [ActiveSondage]) VALUES (52, N'Votre sport préfére?', N'foot', N'golf', N'tennis', 1, NULL)
INSERT [dbo].[Sondage] ([ID], [Questions], [Reponse1], [Reponse2], [Reponse3], [Choix], [ActiveSondage]) VALUES (53, N'quel est ton pays preféré?', N'France', N'Italie ', N'Russie', 1, NULL)
INSERT [dbo].[Sondage] ([ID], [Questions], [Reponse1], [Reponse2], [Reponse3], [Choix], [ActiveSondage]) VALUES (54, N'Quelle est votre emission favorite?', N'Les grosses tetes', N'Equipe du soir', N'Cfc', 1, NULL)
INSERT [dbo].[Sondage] ([ID], [Questions], [Reponse1], [Reponse2], [Reponse3], [Choix], [ActiveSondage]) VALUES (55, N'Votre sport préfére?', N'foot', N'golf', N'tennis', 1, NULL)
INSERT [dbo].[Sondage] ([ID], [Questions], [Reponse1], [Reponse2], [Reponse3], [Choix], [ActiveSondage]) VALUES (56, N'quel est ton pays preféré?', N'ghana', N'Italie ', N'Russie', 1, NULL)
INSERT [dbo].[Sondage] ([ID], [Questions], [Reponse1], [Reponse2], [Reponse3], [Choix], [ActiveSondage]) VALUES (57, N'Votre sport préfére?', N'foot', N'golf', N'Russie', 0, 0)
INSERT [dbo].[Sondage] ([ID], [Questions], [Reponse1], [Reponse2], [Reponse3], [Choix], [ActiveSondage]) VALUES (58, N'Votre sport préfére?', N'foot', N'golf', N'Dominos', 1, 0)
INSERT [dbo].[Sondage] ([ID], [Questions], [Reponse1], [Reponse2], [Reponse3], [Choix], [ActiveSondage]) VALUES (59, N'Votre sport préfére?', N'foot', N'conakry', N'repas in', 1, 0)
INSERT [dbo].[Sondage] ([ID], [Questions], [Reponse1], [Reponse2], [Reponse3], [Choix], [ActiveSondage]) VALUES (60, N'Votre sport préfére?', N'foot', N'golf', N'repas in', 0, 0)
INSERT [dbo].[Sondage] ([ID], [Questions], [Reponse1], [Reponse2], [Reponse3], [Choix], [ActiveSondage]) VALUES (61, N'Votre sport préfére?', N'foot', N'golf', N'repas in', 1, 0)
INSERT [dbo].[Sondage] ([ID], [Questions], [Reponse1], [Reponse2], [Reponse3], [Choix], [ActiveSondage]) VALUES (62, N'Votre sport préfére?', N'foot', N'conakry', N'Obama', 0, 0)
INSERT [dbo].[Sondage] ([ID], [Questions], [Reponse1], [Reponse2], [Reponse3], [Choix], [ActiveSondage]) VALUES (63, N'capitale favorite', N'paris ', N'conakry', N'berlin', 1, 0)
INSERT [dbo].[Sondage] ([ID], [Questions], [Reponse1], [Reponse2], [Reponse3], [Choix], [ActiveSondage]) VALUES (64, N'Votre sport préfére?', N'foot', N'conakry', N'Dominos', 1, 0)
INSERT [dbo].[Sondage] ([ID], [Questions], [Reponse1], [Reponse2], [Reponse3], [Choix], [ActiveSondage]) VALUES (65, N'Votre sport préfére?', N'foot', N'conakry', N'repas in', 1, 0)
INSERT [dbo].[Sondage] ([ID], [Questions], [Reponse1], [Reponse2], [Reponse3], [Choix], [ActiveSondage]) VALUES (66, N'Votre sport préfére?', N'foot', N'conakry', N'Obama', 1, 0)
INSERT [dbo].[Sondage] ([ID], [Questions], [Reponse1], [Reponse2], [Reponse3], [Choix], [ActiveSondage]) VALUES (67, N'capitale favorite', N'paris ', N'conakry', N'berlin', 1, 0)
INSERT [dbo].[Sondage] ([ID], [Questions], [Reponse1], [Reponse2], [Reponse3], [Choix], [ActiveSondage]) VALUES (68, N'Quel est votre sportif preféré?', N'Zidane', N'Jordan', N'Kawhi', 1, 0)
INSERT [dbo].[Sondage] ([ID], [Questions], [Reponse1], [Reponse2], [Reponse3], [Choix], [ActiveSondage]) VALUES (69, N'Votre sport préfére?', N'foot', N'golf', N'tennis', 1, 0)
INSERT [dbo].[Sondage] ([ID], [Questions], [Reponse1], [Reponse2], [Reponse3], [Choix], [ActiveSondage]) VALUES (70, N'capitale favorite', N'paris ', N'conakry', N'berlin', 1, 0)
INSERT [dbo].[Sondage] ([ID], [Questions], [Reponse1], [Reponse2], [Reponse3], [Choix], [ActiveSondage]) VALUES (71, N'votre sportif pref', N'zidane', N'jordan', N'tkie', 1, 0)
INSERT [dbo].[Sondage] ([ID], [Questions], [Reponse1], [Reponse2], [Reponse3], [Choix], [ActiveSondage]) VALUES (72, N'votre sport prefere', N'foot', N'basket', N'tennis', 1, 0)
INSERT [dbo].[Sondage] ([ID], [Questions], [Reponse1], [Reponse2], [Reponse3], [Choix], [ActiveSondage]) VALUES (73, N'votre repas prefer', N'riz', N'pate', N'salade', 1, 0)
INSERT [dbo].[Sondage] ([ID], [Questions], [Reponse1], [Reponse2], [Reponse3], [Choix], [ActiveSondage]) VALUES (74, N'votre repas prefer', N'riz', N'pate', N'salade', 1, 0)
INSERT [dbo].[Sondage] ([ID], [Questions], [Reponse1], [Reponse2], [Reponse3], [Choix], [ActiveSondage]) VALUES (75, N'votre repas prefer', N'riz', N'pate', N'salade', 1, 0)
INSERT [dbo].[Sondage] ([ID], [Questions], [Reponse1], [Reponse2], [Reponse3], [Choix], [ActiveSondage]) VALUES (76, N'votre repas prefer', N'riz', N'pate', N'salade', 1, 0)
INSERT [dbo].[Sondage] ([ID], [Questions], [Reponse1], [Reponse2], [Reponse3], [Choix], [ActiveSondage]) VALUES (77, N'votre repas prefer', N'riz', N'pate', N'salade', 1, 0)
INSERT [dbo].[Sondage] ([ID], [Questions], [Reponse1], [Reponse2], [Reponse3], [Choix], [ActiveSondage]) VALUES (78, N'votre repas prefer', N'riz', N'pate', N'salade', 1, 0)
INSERT [dbo].[Sondage] ([ID], [Questions], [Reponse1], [Reponse2], [Reponse3], [Choix], [ActiveSondage]) VALUES (79, N'votre repas prefer', N'riz', N'pate', N'salade', 1, 0)
INSERT [dbo].[Sondage] ([ID], [Questions], [Reponse1], [Reponse2], [Reponse3], [Choix], [ActiveSondage]) VALUES (80, N'votre repas prefer', N'riz', N'pate', N'salade', 1, 1)
INSERT [dbo].[Sondage] ([ID], [Questions], [Reponse1], [Reponse2], [Reponse3], [Choix], [ActiveSondage]) VALUES (81, N'votre repas prefer', N'riz', N'pate', N'salade', 1, 0)
INSERT [dbo].[Sondage] ([ID], [Questions], [Reponse1], [Reponse2], [Reponse3], [Choix], [ActiveSondage]) VALUES (82, N'votre repas prefer', N'riz', N'pate', N'salade', 1, 0)
INSERT [dbo].[Sondage] ([ID], [Questions], [Reponse1], [Reponse2], [Reponse3], [Choix], [ActiveSondage]) VALUES (83, N'votre repas prefer', N'riz', N'pate', N'salade', 1, 0)
INSERT [dbo].[Sondage] ([ID], [Questions], [Reponse1], [Reponse2], [Reponse3], [Choix], [ActiveSondage]) VALUES (84, N'votre repas prefer', N'riz', N'pate', N'salade', 1, 1)
INSERT [dbo].[Sondage] ([ID], [Questions], [Reponse1], [Reponse2], [Reponse3], [Choix], [ActiveSondage]) VALUES (85, N'votre repas prefer', N'riz', N'pate', N'salade', 1, 1)
INSERT [dbo].[Sondage] ([ID], [Questions], [Reponse1], [Reponse2], [Reponse3], [Choix], [ActiveSondage]) VALUES (86, N'votre repas prefer', N'riz', N'pate', N'salade', 1, 1)
INSERT [dbo].[Sondage] ([ID], [Questions], [Reponse1], [Reponse2], [Reponse3], [Choix], [ActiveSondage]) VALUES (87, N'ton sport', N'foot', N'basket', N'golf', 1, 1)
INSERT [dbo].[Sondage] ([ID], [Questions], [Reponse1], [Reponse2], [Reponse3], [Choix], [ActiveSondage]) VALUES (88, N'votre repas prefer', N'riz', N'pate', N'salade', 1, 1)
INSERT [dbo].[Sondage] ([ID], [Questions], [Reponse1], [Reponse2], [Reponse3], [Choix], [ActiveSondage]) VALUES (89, N'votre repas prefer', N'riz', N'pate', N'salade', 1, 1)
INSERT [dbo].[Sondage] ([ID], [Questions], [Reponse1], [Reponse2], [Reponse3], [Choix], [ActiveSondage]) VALUES (90, N'votre repas prefer', N'riz', N'pate', N'salade', 1, 0)
INSERT [dbo].[Sondage] ([ID], [Questions], [Reponse1], [Reponse2], [Reponse3], [Choix], [ActiveSondage]) VALUES (91, N'votre repas prefer', N'riz', N'pate', N'salade', 1, 1)
INSERT [dbo].[Sondage] ([ID], [Questions], [Reponse1], [Reponse2], [Reponse3], [Choix], [ActiveSondage]) VALUES (92, N'votre repas prefer', N'riz', N'pate', N'salade', 1, 1)
INSERT [dbo].[Sondage] ([ID], [Questions], [Reponse1], [Reponse2], [Reponse3], [Choix], [ActiveSondage]) VALUES (93, N'votre repas prefer', N'riz', N'pate', N'salade', 1, 0)
INSERT [dbo].[Sondage] ([ID], [Questions], [Reponse1], [Reponse2], [Reponse3], [Choix], [ActiveSondage]) VALUES (94, N'votre repas prefer', N'riz', N'pate', N'salade', 1, 0)
INSERT [dbo].[Sondage] ([ID], [Questions], [Reponse1], [Reponse2], [Reponse3], [Choix], [ActiveSondage]) VALUES (95, N'votre repas prefer', N'riz', N'pate', N'salade', 1, 1)
INSERT [dbo].[Sondage] ([ID], [Questions], [Reponse1], [Reponse2], [Reponse3], [Choix], [ActiveSondage]) VALUES (96, N'votre repas prefer', N'riz', N'pate', N'salade', 1, 1)
INSERT [dbo].[Sondage] ([ID], [Questions], [Reponse1], [Reponse2], [Reponse3], [Choix], [ActiveSondage]) VALUES (97, N'votre repas prefer', N'riz', N'pate', N'salade', 1, 0)
INSERT [dbo].[Sondage] ([ID], [Questions], [Reponse1], [Reponse2], [Reponse3], [Choix], [ActiveSondage]) VALUES (98, N'votre repas prefer', N'riz', N'pate', N'salade', 1, 0)
INSERT [dbo].[Sondage] ([ID], [Questions], [Reponse1], [Reponse2], [Reponse3], [Choix], [ActiveSondage]) VALUES (99, N'votre repas prefer', N'riz', N'pate', N'salade', 1, 0)
GO
INSERT [dbo].[Sondage] ([ID], [Questions], [Reponse1], [Reponse2], [Reponse3], [Choix], [ActiveSondage]) VALUES (100, N'votre repas prefer', N'riz', N'pate', N'salade', 1, 0)
INSERT [dbo].[Sondage] ([ID], [Questions], [Reponse1], [Reponse2], [Reponse3], [Choix], [ActiveSondage]) VALUES (101, N'votre repas prefer', N'riz', N'pate', N'salade', 1, 1)
INSERT [dbo].[Sondage] ([ID], [Questions], [Reponse1], [Reponse2], [Reponse3], [Choix], [ActiveSondage]) VALUES (102, N'votre repas prefer', N'riz', N'pate', N'salade', 1, 1)
INSERT [dbo].[Sondage] ([ID], [Questions], [Reponse1], [Reponse2], [Reponse3], [Choix], [ActiveSondage]) VALUES (103, N'votre repas prefer', N'riz', N'pate', N'salade', 1, 1)
INSERT [dbo].[Sondage] ([ID], [Questions], [Reponse1], [Reponse2], [Reponse3], [Choix], [ActiveSondage]) VALUES (104, N'', N'', N'', N'', 0, 1)
INSERT [dbo].[Sondage] ([ID], [Questions], [Reponse1], [Reponse2], [Reponse3], [Choix], [ActiveSondage]) VALUES (105, N'votre repas prefer', N'riz', N'pate', N'salade', 1, 0)
INSERT [dbo].[Sondage] ([ID], [Questions], [Reponse1], [Reponse2], [Reponse3], [Choix], [ActiveSondage]) VALUES (106, N'capitale favorite', N'paris ', N'conakry', N'berlin', 1, 1)
INSERT [dbo].[Sondage] ([ID], [Questions], [Reponse1], [Reponse2], [Reponse3], [Choix], [ActiveSondage]) VALUES (107, N'quel est ton pays preféré?', N'', N'conakry', N'Russie', 1, 0)
INSERT [dbo].[Sondage] ([ID], [Questions], [Reponse1], [Reponse2], [Reponse3], [Choix], [ActiveSondage]) VALUES (108, N'votre sport pref', N'foot', N'basket', N'golf', 1, 0)
INSERT [dbo].[Sondage] ([ID], [Questions], [Reponse1], [Reponse2], [Reponse3], [Choix], [ActiveSondage]) VALUES (109, N'votre repas prefer', N'riz', N'pate', N'salade', 1, 1)
INSERT [dbo].[Sondage] ([ID], [Questions], [Reponse1], [Reponse2], [Reponse3], [Choix], [ActiveSondage]) VALUES (110, N'votre repas prefer', N'riz', N'pate', N'salade', 1, 0)
INSERT [dbo].[Sondage] ([ID], [Questions], [Reponse1], [Reponse2], [Reponse3], [Choix], [ActiveSondage]) VALUES (111, N'Votre centre de formation prefer', N'univ', N'cci', N'afpa', 1, 0)
INSERT [dbo].[Sondage] ([ID], [Questions], [Reponse1], [Reponse2], [Reponse3], [Choix], [ActiveSondage]) VALUES (112, N'votre repas prefer', N'riz', N'pate', N'salade', 1, 0)
INSERT [dbo].[Sondage] ([ID], [Questions], [Reponse1], [Reponse2], [Reponse3], [Choix], [ActiveSondage]) VALUES (113, N'votre repas prefer', N'riz', N'pate', N'salade', 1, 1)
INSERT [dbo].[Sondage] ([ID], [Questions], [Reponse1], [Reponse2], [Reponse3], [Choix], [ActiveSondage]) VALUES (114, N'votre repas prefer', N'riz', N'pate', N'salade', 1, 0)
INSERT [dbo].[Sondage] ([ID], [Questions], [Reponse1], [Reponse2], [Reponse3], [Choix], [ActiveSondage]) VALUES (115, N'Votre centre de formation prefer', N'univ', N'cci', N'afpa', 1, 1)
INSERT [dbo].[Sondage] ([ID], [Questions], [Reponse1], [Reponse2], [Reponse3], [Choix], [ActiveSondage]) VALUES (116, N'votre repas prefer', N'riz', N'pate', N'salade', 1, 0)
INSERT [dbo].[Sondage] ([ID], [Questions], [Reponse1], [Reponse2], [Reponse3], [Choix], [ActiveSondage]) VALUES (117, N'votre repas prefer', N'riz', N'pate', N'salade', 1, 1)
INSERT [dbo].[Sondage] ([ID], [Questions], [Reponse1], [Reponse2], [Reponse3], [Choix], [ActiveSondage]) VALUES (118, N'', N'', N'', N'', 0, 0)
INSERT [dbo].[Sondage] ([ID], [Questions], [Reponse1], [Reponse2], [Reponse3], [Choix], [ActiveSondage]) VALUES (119, N'Votre centre de formation prefer', N'riz', N'pate', N'salade', 1, 0)
INSERT [dbo].[Sondage] ([ID], [Questions], [Reponse1], [Reponse2], [Reponse3], [Choix], [ActiveSondage]) VALUES (120, N'votre repas prefer', N'riz', N'pate', N'salade', 1, 1)
INSERT [dbo].[Sondage] ([ID], [Questions], [Reponse1], [Reponse2], [Reponse3], [Choix], [ActiveSondage]) VALUES (121, N'votre sportif prefere ', N'foot', N'riz ', N'tennis', 0, 0)
INSERT [dbo].[Sondage] ([ID], [Questions], [Reponse1], [Reponse2], [Reponse3], [Choix], [ActiveSondage]) VALUES (122, N'votre sportif prefere', N'foot', N'riz', N'tennis', 1, 1)
INSERT [dbo].[Sondage] ([ID], [Questions], [Reponse1], [Reponse2], [Reponse3], [Choix], [ActiveSondage]) VALUES (123, N'votre repas prefer', N'riz', N'pate', N'salade', 1, 0)
INSERT [dbo].[Sondage] ([ID], [Questions], [Reponse1], [Reponse2], [Reponse3], [Choix], [ActiveSondage]) VALUES (124, N'votre repas prefer', N'riz', N'pate', N'salade', 1, 0)
INSERT [dbo].[Sondage] ([ID], [Questions], [Reponse1], [Reponse2], [Reponse3], [Choix], [ActiveSondage]) VALUES (125, N'Quelle est votre ville préferée ?', N'', N'', N'', 0, 0)
INSERT [dbo].[Sondage] ([ID], [Questions], [Reponse1], [Reponse2], [Reponse3], [Choix], [ActiveSondage]) VALUES (126, N'Quelle est votre ville préferée ?', N'Strasbourg', N'Colmar', N'Conakry', 1, 1)
INSERT [dbo].[Sondage] ([ID], [Questions], [Reponse1], [Reponse2], [Reponse3], [Choix], [ActiveSondage]) VALUES (127, N'Quelle est votre ville favorite', N'Conakry', N'Strasbourg', N'Colmar', 1, 1)
INSERT [dbo].[Sondage] ([ID], [Questions], [Reponse1], [Reponse2], [Reponse3], [Choix], [ActiveSondage]) VALUES (128, N'votre repas prefer', N'riz', N'pate', N'salade', 1, 0)
SET IDENTITY_INSERT [dbo].[Sondage] OFF
ALTER TABLE [dbo].[Resultat]  WITH CHECK ADD  CONSTRAINT [FK_Resultat_Sondage] FOREIGN KEY([FK_Id_sondage])
REFERENCES [dbo].[Sondage] ([ID])
GO
ALTER TABLE [dbo].[Resultat] CHECK CONSTRAINT [FK_Resultat_Sondage]
GO
USE [master]
GO
ALTER DATABASE [Strawpoll] SET  READ_WRITE 
GO
