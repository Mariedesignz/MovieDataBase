USE [Films]
GO
/****** Object:  Table [dbo].[Viwer]    Script Date: 11/16/2021 1:01:00 PM ******/
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
