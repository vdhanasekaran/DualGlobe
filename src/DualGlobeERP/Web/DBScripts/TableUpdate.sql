USE [ERPDB]
GO

ALTER TABLE [ERPDB].[dbo].[Employee] ADD [WorkPermitAddress] NVARCHAR(max) NULL;  

ALTER TABLE [ERPDB].[dbo].[Leave] ADD [TotalDays] [int] NULL;