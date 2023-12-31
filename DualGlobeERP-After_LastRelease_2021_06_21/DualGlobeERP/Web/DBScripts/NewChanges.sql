USE [ERPDB]
GO
/****** Object:  Table [dbo].[Company]    Script Date: 2/16/2017 12:39:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Company](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CompanyName] [nvarchar](max) NULL,
	[CompanyNumber] [nvarchar](max) NULL,
	[IncorporationDate] [datetime] NULL,
	[Email] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[FaxNumber] [nvarchar](max) NULL,
	[Country] [nvarchar](max) NULL,
	[Status] [bit] NOT NULL,
	[Currency] [nvarchar](max) NULL,
	[IsGSTRegistered] [bit] NOT NULL,
	[GSTRegisterDate] [datetime] NULL,
	[GSTNumber] [nvarchar](max) NULL,
	[GSTType] [nvarchar](max) NULL,
	[IndustryClassification] [nvarchar](max) NULL,
	[CompanyType] [nvarchar](max) NULL,
	[AccountingYearFromDate] [datetime] NULL,
	[AccountingYearToDate] [datetime] NULL,
	[CompanyLogo] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Company] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CPFLookup]    Script Date: 2/16/2017 12:39:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CPFLookup](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AgeMinVal] [int] NULL,
	[AgeMaxVal] [int] NULL,
	[WageMinVal] [decimal](18, 2) NULL,
	[WageMaxVal] [decimal](18, 2) NULL,
	[TotalOWMaxVal] [decimal](18, 2) NULL,
	[EmployeeOWMaxVal] [decimal](18, 2) NULL,
	[TotalCPF] [nvarchar](max) NULL,
	[EmployeeCPF] [nvarchar](max) NULL,
	[EmployeeStatus] [nvarchar](max) NULL,
	[CPFLookUpYear] [int] NULL,
	[EffectiveDate] [date] NOT NULL,
 CONSTRAINT [PK_dbo.CPFLookup] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Document]    Script Date: 2/16/2017 12:39:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Document](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DocumentName] [nvarchar](max) NULL,
	[DocumentUrl] [nvarchar](max) NULL,
	[Expense_Id] [int] NULL,
 CONSTRAINT [PK_dbo.Document] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EmployeeDocument]    Script Date: 2/16/2017 12:39:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeeDocument](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DocumentName] [nvarchar](max) NULL,
	[DocumentUrl] [nvarchar](max) NULL,
	[Employee_Id] [int] NULL,
 CONSTRAINT [PK_dbo.EmployeeDocument] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Expense]    Script Date: 2/16/2017 12:39:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Expense](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Date] [datetime] NOT NULL,
	[BillRefNo] [nvarchar](max) NULL,
	[Supplier] [nvarchar](max) NULL,
	[ClientId] [int] NOT NULL,
	[ProjectId] [int] NOT NULL,
	[PaymentMethod] [nvarchar](max) NULL,
	[TransRefNo] [nvarchar](max) NULL,
	[PaymentStatus] [nvarchar](max) NULL,
	[IncludeGST] [bit] NOT NULL,
	[GST] [decimal](18, 2) NULL,
	[Description] [nvarchar](max) NULL,
	[ExpenseCategory] [nvarchar](max) NULL,
	[MaterialPurchseCategory] [nvarchar](max) NULL,
	[OperationExpenseCategory] [nvarchar](max) NULL,
	[OtherExpense] [nvarchar](max) NULL,
	[ExpenseValue] [decimal](18, 2) NULL,
	[ExpenseTotalValue] [decimal](18, 2) NULL,
 CONSTRAINT [PK_dbo.Expense] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LevyLookup]    Script Date: 2/16/2017 12:39:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LevyLookup](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FromDate] [date] NOT NULL,
	[ToDate] [date] NOT NULL,
	[Sector] [nvarchar](max) NULL,
	[PassType] [nvarchar](max) NULL,
	[MYNHighSkilled] [decimal](18, 2) NULL,
	[MYNBasicSkilled] [decimal](18, 2) NULL,
	[MYNWaiverHighSkilled] [decimal](18, 2) NULL,
	[MYNWaiverBasicSkilled] [decimal](18, 2) NULL,
	[BasicTier] [decimal](18, 2) NULL,
	[Tier2] [decimal](18, 2) NULL,
 CONSTRAINT [PK_dbo.LevyLookup] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Supplier]    Script Date: 2/16/2017 12:39:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Supplier](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SupplierName] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[FaxNumber] [nvarchar](max) NULL,
	[ContactPerson] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Supplier] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
ALTER TABLE [dbo].[Document]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Document_dbo.Expense_Expense_Id] FOREIGN KEY([Expense_Id])
REFERENCES [dbo].[Expense] ([Id])
GO
ALTER TABLE [dbo].[Document] CHECK CONSTRAINT [FK_dbo.Document_dbo.Expense_Expense_Id]
GO
ALTER TABLE [dbo].[EmployeeDocument]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EmployeeDocument_dbo.Employee_Employee_Id] FOREIGN KEY([Employee_Id])
REFERENCES [dbo].[Employee] ([Id])
GO
ALTER TABLE [dbo].[EmployeeDocument] CHECK CONSTRAINT [FK_dbo.EmployeeDocument_dbo.Employee_Employee_Id]
GO
