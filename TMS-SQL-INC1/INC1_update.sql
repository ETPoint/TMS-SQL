
/****** Object:  Table [dbo].[Admin]    Script Date: 10/10/2023 1:51:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AdminID] [tinyint] NULL,
	[UserID] [int] NULL,
	[AdmintatusID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Admin_Description]    Script Date: 10/10/2023 1:51:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Admin_Description](
	[AdminID] [tinyint] NOT NULL,
	[AdmintatusID] [bit] NULL,
	[AdminDescription] [varchar](15) NULL,
	[Admintatus] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[AdminID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Admins_Description]    Script Date: 10/10/2023 1:51:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Admins_Description](
	[AdminID] [tinyint] NOT NULL,
	[AdminStatusID] [bit] NULL,
	[AdminDescription] [varchar](15) NULL,
	[AdminStatus] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[AdminID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Book]    Script Date: 10/10/2023 1:51:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Book](
	[BookID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](50) NOT NULL,
	[Author] [varchar](25) NULL,
	[GenreID] [int] NULL,
	[ISBN] [varchar](25) NULL,
	[PublishedDate] [datetime] NULL,
	[Description] [varchar](1000) NULL,
	[TotalPagePerBook] [int] NULL,
	[AvailabilityStatus] [varchar](10) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UploadedBy] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[BookID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Book_Genre]    Script Date: 10/10/2023 1:51:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Book_Genre](
	[GenreID] [int] IDENTITY(1,1) NOT NULL,
	[GenreName] [varchar](25) NULL,
PRIMARY KEY CLUSTERED 
(
	[GenreID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Club]    Script Date: 10/10/2023 1:51:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Club](
	[ClubID] [int] IDENTITY(1,1) NOT NULL,
	[ClubName] [varchar](250) NOT NULL,
	[UserID] [int] NULL,
	[CreatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ClubID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Club_Announcment]    Script Date: 10/10/2023 1:51:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Club_Announcment](
	[AnnouncementID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](25) NOT NULL,
	[Announcement_Date] [datetime] NULL,
	[Content] [varchar](max) NOT NULL,
	[Announcer] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[AnnouncementID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Club_review]    Script Date: 10/10/2023 1:51:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Club_review](
	[ReviewID] [int] IDENTITY(1,1) NOT NULL,
	[ClubID] [int] NOT NULL,
	[UserID] [int] NOT NULL,
	[Review_Date] [datetime] NULL,
	[Rating] [int] NOT NULL,
	[RatingDescription] [varchar](10) NULL,
	[Comments] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[ReviewID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ClubMember]    Script Date: 10/10/2023 1:51:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClubMember](
	[ClubMemberID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NULL,
	[JoinedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ClubMemberID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClubReading]    Script Date: 10/10/2023 1:51:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClubReading](
	[ClubReadingID] [int] IDENTITY(1,1) NOT NULL,
	[PlanID] [int] NULL,
	[ClubID] [int] NULL,
	[Readingstartdate] [datetime] NOT NULL,
	[CurrentreadingDay] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ClubReadingID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Plan]    Script Date: 10/10/2023 1:51:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Plan](
	[PlanID] [int] IDENTITY(1,1) NOT NULL,
	[BookID] [int] NULL,
	[UserID] [int] NULL,
	[PlannedDateToFinishBok] [datetime] NOT NULL,
	[PlanDescription] [varchar](2500) NULL,
PRIMARY KEY CLUSTERED 
(
	[PlanID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Plan_review]    Script Date: 10/10/2023 1:51:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Plan_review](
	[ReviewID] [int] IDENTITY(1,1) NOT NULL,
	[PlanID] [int] NOT NULL,
	[UserID] [int] NOT NULL,
	[Review_Date] [datetime] NULL,
	[Rating] [int] NOT NULL,
	[RatingDescription] [varchar](10) NULL,
	[Comments] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[ReviewID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PlanDetail]    Script Date: 10/10/2023 1:51:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PlanDetail](
	[PlanDetailID] [int] IDENTITY(1,1) NOT NULL,
	[PlanID] [int] NULL,
	[ReadingDayNumber] [int] NOT NULL,
	[StartingpageNum] [int] NOT NULL,
	[EndingPageNum] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PlanDetailID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 10/10/2023 1:51:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[User](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](25) NOT NULL,
	[LastName] [varchar](25) NOT NULL,
	[Email] [varchar](25) NULL,
	[Phone] [varchar](15) NULL,
	[MembershipStartDate] [datetime] NULL,
	[MembershipStatus] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[Admin_Description] ADD  CONSTRAINT [df_Admin_Description_AdmintatusID]  DEFAULT ((1)) FOR [AdmintatusID]
GO
ALTER TABLE [dbo].[Book] ADD  CONSTRAINT [df_Book_AvailabilityStatus]  DEFAULT ('Available') FOR [AvailabilityStatus]
GO
ALTER TABLE [dbo].[Book] ADD  CONSTRAINT [df_Book_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Club] ADD  CONSTRAINT [df_Club_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Club_Announcment] ADD  CONSTRAINT [df_Club_Announcment_Announcement_Date]  DEFAULT (getdate()) FOR [Announcement_Date]
GO
ALTER TABLE [dbo].[Club_review] ADD  CONSTRAINT [df_Club_review_Review_Date]  DEFAULT (getdate()) FOR [Review_Date]
GO
ALTER TABLE [dbo].[ClubMember] ADD  CONSTRAINT [df_ClubMember_JoinedDate]  DEFAULT (getdate()) FOR [JoinedDate]
GO
ALTER TABLE [dbo].[ClubReading] ADD  CONSTRAINT [df_ClubReading_Readingstartdate]  DEFAULT (dateadd(day,(1),getdate())) FOR [Readingstartdate]
GO
ALTER TABLE [dbo].[Plan_review] ADD  CONSTRAINT [df_Plan_review_Review_Date]  DEFAULT (getdate()) FOR [Review_Date]
GO
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [df_User_MembershipStartDate]  DEFAULT (getdate()) FOR [MembershipStartDate]
GO
ALTER TABLE [dbo].[Admin]  WITH CHECK ADD  CONSTRAINT [FK_Admin_Admin_Description_AdminID] FOREIGN KEY([AdminID])
REFERENCES [dbo].[Admin_Description] ([AdminID])
GO
ALTER TABLE [dbo].[Admin] CHECK CONSTRAINT [FK_Admin_Admin_Description_AdminID]
GO
ALTER TABLE [dbo].[Admin]  WITH CHECK ADD  CONSTRAINT [FK_Admin_User_UserID] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[Admin] CHECK CONSTRAINT [FK_Admin_User_UserID]
GO
ALTER TABLE [dbo].[Book]  WITH CHECK ADD  CONSTRAINT [FK_Book_Book_Genre_GenreID] FOREIGN KEY([GenreID])
REFERENCES [dbo].[Book_Genre] ([GenreID])
GO
ALTER TABLE [dbo].[Book] CHECK CONSTRAINT [FK_Book_Book_Genre_GenreID]
GO
ALTER TABLE [dbo].[Book]  WITH CHECK ADD  CONSTRAINT [FK_Book_User_UploadedBy] FOREIGN KEY([UploadedBy])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[Book] CHECK CONSTRAINT [FK_Book_User_UploadedBy]
GO
ALTER TABLE [dbo].[Club]  WITH CHECK ADD  CONSTRAINT [FK_Club_User_UserID] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[Club] CHECK CONSTRAINT [FK_Club_User_UserID]
GO
ALTER TABLE [dbo].[Club_Announcment]  WITH CHECK ADD  CONSTRAINT [FK_Club_Announcment_User_UserID] FOREIGN KEY([Announcer])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[Club_Announcment] CHECK CONSTRAINT [FK_Club_Announcment_User_UserID]
GO
ALTER TABLE [dbo].[Club_review]  WITH CHECK ADD  CONSTRAINT [FK_Club_review_Club_ClubID] FOREIGN KEY([ClubID])
REFERENCES [dbo].[Club] ([ClubID])
GO
ALTER TABLE [dbo].[Club_review] CHECK CONSTRAINT [FK_Club_review_Club_ClubID]
GO
ALTER TABLE [dbo].[Club_review]  WITH CHECK ADD  CONSTRAINT [FK_Club_review_User_UserID] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[Club_review] CHECK CONSTRAINT [FK_Club_review_User_UserID]
GO
ALTER TABLE [dbo].[ClubMember]  WITH CHECK ADD  CONSTRAINT [FK_ClubMember_User_UserID] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[ClubMember] CHECK CONSTRAINT [FK_ClubMember_User_UserID]
GO
ALTER TABLE [dbo].[ClubReading]  WITH CHECK ADD  CONSTRAINT [FK_ClubReading_Club_ClubID] FOREIGN KEY([ClubID])
REFERENCES [dbo].[Club] ([ClubID])
GO
ALTER TABLE [dbo].[ClubReading] CHECK CONSTRAINT [FK_ClubReading_Club_ClubID]
GO
ALTER TABLE [dbo].[ClubReading]  WITH CHECK ADD  CONSTRAINT [FK_ClubReading_Plan_PlanID] FOREIGN KEY([PlanID])
REFERENCES [dbo].[Plan] ([PlanID])
GO
ALTER TABLE [dbo].[ClubReading] CHECK CONSTRAINT [FK_ClubReading_Plan_PlanID]
GO
ALTER TABLE [dbo].[Plan]  WITH CHECK ADD  CONSTRAINT [FK_Plan_Book_BookID] FOREIGN KEY([BookID])
REFERENCES [dbo].[Book] ([BookID])
GO
ALTER TABLE [dbo].[Plan] CHECK CONSTRAINT [FK_Plan_Book_BookID]
GO
ALTER TABLE [dbo].[Plan]  WITH CHECK ADD  CONSTRAINT [FK_Plan_User_UserID] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[Plan] CHECK CONSTRAINT [FK_Plan_User_UserID]
GO
ALTER TABLE [dbo].[Plan_review]  WITH CHECK ADD  CONSTRAINT [FK_Plan_review_Plan_PlanID] FOREIGN KEY([PlanID])
REFERENCES [dbo].[Plan] ([PlanID])
GO
ALTER TABLE [dbo].[Plan_review] CHECK CONSTRAINT [FK_Plan_review_Plan_PlanID]
GO
ALTER TABLE [dbo].[Plan_review]  WITH CHECK ADD  CONSTRAINT [FK_Plan_review_User_UserID] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[Plan_review] CHECK CONSTRAINT [FK_Plan_review_User_UserID]
GO
ALTER TABLE [dbo].[PlanDetail]  WITH CHECK ADD  CONSTRAINT [FK_PlanDetail_Plan_PlanID] FOREIGN KEY([PlanID])
REFERENCES [dbo].[Plan] ([PlanID])
GO
ALTER TABLE [dbo].[PlanDetail] CHECK CONSTRAINT [FK_PlanDetail_Plan_PlanID]
GO
