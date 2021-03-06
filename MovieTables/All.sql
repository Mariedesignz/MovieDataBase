USE [master]
GO
/****** Object:  Database [Films]    Script Date: 11/16/2021 1:05:17 PM ******/
CREATE DATABASE [Films]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Films', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Films.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Films_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Films_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Films] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Films].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Films] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Films] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Films] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Films] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Films] SET ARITHABORT OFF 
GO
ALTER DATABASE [Films] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Films] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Films] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Films] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Films] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Films] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Films] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Films] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Films] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Films] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Films] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Films] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Films] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Films] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Films] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Films] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Films] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Films] SET RECOVERY FULL 
GO
ALTER DATABASE [Films] SET  MULTI_USER 
GO
ALTER DATABASE [Films] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Films] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Films] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Films] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Films] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Films] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Films', N'ON'
GO
ALTER DATABASE [Films] SET QUERY_STORE = OFF
GO
USE [Films]
GO
/****** Object:  Table [dbo].[Movies_data]    Script Date: 11/16/2021 1:05:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Movies_data](
	[Movie_id] [nvarchar](50) NOT NULL,
	[Movie] [nvarchar](50) NOT NULL,
	[Release_date] [nvarchar](50) NOT NULL,
	[Run_time] [int] NOT NULL,
	[Rating] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[People]    Script Date: 11/16/2021 1:05:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[People](
	[First_Name] [nvarchar](50) NOT NULL,
	[Last_Name] [nvarchar](50) NOT NULL,
	[Suffix] [nvarchar](50) NOT NULL,
	[People_ID] [int] NOT NULL,
 CONSTRAINT [PK_People_new] PRIMARY KEY CLUSTERED 
(
	[People_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[People_old]    Script Date: 11/16/2021 1:05:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[People_old](
	[Name] [nvarchar](50) NOT NULL,
	[Profession] [nvarchar](50) NOT NULL,
	[People_ID] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_People] PRIMARY KEY CLUSTERED 
(
	[People_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Profession]    Script Date: 11/16/2021 1:05:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Profession](
	[ProfessionID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ProfessionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SQL_code]    Script Date: 11/16/2021 1:05:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SQL_code](
	[column1] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Viwer]    Script Date: 11/16/2021 1:05:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Viwer](
	[Viewer_ID] [nvarchar](50) NOT NULL,
	[Movie_buff] [nvarchar](50) NOT NULL,
	[Adult] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
INSERT [dbo].[Movies_data] ([Movie_id], [Movie], [Release_date], [Run_time], [Rating]) VALUES (N'1', N'Caption America', N'Feb-44', 243, N'Not_Rated')
INSERT [dbo].[Movies_data] ([Movie_id], [Movie], [Release_date], [Run_time], [Rating]) VALUES (N'2', N'The Avengers EG', N'21-Apr', 111, N'PG_13')
INSERT [dbo].[Movies_data] ([Movie_id], [Movie], [Release_date], [Run_time], [Rating]) VALUES (N'3', N'Men in Black', N'Jul-97', 98, N'PG')
INSERT [dbo].[Movies_data] ([Movie_id], [Movie], [Release_date], [Run_time], [Rating]) VALUES (N'4', N'Blade', N'Aug-98', 120, N'R')
INSERT [dbo].[Movies_data] ([Movie_id], [Movie], [Release_date], [Run_time], [Rating]) VALUES (N'5', N'X Men', N'Jul-00', 104, N'PG_13')
INSERT [dbo].[Movies_data] ([Movie_id], [Movie], [Release_date], [Run_time], [Rating]) VALUES (N'6', N'Blade2', N'2-Mar', 117, N'R')
INSERT [dbo].[Movies_data] ([Movie_id], [Movie], [Release_date], [Run_time], [Rating]) VALUES (N'7', N'Spider man', N'2-May', 121, N'PG_13')
INSERT [dbo].[Movies_data] ([Movie_id], [Movie], [Release_date], [Run_time], [Rating]) VALUES (N'8', N'Men in Black 2', N'2-Jul', 88, NULL)
INSERT [dbo].[Movies_data] ([Movie_id], [Movie], [Release_date], [Run_time], [Rating]) VALUES (N'9', N'Daredevil', N'3-Feb', 103, N'PG_13')
INSERT [dbo].[Movies_data] ([Movie_id], [Movie], [Release_date], [Run_time], [Rating]) VALUES (N'10', N'X2', N'3-May', 133, N'PG_13')
INSERT [dbo].[Movies_data] ([Movie_id], [Movie], [Release_date], [Run_time], [Rating]) VALUES (N'11', N'Thor', N'11-May', 113, N'PG_13')
INSERT [dbo].[Movies_data] ([Movie_id], [Movie], [Release_date], [Run_time], [Rating]) VALUES (N'12', N'Iron Man', N'8-May', 126, N'PG_13')
INSERT [dbo].[Movies_data] ([Movie_id], [Movie], [Release_date], [Run_time], [Rating]) VALUES (N'13', N'Hulk', N'8-Jul', 114, N'PG_13')
INSERT [dbo].[Movies_data] ([Movie_id], [Movie], [Release_date], [Run_time], [Rating]) VALUES (N'14', N'Caption America first AV', N'11-Jun', 124, N'PG_13')
INSERT [dbo].[Movies_data] ([Movie_id], [Movie], [Release_date], [Run_time], [Rating]) VALUES (N'15', N'Avengers', N'12-May', 163, N'PG_13')
INSERT [dbo].[Movies_data] ([Movie_id], [Movie], [Release_date], [Run_time], [Rating]) VALUES (N'16', N'Thor Dark world', N'13-Nov', 112, N'PG_13')
INSERT [dbo].[Movies_data] ([Movie_id], [Movie], [Release_date], [Run_time], [Rating]) VALUES (N'17', N'Captain America WS', N'2014', 136, N'PG_13')
INSERT [dbo].[Movies_data] ([Movie_id], [Movie], [Release_date], [Run_time], [Rating]) VALUES (N'18', N'Caption Marvel', N'5-Jul', 124, N'PG_13')
INSERT [dbo].[Movies_data] ([Movie_id], [Movie], [Release_date], [Run_time], [Rating]) VALUES (N'19', N'Caption America CW', N'6-May', 148, N'PG_13')
INSERT [dbo].[Movies_data] ([Movie_id], [Movie], [Release_date], [Run_time], [Rating]) VALUES (N'20', N'"Avengers Endgame"', N'19-Apr', 183, N'PG_13')
INSERT [dbo].[Movies_data] ([Movie_id], [Movie], [Release_date], [Run_time], [Rating]) VALUES (N'21', N'"Black Panther"', N'21-Feb', 135, N'PG_13')
GO
INSERT [dbo].[People_old] ([Name], [Profession], [People_ID]) VALUES (N'Robert_Downey_JR', N'Actor', N'1')
INSERT [dbo].[People_old] ([Name], [Profession], [People_ID]) VALUES (N'Jon_Favreau', N'Director', N'11')
INSERT [dbo].[People_old] ([Name], [Profession], [People_ID]) VALUES (N'Joe_Johnston', N'Director', N'12')
INSERT [dbo].[People_old] ([Name], [Profession], [People_ID]) VALUES (N'Anna_Boden', N'Director', N'13')
INSERT [dbo].[People_old] ([Name], [Profession], [People_ID]) VALUES (N'Ryan_Fleck', N'Director', N'14')
INSERT [dbo].[People_old] ([Name], [Profession], [People_ID]) VALUES (N'Anthony_Russo', N'Director', N'15')
INSERT [dbo].[People_old] ([Name], [Profession], [People_ID]) VALUES (N'Joe_Russo', N'Director', N'16')
INSERT [dbo].[People_old] ([Name], [Profession], [People_ID]) VALUES (N'Scarelet_Johansson', N'Actress', N'17')
INSERT [dbo].[People_old] ([Name], [Profession], [People_ID]) VALUES (N'Chris_Evans', N'Actor', N'18')
INSERT [dbo].[People_old] ([Name], [Profession], [People_ID]) VALUES (N'Brie_Larson', N'Actress', N'19')
INSERT [dbo].[People_old] ([Name], [Profession], [People_ID]) VALUES (N'Chris_Evans', N'Actor', N'2')
INSERT [dbo].[People_old] ([Name], [Profession], [People_ID]) VALUES (N'Chadwick_Boseman', N'Actor', N'20')
INSERT [dbo].[People_old] ([Name], [Profession], [People_ID]) VALUES (N'Ryan_Coogler', N'Director', N'21')
INSERT [dbo].[People_old] ([Name], [Profession], [People_ID]) VALUES (N'Mark_Ruffalo', N'Actor', N'3')
INSERT [dbo].[People_old] ([Name], [Profession], [People_ID]) VALUES (N'Chris_Hemsworth', N'Actor', N'4')
INSERT [dbo].[People_old] ([Name], [Profession], [People_ID]) VALUES (N'Sam_Jackson', N'Actor', N'5')
INSERT [dbo].[People_old] ([Name], [Profession], [People_ID]) VALUES (N'Wesley_Snips', N'Actor', N'6')
INSERT [dbo].[People_old] ([Name], [Profession], [People_ID]) VALUES (N'Kristen_Dunst', N'Actress', N'7')
INSERT [dbo].[People_old] ([Name], [Profession], [People_ID]) VALUES (N'Tobey_Magurie', N'Actor', N'8')
INSERT [dbo].[People_old] ([Name], [Profession], [People_ID]) VALUES (N'Eric_Bana', N'Actor', N'9')
GO
INSERT [dbo].[SQL_code] ([column1]) VALUES (N'-- Create Movie table')
INSERT [dbo].[SQL_code] ([column1]) VALUES (N'CREATE TABLE Films')
INSERT [dbo].[SQL_code] ([column1]) VALUES (N'(')
INSERT [dbo].[SQL_code] ([column1]) VALUES (N'MovieId INT IDENTITY PRIMARY KEY,')
INSERT [dbo].[SQL_code] ([column1]) VALUES (N'Movie NVARCHAR(128) NOT NULL,')
INSERT [dbo].[SQL_code] ([column1]) VALUES (N'ReleaseDate DATE NOT NULL,')
INSERT [dbo].[SQL_code] ([column1]) VALUES (N'RunTime NVARCHAR(128) NOT NULL,')
INSERT [dbo].[SQL_code] ([column1]) VALUES (N'Rating NVARCHAR')
INSERT [dbo].[SQL_code] ([column1]) VALUES (N')')
INSERT [dbo].[SQL_code] ([column1]) VALUES (N'--Create People Table')
INSERT [dbo].[SQL_code] ([column1]) VALUES (N'CREATE TABLE People')
INSERT [dbo].[SQL_code] ([column1]) VALUES (N'PeopleID INT IDENTITY PRIMARY KEY,')
INSERT [dbo].[SQL_code] ([column1]) VALUES (N'Name NVARCHAR(50) NOT NULL,')
INSERT [dbo].[SQL_code] ([column1]) VALUES (N'Profession NVARCHAR(10)')
INSERT [dbo].[SQL_code] ([column1]) VALUES (N'--Create Viwer Table')
INSERT [dbo].[SQL_code] ([column1]) VALUES (N'CREATE TABLE Viwer')
INSERT [dbo].[SQL_code] ([column1]) VALUES (N'ViwerId NVARCHAR,')
INSERT [dbo].[SQL_code] ([column1]) VALUES (N'MovieBuff NVARCHAR')
GO
INSERT [dbo].[Viwer] ([Viewer_ID], [Movie_buff], [Adult]) VALUES (N'1', N'Alaya', N'No')
INSERT [dbo].[Viwer] ([Viewer_ID], [Movie_buff], [Adult]) VALUES (N'2', N'Tina', N'Yes')
INSERT [dbo].[Viwer] ([Viewer_ID], [Movie_buff], [Adult]) VALUES (N'3', N'Tanage', N'Yes')
INSERT [dbo].[Viwer] ([Viewer_ID], [Movie_buff], [Adult]) VALUES (N'4', N'Eric', N'Yes')
INSERT [dbo].[Viwer] ([Viewer_ID], [Movie_buff], [Adult]) VALUES (N'4', N'Jane', N'No')
GO
USE [master]
GO
ALTER DATABASE [Films] SET  READ_WRITE 
GO
