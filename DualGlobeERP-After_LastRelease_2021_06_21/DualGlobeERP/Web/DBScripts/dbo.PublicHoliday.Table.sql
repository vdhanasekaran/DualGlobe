USE [ERPDB]
GO
SET IDENTITY_INSERT [dbo].[PublicHoliday] ON 

INSERT [dbo].[PublicHoliday] ([Id], [Date], [LeaveDescription]) VALUES (1, CAST(N'2016-01-01' AS Date), N'New Year''s Day')
INSERT [dbo].[PublicHoliday] ([Id], [Date], [LeaveDescription]) VALUES (2, CAST(N'2016-02-08' AS Date), N'Chinese New Year First Day')
INSERT [dbo].[PublicHoliday] ([Id], [Date], [LeaveDescription]) VALUES (3, CAST(N'2016-02-09' AS Date), N'Chinese New Year Second Day')
INSERT [dbo].[PublicHoliday] ([Id], [Date], [LeaveDescription]) VALUES (4, CAST(N'2016-03-25' AS Date), N'Good Friday')
INSERT [dbo].[PublicHoliday] ([Id], [Date], [LeaveDescription]) VALUES (5, CAST(N'2016-05-01' AS Date), N'Labour Day')
INSERT [dbo].[PublicHoliday] ([Id], [Date], [LeaveDescription]) VALUES (6, CAST(N'2016-05-21' AS Date), N'Vesak Day')
INSERT [dbo].[PublicHoliday] ([Id], [Date], [LeaveDescription]) VALUES (7, CAST(N'2016-07-06' AS Date), N'Hari Raya Puasa')
INSERT [dbo].[PublicHoliday] ([Id], [Date], [LeaveDescription]) VALUES (8, CAST(N'2016-08-09' AS Date), N'National Day')
INSERT [dbo].[PublicHoliday] ([Id], [Date], [LeaveDescription]) VALUES (9, CAST(N'2016-09-12' AS Date), N'Hari Raya Haji')
INSERT [dbo].[PublicHoliday] ([Id], [Date], [LeaveDescription]) VALUES (10, CAST(N'2016-10-29' AS Date), N'Deepavali')
INSERT [dbo].[PublicHoliday] ([Id], [Date], [LeaveDescription]) VALUES (11, CAST(N'2016-12-25' AS Date), N'Christmas Day')
SET IDENTITY_INSERT [dbo].[PublicHoliday] OFF
