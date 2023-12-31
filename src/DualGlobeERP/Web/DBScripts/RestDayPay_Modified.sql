USE [ERPDB]
GO

ALTER TABLE [ERPDB].[dbo].[RestDayPay] DROP COLUMN [PayType]
ALTER TABLE [ERPDB].[dbo].[RestDayPay] DROP COLUMN [PayValue]

ALTER TABLE [ERPDB].[dbo].[RestDayPay] ADD [FullRestDayPayType] [nvarchar](max) NULL
ALTER TABLE [ERPDB].[dbo].[RestDayPay] ADD [FullRestDayPayValue] [decimal](18, 2) NULL
ALTER TABLE [ERPDB].[dbo].[RestDayPay] ADD [HalfRestDayPayType] [nvarchar](max) NULL
ALTER TABLE [ERPDB].[dbo].[RestDayPay] ADD [HalfRestDayPayValue] [decimal](18, 2) NULL


ALTER TABLE [ERPDB].[dbo].[QuotationItems] ADD [GST] [decimal](18, 2) NULL
ALTER TABLE [ERPDB].[dbo].[InvoicePhase] ADD [GST] [decimal](18, 2) NULL