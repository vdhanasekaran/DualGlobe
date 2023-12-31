USE [master]
GO
DROP DATABASE [ERPDB]
GO
/****** Object:  Database [ERPDB]    Script Date: 10/25/2016 1:25:39 AM ******/
CREATE DATABASE [ERPDB]
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ERPDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ERPDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ERPDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ERPDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ERPDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ERPDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [ERPDB] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [ERPDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ERPDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ERPDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ERPDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ERPDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ERPDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ERPDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ERPDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ERPDB] SET  ENABLE_BROKER 
GO
ALTER DATABASE [ERPDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ERPDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ERPDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ERPDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ERPDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ERPDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ERPDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ERPDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ERPDB] SET  MULTI_USER 
GO
ALTER DATABASE [ERPDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ERPDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ERPDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ERPDB] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [ERPDB] SET DELAYED_DURABILITY = DISABLED 
GO
USE [ERPDB]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 10/25/2016 1:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Allowance]    Script Date: 10/25/2016 1:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Allowance](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeId] [int] NOT NULL,
	[AllowanceDate] [date] NOT NULL,
	[BonusAllowance] [decimal](18, 2) NULL,
	[OtherAllowance] [decimal](18, 2) NULL,
	[FoodAllowance] [decimal](18, 2) NULL,
	[TravelAllowance] [decimal](18, 2) NULL,
	[RoomRentalAllowance] [decimal](18, 2) NULL,
 CONSTRAINT [PK_dbo.Allowance] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Client]    Script Date: 10/25/2016 1:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Client](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
	[CompanyName] [nvarchar](max) NULL,
	[EmailAddress] [nvarchar](max) NULL,
	[AddressLine1] [nvarchar](max) NULL,
	[AddressLine2] [nvarchar](max) NULL,
	[City] [nvarchar](max) NULL,
	[State] [nvarchar](max) NULL,
	[Zip] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[Country] [nvarchar](max) NULL,
	[Status] [bit] NOT NULL,
	[Currency] [nvarchar](max) NULL,
	[BusinessRegistrationNumber] [nvarchar](max) NULL,
	[NRICNumber] [nvarchar](max) NULL,
	[Comments] [nvarchar](max) NULL,
	[LogoUrl] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Client] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CPF]    Script Date: 10/25/2016 1:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CPF](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeId] [int] NOT NULL,
	[TotalWages] [decimal](18, 2) NULL,
	[AdditionalWages] [decimal](18, 2) NULL,
	[EmployerCPF] [decimal](18, 2) NULL,
	[EmployeeCPF] [decimal](18, 2) NULL,
	[DonationType] [nvarchar](max) NULL,
	[SDL] [decimal](18, 2) NULL,
	[Date] [date] NOT NULL DEFAULT ('1900-01-01T00:00:00.000'),
	[EmployeeIC] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.CPF] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Donation]    Script Date: 10/25/2016 1:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Donation](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nationality] [nvarchar](max) NULL,
	[Religion] [nvarchar](max) NULL,
	[LowerRange] [decimal](18, 2) NULL,
	[UpperRange] [decimal](18, 2) NULL,
	[Contribution] [decimal](18, 2) NULL,
	[DonationType] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Donation] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Employee]    Script Date: 10/25/2016 1:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
	[Designation] [nvarchar](max) NULL,
	[DateOfBirth] [datetime] NOT NULL,
	[Gender] [nvarchar](max) NULL,
	[Religion] [nvarchar](max) NULL,
	[Nationality] [nvarchar](max) NULL,
	[MaritalStatus] [nvarchar](max) NULL,
	[Status] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
	[EmailId] [nvarchar](max) NULL,
	[BasicSalary] [decimal](18, 2) NULL,
	[Levy] [decimal](18, 2) NULL,
	[EmployeeCPF] [decimal](18, 2) NULL,
	[EmployerCPF] [decimal](18, 2) NULL,
	[FixedAllowance] [decimal](18, 2) NULL,
	[IsHavingAllowance] [bit] NOT NULL,
	[Skill] [nvarchar](max) NULL,
	[WorkPermitNumber] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[BloodGroup] [nvarchar](max) NULL,
	[PassportNumber] [nvarchar](max) NULL,
	[NRICNumber] [nvarchar](max) NULL,
	[AppointmentDate] [datetime] NOT NULL,
	[PhotoImagePath] [nvarchar](max) NULL,
	[PaidLeaveCount] [int] NULL,
	[HighestEducation] [nvarchar](max) NULL,
	[WorkStatus] [nvarchar](max) NULL,
	[YearsofExperience] [int] NULL,
	[ICNumber] [nvarchar](max) NULL,
	[FINNumber] [nvarchar](max) NULL,
	[EmploymentType] [nvarchar](max) NULL,
	[WorkPermitExpiryDate] [datetime] NULL,
	[EPExpiryDate] [datetime] NULL,
	[SPassExpiryDate] [datetime] NULL,
	[PassportExpiryDate] [datetime] NULL,
	[PREffectiveDate] [datetime] NULL,
	[PaymentMethod] [nvarchar](max) NULL,
	[BankAccountNumber] [nvarchar](max) NULL,
	[BankName] [nvarchar](max) NULL,
	[DrivingLicense] [nvarchar](max) NULL,
	[InsurerName] [nvarchar](max) NULL,
	[InsurancePolicyNumber] [nvarchar](max) NULL,
	[InsuranceStartDate] [nvarchar](max) NULL,
	[InsuranceEndDate] [nvarchar](max) NULL,
	[SecurityBondBankerName] [nvarchar](max) NULL,
	[BankerInsuranceStartDate] [nvarchar](max) NULL,
	[BankerInsuranceEndDate] [nvarchar](max) NULL,
	[WorkInjuryInsurerName] [nvarchar](max) NULL,
	[WorkInjuryInsurancePolicyNumber] [nvarchar](max) NULL,
	[WorkInjuryInsuranceStartDate] [nvarchar](max) NULL,
	[WorkInjuryInsuranceEndDate] [nvarchar](max) NULL,
	[CPFDonationType] [nvarchar](max) NULL,
	[FinishedSafetySupervisorCource] [bit] NULL,
	[MYE] [bit] NULL,
	[SDL] [nvarchar](max) NULL,
	[WorkType] [nvarchar](max) NULL,
	[OTGroup] [int] NULL,
	[RestDay] [int] NULL,
	[WorkingHours] [int] NULL,
	[OtherBankName] [nvarchar](max) NULL,
	[PublicHolidayPay] [bit] NULL,
	[CSOCExpiryDate] [datetime] NULL,
	[SecurityBondPolicyNumber] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Employee] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EmployeeProject]    Script Date: 10/25/2016 1:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeeProject](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeId] [int] NOT NULL,
	[projectId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.EmployeeProject] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Insurance]    Script Date: 10/25/2016 1:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Insurance](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[InsuranceProviderName] [nvarchar](max) NULL,
	[InsuranceType] [nvarchar](max) NULL,
	[InsurancePolicyNumber] [nvarchar](max) NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
 CONSTRAINT [PK_dbo.Insurance] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Invoice]    Script Date: 10/25/2016 1:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Invoice](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClientId] [int] NULL,
	[QuotationId] [int] NULL,
	[Address] [nvarchar](max) NULL,
	[Attention] [nvarchar](max) NULL,
	[InvoiceDate] [datetime] NULL,
	[FromDate] [datetime] NULL,
	[ToDate] [datetime] NULL,
	[TotalAmount] [decimal](18, 2) NULL,
	[Status] [nvarchar](max) NULL,
	[PhaseName] [nvarchar](max) NULL,
	[InvoiceAmount] [decimal](18, 2) NULL,
	[IsProgressClaimRequired] [nvarchar](max) NULL,
	[ProgressClaimStatus] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Invoice] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[InvoicePhase]    Script Date: 10/25/2016 1:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InvoicePhase](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[InvoiceId] [int] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Percentage] [decimal](18, 2) NULL,
	[QuotationAmount] [decimal](18, 2) NULL,
	[PhaseAmount] [decimal](18, 2) NULL,
 CONSTRAINT [PK_dbo.InvoicePhase] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Leave]    Script Date: 10/25/2016 1:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Leave](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeId] [int] NOT NULL,
	[LeaveType] [nvarchar](max) NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[PaidLeave] [int] NOT NULL,
	[UnPaidLeave] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Leave] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LoanAndAdvance]    Script Date: 10/25/2016 1:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoanAndAdvance](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeId] [int] NOT NULL,
	[LoanDate] [date] NOT NULL,
	[LoanAmount] [decimal](18, 2) NOT NULL,
	[ApprovedByEmployeeId] [int] NOT NULL,
	[LoanRepaymentStartDate] [date] NOT NULL,
	[Mode] [nvarchar](max) NULL,
	[LoanRepaymentEndDate] [date] NOT NULL,
	[LoanStatus] [nvarchar](max) NULL,
	[RepaymentDuration] [nvarchar](max) NULL,
	[RepaymentAmount] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.LoanAndAdvance] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LoanAndAdvanceDetails]    Script Date: 10/25/2016 1:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoanAndAdvanceDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[LoanDetectionDate] [date] NOT NULL,
	[LoanDetectionAmount] [decimal](18, 2) NOT NULL,
	[IsDetected] [bit] NOT NULL,
	[LoanAndAdvance_Id] [int] NULL,
 CONSTRAINT [PK_dbo.LoanAndAdvanceDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MaterialPurchase]    Script Date: 10/25/2016 1:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MaterialPurchase](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Date] [datetime] NOT NULL,
	[BillRefNo] [nvarchar](max) NULL,
	[SupplierName] [nvarchar](max) NULL,
	[SupplierAddress] [nvarchar](max) NULL,
	[ProjectId] [int] NOT NULL,
	[PaymentMethod] [nvarchar](max) NULL,
	[TransRefNo] [nvarchar](max) NULL,
	[PaymentStatus] [nvarchar](max) NULL,
	[MaterialPurchaseValue] [decimal](18, 2) NULL,
 CONSTRAINT [PK_dbo.MaterialPurchase] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MaterialPurchaseItem]    Script Date: 10/25/2016 1:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MaterialPurchaseItem](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MaterialPurchaseId] [int] NULL,
	[Quantity] [int] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[UnitPrice] [decimal](18, 2) NULL,
	[GST] [decimal](18, 2) NULL,
	[TotalAmount] [decimal](18, 2) NULL,
 CONSTRAINT [PK_dbo.MaterialPurchaseItem] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OperationExpense]    Script Date: 10/25/2016 1:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OperationExpense](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Date] [datetime] NOT NULL,
	[BillRefNo] [nvarchar](max) NULL,
	[ExpenseCategory] [nvarchar](max) NULL,
	[OtherExpense] [nvarchar](max) NULL,
	[Amount] [decimal](18, 2) NULL,
	[PaymentMethod] [nvarchar](max) NULL,
	[TransRefNo] [nvarchar](max) NULL,
	[PaymentStatus] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.OperationExpense] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OtherIncome]    Script Date: 10/25/2016 1:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OtherIncome](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[IncomeDate] [datetime] NOT NULL,
	[TotalAmount] [decimal](18, 2) NULL,
 CONSTRAINT [PK_dbo.OtherIncome] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Overtime]    Script Date: 10/25/2016 1:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Overtime](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[GroupName] [nvarchar](max) NULL,
	[OTType] [nvarchar](max) NULL,
	[OTValue] [decimal](18, 2) NULL,
 CONSTRAINT [PK_dbo.Overtime] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Payment]    Script Date: 10/25/2016 1:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payment](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[InvoiceId] [int] NULL,
	[PaymentMethod] [nvarchar](max) NULL,
	[PaymentDate] [nvarchar](max) NULL,
	[TransactionId] [int] NULL,
	[TransactionFees] [decimal](18, 2) NULL,
	[Amount] [decimal](18, 2) NULL,
 CONSTRAINT [PK_dbo.Payment] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Project]    Script Date: 10/25/2016 1:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Project](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProjectName] [nvarchar](max) NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NOT NULL,
	[ClientId] [int] NOT NULL,
	[ProjectDescription] [nvarchar](max) NULL,
	[Status] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Project] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PublicHoliday]    Script Date: 10/25/2016 1:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PublicHoliday](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Date] [date] NOT NULL,
	[LeaveDescription] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.PublicHoliday] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Quotation]    Script Date: 10/25/2016 1:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Quotation](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClientId] [int] NOT NULL,
	[ProjectId] [int] NOT NULL,
	[DateCreated] [datetime] NULL,
	[ValidUntil] [datetime] NULL,
	[Stage] [nvarchar](max) NULL,
	[Subject] [nvarchar](max) NULL,
	[Content] [nvarchar](max) NULL,
	[To] [nvarchar](max) NULL,
	[Notes] [nvarchar](max) NULL,
	[TermsAndCondtions] [nvarchar](max) NULL,
	[QuotationValue] [decimal](18, 2) NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Quotation] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[QuotationItems]    Script Date: 10/25/2016 1:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuotationItems](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[UnitPrice] [decimal](18, 2) NULL,
	[Amount] [decimal](18, 2) NULL,
	[QuotationId] [int] NULL,
	[Quantity] [int] NOT NULL DEFAULT ((0)),
 CONSTRAINT [PK_dbo.QuotationItems] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RestDate]    Script Date: 10/25/2016 1:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RestDate](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Date] [datetime] NULL,
	[RestDayId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.RestDate] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RestDay]    Script Date: 10/25/2016 1:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RestDay](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[GroupName] [nvarchar](max) NULL,
	[RestDayType] [nvarchar](max) NULL,
	[IsSundayRestDay] [bit] NOT NULL DEFAULT ((0)),
	[IsMondayRestDay] [bit] NOT NULL DEFAULT ((0)),
	[IsTuesdayRestDay] [bit] NOT NULL DEFAULT ((0)),
	[IsThursdayRestDay] [bit] NOT NULL DEFAULT ((0)),
	[IsFridayRestDay] [bit] NOT NULL DEFAULT ((0)),
	[IsSaturdayRestDay] [bit] NOT NULL DEFAULT ((0)),
	[IsWednesdayRestDay] [bit] NOT NULL DEFAULT ((0)),
 CONSTRAINT [PK_dbo.RestDay] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RestDayPay]    Script Date: 10/25/2016 1:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RestDayPay](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[GroupName] [nvarchar](max) NULL,
	[PayType] [nvarchar](max) NULL,
	[PayValue] [decimal](18, 2) NULL,
 CONSTRAINT [PK_dbo.RestDayPay] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SalaryDetail]    Script Date: 10/25/2016 1:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SalaryDetail](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeId] [int] NOT NULL,
	[EmployeeName] [nvarchar](max) NULL,
	[PresentDays] [int] NULL,
	[LeaveDays] [int] NULL,
	[BasicSalary] [decimal](18, 2) NOT NULL,
	[FixedAllowance] [decimal](18, 2) NULL,
	[TravelAllowance] [decimal](18, 2) NULL,
	[BonusAllowance] [decimal](18, 2) NULL,
	[OtherAllowance] [decimal](18, 2) NULL,
	[FoodAllowance] [decimal](18, 2) NULL,
	[RoomRentalAllowance] [decimal](18, 2) NULL,
	[loanAmountDeposited] [decimal](18, 2) NULL,
	[TotalAdditions] [decimal](18, 2) NULL,
	[EmployeeCPF] [decimal](18, 2) NULL,
	[OTHourAllowance] [decimal](18, 2) NULL,
	[TotalDetectSalary] [decimal](18, 2) NULL,
	[loanAmountDetected] [decimal](18, 2) NULL,
	[GrossSalary] [decimal](18, 2) NOT NULL,
	[SalaryYear] [nvarchar](max) NULL,
	[SalaryMonth] [nvarchar](max) NULL,
	[IsSalaryGenerated] [bit] NOT NULL,
	[EmployerCPF] [decimal](18, 2) NULL,
	[Donation] [decimal](18, 2) NULL,
	[UnPaidLeaveCount] [int] NULL,
	[UnPaidLeaveSalaryDetect] [decimal](18, 2) NULL,
	[Levy] [decimal](18, 2) NULL,
	[WorkStatus] [nvarchar](max) NULL,
	[Status] [nvarchar](max) NULL,
	[DateCreated] [datetime] NOT NULL DEFAULT ('1900-01-01T00:00:00.000'),
	[RestDayAllowance] [decimal](18, 2) NULL,
	[PublicHolidayAllowance] [decimal](18, 2) NULL,
 CONSTRAINT [PK_dbo.SalaryDetail] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Timesheet]    Script Date: 10/25/2016 1:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Timesheet](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TimesheetDate] [date] NOT NULL,
	[ProjectId] [int] NULL,
	[EmployeeId] [int] NOT NULL,
	[TimeIn] [time](7) NULL,
	[TimeOut] [time](7) NULL,
	[RegularHours] [float] NULL,
	[OTHours] [float] NULL,
	[TotalHours] [float] NULL,
	[IsSubmitted] [bit] NOT NULL,
	[IsLeave] [bit] NOT NULL DEFAULT ((0)),
	[IsPaid] [bit] NOT NULL DEFAULT ((0)),
	[IsRestday] [bit] NOT NULL DEFAULT ((0)),
	[IsPublicHoliday] [bit] NOT NULL DEFAULT ((0)),
 CONSTRAINT [PK_dbo.Timesheet] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[User]    Script Date: 10/25/2016 1:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeId] [int] NULL,
	[IsActive] [nvarchar](max) NULL,
	[UserId] [nvarchar](max) NULL,
	[Password] [nvarchar](max) NULL,
	[Role] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.User] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[WorkingHour]    Script Date: 10/25/2016 1:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WorkingHour](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[InTime] [time](7) NULL,
	[OutTime] [time](7) NULL,
	[GroupName] [nvarchar](max) NULL,
	[TotalHour] [decimal](18, 2) NULL,
	[WeeklyAvgWorkingHour] [decimal](18, 2) NULL,
	[WeeklyAvgWorkingDays] [decimal](18, 2) NULL,
 CONSTRAINT [PK_dbo.WorkingHour] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[WorkPermitAddress]    Script Date: 10/25/2016 1:25:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WorkPermitAddress](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Address] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.WorkPermitAddress] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([Id], [EmployeeId], [UserId], [Password], [Role], [IsActive]) VALUES (1, NULL, N'admin', N'V8ujR41+vf4=', N'Admin', NULL)
SET IDENTITY_INSERT [dbo].[User] OFF

/****** Object:  Index [IX_EmployeeId]    Script Date: 10/25/2016 1:25:40 AM ******/
CREATE NONCLUSTERED INDEX [IX_EmployeeId] ON [dbo].[Allowance]
(
	[EmployeeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_EmployeeId]    Script Date: 10/25/2016 1:25:40 AM ******/
CREATE NONCLUSTERED INDEX [IX_EmployeeId] ON [dbo].[EmployeeProject]
(
	[EmployeeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_projectId]    Script Date: 10/25/2016 1:25:40 AM ******/
CREATE NONCLUSTERED INDEX [IX_projectId] ON [dbo].[EmployeeProject]
(
	[projectId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_InvoiceId]    Script Date: 10/25/2016 1:25:40 AM ******/
CREATE NONCLUSTERED INDEX [IX_InvoiceId] ON [dbo].[InvoicePhase]
(
	[InvoiceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_EmployeeId]    Script Date: 10/25/2016 1:25:40 AM ******/
CREATE NONCLUSTERED INDEX [IX_EmployeeId] ON [dbo].[LoanAndAdvance]
(
	[EmployeeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_LoanAndAdvance_Id]    Script Date: 10/25/2016 1:25:40 AM ******/
CREATE NONCLUSTERED INDEX [IX_LoanAndAdvance_Id] ON [dbo].[LoanAndAdvanceDetails]
(
	[LoanAndAdvance_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_MaterialPurchaseId]    Script Date: 10/25/2016 1:25:40 AM ******/
CREATE NONCLUSTERED INDEX [IX_MaterialPurchaseId] ON [dbo].[MaterialPurchaseItem]
(
	[MaterialPurchaseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_InvoiceId]    Script Date: 10/25/2016 1:25:40 AM ******/
CREATE NONCLUSTERED INDEX [IX_InvoiceId] ON [dbo].[Payment]
(
	[InvoiceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ClientId]    Script Date: 10/25/2016 1:25:40 AM ******/
CREATE NONCLUSTERED INDEX [IX_ClientId] ON [dbo].[Project]
(
	[ClientId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_QuotationId]    Script Date: 10/25/2016 1:25:40 AM ******/
CREATE NONCLUSTERED INDEX [IX_QuotationId] ON [dbo].[QuotationItems]
(
	[QuotationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_RestDayId]    Script Date: 10/25/2016 1:25:40 AM ******/
CREATE NONCLUSTERED INDEX [IX_RestDayId] ON [dbo].[RestDate]
(
	[RestDayId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_EmployeeId]    Script Date: 10/25/2016 1:25:40 AM ******/
CREATE NONCLUSTERED INDEX [IX_EmployeeId] ON [dbo].[SalaryDetail]
(
	[EmployeeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_EmployeeId]    Script Date: 10/25/2016 1:25:40 AM ******/
CREATE NONCLUSTERED INDEX [IX_EmployeeId] ON [dbo].[Timesheet]
(
	[EmployeeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_EmployeeId]    Script Date: 10/25/2016 1:25:40 AM ******/
CREATE NONCLUSTERED INDEX [IX_EmployeeId] ON [dbo].[User]
(
	[EmployeeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Allowance]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Allowance_dbo.Employee_EmployeeId] FOREIGN KEY([EmployeeId])
REFERENCES [dbo].[Employee] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Allowance] CHECK CONSTRAINT [FK_dbo.Allowance_dbo.Employee_EmployeeId]
GO
ALTER TABLE [dbo].[EmployeeProject]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EmployeeProject_dbo.Employee_EmployeeId] FOREIGN KEY([EmployeeId])
REFERENCES [dbo].[Employee] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EmployeeProject] CHECK CONSTRAINT [FK_dbo.EmployeeProject_dbo.Employee_EmployeeId]
GO
ALTER TABLE [dbo].[EmployeeProject]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EmployeeProject_dbo.Project_projectId] FOREIGN KEY([projectId])
REFERENCES [dbo].[Project] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EmployeeProject] CHECK CONSTRAINT [FK_dbo.EmployeeProject_dbo.Project_projectId]
GO
ALTER TABLE [dbo].[InvoicePhase]  WITH CHECK ADD  CONSTRAINT [FK_dbo.InvoicePhase_dbo.Invoice_InvoiceId] FOREIGN KEY([InvoiceId])
REFERENCES [dbo].[Invoice] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[InvoicePhase] CHECK CONSTRAINT [FK_dbo.InvoicePhase_dbo.Invoice_InvoiceId]
GO
ALTER TABLE [dbo].[LoanAndAdvance]  WITH CHECK ADD  CONSTRAINT [FK_dbo.LoanAndAdvance_dbo.Employee_EmployeeId] FOREIGN KEY([EmployeeId])
REFERENCES [dbo].[Employee] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[LoanAndAdvance] CHECK CONSTRAINT [FK_dbo.LoanAndAdvance_dbo.Employee_EmployeeId]
GO
ALTER TABLE [dbo].[LoanAndAdvanceDetails]  WITH CHECK ADD  CONSTRAINT [FK_dbo.LoanAndAdvanceDetails_dbo.LoanAndAdvance_LoanAndAdvance_Id] FOREIGN KEY([LoanAndAdvance_Id])
REFERENCES [dbo].[LoanAndAdvance] ([Id])
GO
ALTER TABLE [dbo].[LoanAndAdvanceDetails] CHECK CONSTRAINT [FK_dbo.LoanAndAdvanceDetails_dbo.LoanAndAdvance_LoanAndAdvance_Id]
GO
ALTER TABLE [dbo].[MaterialPurchaseItem]  WITH CHECK ADD  CONSTRAINT [FK_dbo.MaterialPurchaseItem_dbo.MaterialPurchase_MaterialPurchaseId] FOREIGN KEY([MaterialPurchaseId])
REFERENCES [dbo].[MaterialPurchase] ([Id])
GO
ALTER TABLE [dbo].[MaterialPurchaseItem] CHECK CONSTRAINT [FK_dbo.MaterialPurchaseItem_dbo.MaterialPurchase_MaterialPurchaseId]
GO
ALTER TABLE [dbo].[Payment]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Payment_dbo.Invoice_InvoiceId] FOREIGN KEY([InvoiceId])
REFERENCES [dbo].[Invoice] ([Id])
GO
ALTER TABLE [dbo].[Payment] CHECK CONSTRAINT [FK_dbo.Payment_dbo.Invoice_InvoiceId]
GO
ALTER TABLE [dbo].[Project]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Project_dbo.Client_ClientId] FOREIGN KEY([ClientId])
REFERENCES [dbo].[Client] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Project] CHECK CONSTRAINT [FK_dbo.Project_dbo.Client_ClientId]
GO
ALTER TABLE [dbo].[QuotationItems]  WITH CHECK ADD  CONSTRAINT [FK_dbo.QuotationItems_dbo.Quotation_Quotation_Id] FOREIGN KEY([QuotationId])
REFERENCES [dbo].[Quotation] ([Id])
GO
ALTER TABLE [dbo].[QuotationItems] CHECK CONSTRAINT [FK_dbo.QuotationItems_dbo.Quotation_Quotation_Id]
GO
ALTER TABLE [dbo].[RestDate]  WITH CHECK ADD  CONSTRAINT [FK_dbo.RestDate_dbo.RestDay_RestDayId] FOREIGN KEY([RestDayId])
REFERENCES [dbo].[RestDay] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[RestDate] CHECK CONSTRAINT [FK_dbo.RestDate_dbo.RestDay_RestDayId]
GO
ALTER TABLE [dbo].[SalaryDetail]  WITH CHECK ADD  CONSTRAINT [FK_dbo.SalaryDetail_dbo.Employee_EmployeeId] FOREIGN KEY([EmployeeId])
REFERENCES [dbo].[Employee] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SalaryDetail] CHECK CONSTRAINT [FK_dbo.SalaryDetail_dbo.Employee_EmployeeId]
GO
ALTER TABLE [dbo].[Timesheet]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Timesheet_dbo.Employee_EmployeeId] FOREIGN KEY([EmployeeId])
REFERENCES [dbo].[Employee] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Timesheet] CHECK CONSTRAINT [FK_dbo.Timesheet_dbo.Employee_EmployeeId]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_dbo.User_dbo.Employee_EmployeeId] FOREIGN KEY([EmployeeId])
REFERENCES [dbo].[Employee] ([Id])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_dbo.User_dbo.Employee_EmployeeId]
GO
USE [master]
GO
ALTER DATABASE [ERPDB] SET  READ_WRITE 
GO
