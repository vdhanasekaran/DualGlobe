USE [ERPDB]
GO
/****** Object:  Table [dbo].[ExpenseCategory]    Script Date: 8/4/2017 11:38:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExpenseCategory](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.ExpenseCategory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[ExpenseCategory] ON 

INSERT [dbo].[ExpenseCategory] ([Id], [Description]) VALUES (1, N'Accounting and legal fee')
INSERT [dbo].[ExpenseCategory] ([Id], [Description]) VALUES (2, N'Advertising')
INSERT [dbo].[ExpenseCategory] ([Id], [Description]) VALUES (3, N'Utilities')
INSERT [dbo].[ExpenseCategory] ([Id], [Description]) VALUES (4, N'Insurance')
INSERT [dbo].[ExpenseCategory] ([Id], [Description]) VALUES (5, N'Interest and bank charges')
INSERT [dbo].[ExpenseCategory] ([Id], [Description]) VALUES (6, N'Postage')
INSERT [dbo].[ExpenseCategory] ([Id], [Description]) VALUES (7, N'Printing and Stationary')
INSERT [dbo].[ExpenseCategory] ([Id], [Description]) VALUES (8, N'Professional memberships')
INSERT [dbo].[ExpenseCategory] ([Id], [Description]) VALUES (9, N'Rent for premises')
INSERT [dbo].[ExpenseCategory] ([Id], [Description]) VALUES (10, N'Repair and maintenance')
INSERT [dbo].[ExpenseCategory] ([Id], [Description]) VALUES (11, N'Training')
INSERT [dbo].[ExpenseCategory] ([Id], [Description]) VALUES (12, N'Vehicle operating costs')
INSERT [dbo].[ExpenseCategory] ([Id], [Description]) VALUES (13, N'Worker compensation')
INSERT [dbo].[ExpenseCategory] ([Id], [Description]) VALUES (14, N'Depreciation')
INSERT [dbo].[ExpenseCategory] ([Id], [Description]) VALUES (15, N'Material Purchase')
INSERT [dbo].[ExpenseCategory] ([Id], [Description]) VALUES (16, N'Other')
SET IDENTITY_INSERT [dbo].[ExpenseCategory] OFF
