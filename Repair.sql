USE [TireRepairShop]
GO

/****** Object:  Table [dbo].[Repair]    Script Date: 4/3/2014 4:25:18 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Repair](
	[RepairId] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[CustomerId] [int] NULL,
	[RepairDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[RepairId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[Repair] ADD  CONSTRAINT [DF__Repair__RepairDa__1920BF5C]  DEFAULT (getdate()) FOR [RepairDate]
GO

ALTER TABLE [dbo].[Repair]  WITH CHECK ADD  CONSTRAINT [FK_Repair_CustomerCar] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customer] ([CustomerId])
GO

ALTER TABLE [dbo].[Repair] CHECK CONSTRAINT [FK_Repair_CustomerCar]
GO

