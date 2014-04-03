USE [TireRepairShop]
GO

/****** Object:  Table [dbo].[BillPayment]    Script Date: 4/3/2014 4:24:14 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[BillPayment](
	[PaymentId] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[RepairId] [int] NULL,
	[PaymentMethod] [nvarchar](20) NULL,
	[Amount] [money] NULL,
	[PaymentDate] [datetime] NULL,
	[CardNumber] [nvarchar](20) NULL,
	[ExpDate] [datetime] NULL,
 CONSTRAINT [PK__BillPaym__9B556A387A3BF2CA] PRIMARY KEY CLUSTERED 
(
	[PaymentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[BillPayment] ADD  CONSTRAINT [DF__BillPayme__Payme__01142BA1]  DEFAULT (getdate()) FOR [PaymentDate]
GO

ALTER TABLE [dbo].[BillPayment]  WITH CHECK ADD  CONSTRAINT [FK_BillPayment_Repair] FOREIGN KEY([RepairId])
REFERENCES [dbo].[Repair] ([RepairId])
GO

ALTER TABLE [dbo].[BillPayment] CHECK CONSTRAINT [FK_BillPayment_Repair]
GO

