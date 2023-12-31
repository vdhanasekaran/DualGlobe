USE [ERPDB]
GO

ALTER TABLE [ERPDB].[dbo].[MaterialPurchase] ADD [IncludeGST] [bit] NOT NULL
ALTER TABLE [ERPDB].[dbo].[MaterialPurchase] ADD [GST] [decimal](18, 2) NULL
ALTER TABLE [ERPDB].[dbo].[MaterialPurchase] ADD [Description] [nvarchar](max) NULL
ALTER TABLE [ERPDB].[dbo].[MaterialPurchase] ADD [MaterialPurchaseTotalValue] [decimal](18, 2) NULL

ALTER TABLE [ERPDB].[dbo].[Quotation] ADD [IncludeGST] [bit] NOT NULL
ALTER TABLE [ERPDB].[dbo].[Quotation] ADD [GST] [decimal](18, 2) NULL