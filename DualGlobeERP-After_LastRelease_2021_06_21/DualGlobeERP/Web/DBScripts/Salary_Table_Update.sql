USE [ERPDB]
GO
ALTER TABLE [dbo].[SalaryDetail] ALTER COLUMN [PresentDays] [decimal](18, 2) NULL
ALTER TABLE [dbo].[SalaryDetail] ALTER COLUMN [LeaveDays] [decimal](18, 2) NULL