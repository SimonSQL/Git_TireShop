USE [TireRepairShop_V]
GO

/****** Object:  Table [dbo].[Employee]    Script Date: 4/4/2014 12:17:13 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Employee](
	[EmployeeId] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[RepairShopId] [int] NULL,
	[FirstName] [nvarchar](20) NULL,
	[LastName] [nvarchar](30) NULL,
	[Address] [nvarchar](50) NULL,
	[Phone] [varchar](15) NULL,
 CONSTRAINT [PK__Employee__7AD04F1135BC9EDC] PRIMARY KEY CLUSTERED 
(
	[EmployeeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

