USE [TireRepairShop_V]
GO

/****** Object:  Table [dbo].[CustomersOrders]    Script Date: 4/4/2014 12:41:23 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[CustomersOrders](
	[CustomerOrderID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[ReceiptNumber] [int] NOT NULL,
	[PartNumber] [int] NULL,
	[PartName] [varchar](100) NULL,
	[UnitPrice] [money] NULL,
	[Quantity] [int] NULL,
	[SubTotal]  AS ([UnitPrice]*[Quantity]),
	[PartsTotal] [money] NULL,
	[TaxRate] [decimal](6, 2) NULL,
	[TaxAmount] [money] NULL,
	[OrderTotal] [money] NULL,
 CONSTRAINT [PK__Customer__28FBA0DC9F86631C] PRIMARY KEY CLUSTERED 
(
	[CustomerOrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

