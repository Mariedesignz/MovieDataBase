
/**
Drop Statements

**/
USE [Films]
GO

DROP TABLE IF exists Movies;
GO

DROP TABLE IF exists People;
GO



/****** Object:  Table [dbo].[Movie]    Script Date: 11/12/2021 2:07:01 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/**
Create Tables

**/

CREATE TABLE Movies(
	[MovieId] [int] IDENTITY PRIMARY KEY,
	[Movie] [nvarchar](128) NOT NULL,
	[ReleaseDate] [date] NOT NULL,
	[RunTime] [nvarchar](128) NOT NULL,
	[Rating] [nvarchar](128) NULL)

GO




CREATE TABLE People(
	[First_Name] [nvarchar](50) NOT NULL,
	[Last_Name] [nvarchar](50) NOT NULL,
	[Suffix] [nvarchar](50) NOT NULL,
	[People_ID] [INT] Identity PRIMARY KEY)
GO


/**
Create Indexes
**/

CREATE NONCLUSTERED INDEX IX_MovieName
ON Movies (Movie);
GO

/**
Create Porcedures
**/
CREATE OR ALTER PROCEDURE ReadMovie @Rating varchar (20)=Null AS
BEGIN
	SELECT * FROM Movies WHERE Rating= Coalesce (@Rating, Rating);
END
GO

/**
Load Data

**/
BULK INSERT Movies
FROM 'C:\Users\marie\OneDrive\Documents\MovieDataBase\MovieDataBase\Shows.csv'
WITH
(
	FIRSTROW = 2,
	FIELDTERMINATOR = ',',
	ROWTERMINATOR = '\n',
	TABLOCK
);
GO





/**
Example commands
**/

SELECT * FROM Movies;

Execute ReadMovie;
GO

Execute ReadMovie @Rating='R';
GO

SELECT Movie_buff
FROM Viwer
WHERE Movie_buff IS NOT NULL;
  GO

  SELECT Movie, Release_date
  FROM Movies_data
  ORDER BY Movie, Release_date
  DESC;
  GO

  DELETE FROM Viwer WHERE Movie_buff='Eric';
  GO