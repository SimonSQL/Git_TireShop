USE [TireRepairShop]
GO

/****** Object:  Table [dbo].[Car]    Script Date: 4/3/2014 4:24:24 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Car](
	[CarId] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[Make] [varchar](20) NOT NULL,
	[Model] [varchar](20) NOT NULL,
	[Year] [int] NULL,
	[TireSize] [nvarchar](15) NOT NULL,
 CONSTRAINT [PK__Car__68A0342E5B1F63A8] PRIMARY KEY CLUSTERED 
(
	[CarId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

