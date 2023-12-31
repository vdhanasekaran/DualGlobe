ALTER TABLE [ERPDB].[dbo].[Timesheet] ADD [ClientId] [int] NULL

Update timesheet
set timesheet.ClientId = project.ClientId
from [ERPDB].[dbo].[Timesheet]  timesheet
inner join [ERPDB].[dbo].[Project] project
on timesheet.ProjectId = project.Id
where timesheet.ClientId is null

ALTER TABLE [ERPDB].[dbo].[SalaryDetail]  ALTER Column [UnPaidLeaveCount] [decimal](18, 2) NULL

ALTER TABLE [ERPDB].[dbo].[Leave]  ALTER Column [PaidLeave] [decimal](18, 2) NULL
ALTER TABLE [ERPDB].[dbo].[Leave]  ALTER Column [UnPaidLeave] [decimal](18, 2) NULL
ALTER TABLE [ERPDB].[dbo].[Leave]  ALTER Column [TotalDays] [decimal](18, 2) NULL

ALTER TABLE [BIZDB].[dbo].[Employee] ADD [LastWorkingDate] [datetime] NULL
 