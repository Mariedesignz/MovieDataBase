USE [Films]
GO
/****** Object:  Table [dbo].[Movies_data]    Script Date: 11/16/2021 1:01:00 PM ******/
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
