USE [Films]
GO
/****** Object:  Table [dbo].[People_old]    Script Date: 11/16/2021 1:01:00 PM ******/
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
