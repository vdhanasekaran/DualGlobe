USE [ERPDB]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PublicHolidayPay](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[GroupName] [nvarchar](max) NULL,
	[PayType] [nvarchar](max) NULL,
	[PayValue] [decimal](18, 2) NULL,
 CONSTRAINT [PK_dbo.PublicHolidayPay] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

ALTER TABLE [ERPDB].[dbo].[Employee] ALTER COLUMN [PublicHolidayPay] INT

ALTER TABLE [ERPDB].[dbo].[RestDay] ADD [MondayRestType] [nvarchar](max) NULL
ALTER TABLE [ERPDB].[dbo].[RestDay] ADD [TuesdayRestType] [nvarchar](max) NULL
ALTER TABLE [ERPDB].[dbo].[RestDay]	ADD [WednesdayRestType] [nvarchar](max) NULL
ALTER TABLE [ERPDB].[dbo].[RestDay]	ADD [ThursdayRestType] [nvarchar](max) NULL
ALTER TABLE [ERPDB].[dbo].[RestDay]	ADD [FridayRestType] [nvarchar](max) NULL
ALTER TABLE [ERPDB].[dbo].[RestDay]	ADD [SaturdayRestType] [nvarchar](max) NULL
ALTER TABLE [ERPDB].[dbo].[RestDay]	ADD [SundayRestType] [nvarchar](max) NULL