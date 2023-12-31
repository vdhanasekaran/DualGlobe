USE [ERPDB]
GO

ALTER TABLE [ERPDB].[dbo].[Quotation] DROP COLUMN [IncludeGST]
ALTER TABLE [ERPDB].[dbo].[Quotation] ADD [ReferenceNumber] nvarchar(max) NULL
ALTER TABLE [ERPDB].[dbo].[Quotation] ADD [GSTType] nvarchar(max) NULL

ALTER TABLE [ERPDB].[dbo].[Invoice] ADD [ReferenceNumber] nvarchar(max) NULL

ALTER TABLE [ERPDB].[dbo].[Quotation] ADD [PONumber] nvarchar(max) NULL

ALTER TABLE [ERPDB].[dbo].[InvoicePhase] ADD [Quantity] int NULL

ALTER TABLE [ERPDB].[dbo].[InvoicePhase] ADD [UnitPrice] [decimal](18, 2) NULL

ALTER TABLE [ERPDB].[dbo].[Invoice] ADD [DiscountValue] [decimal](18, 2) NULL

ALTER TABLE [ERPDB].[dbo].[Quotation] ADD [DiscountValue] [decimal](18, 2) NULL

ALTER TABLE [ERPDB].[dbo].[Invoice] ADD [DiscountType]  nvarchar(max) NULL

ALTER TABLE [ERPDB].[dbo].[Quotation] ADD [DiscountType]  nvarchar(max) NULL

ALTER TABLE [ERPDB].[dbo].[InvoicePhase] ADD [GSTAmount] [decimal](18, 2) NULL DEFAULT(0)

ALTER TABLE [ERPDB].[dbo].[InvoicePhase] ADD [PhaseInvoiceAmount] [decimal](18, 2) NULL DEFAULT(0)

ALTER TABLE [ERPDB].[dbo].[InvoicePhase] ADD [DiscountedGSTAmount] [decimal](18, 2) NULL DEFAULT(0)

ALTER TABLE [ERPDB].[dbo].[InvoicePhase] ADD [DiscountedPhaseInvoiceAmount] [decimal](18, 2) NULL DEFAULT(0)

ALTER TABLE [ERPDB].[dbo].[Invoice] ADD [TotalGSTAmount] [decimal](18, 2) NULL DEFAULT(0)

ALTER TABLE [ERPDB].[dbo].[Invoice] ADD [TotalPhaseAmount] [decimal](18, 2) NULL DEFAULT(0)

ALTER TABLE [ERPDB].[dbo].[Invoice] ADD [TotalDiscountedGST] [decimal](18, 2) NULL DEFAULT(0)

ALTER TABLE [ERPDB].[dbo].[Invoice] ADD [TotalDiscountedPhaseInvoice] [decimal](18, 2) NULL DEFAULT(0)


ALTER TABLE [ERPDB].[dbo].[Client] ADD [FaxNumber]  nvarchar(max) NULL