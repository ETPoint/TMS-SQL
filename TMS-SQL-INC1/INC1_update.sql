
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
CREATE TABLE [dbo].[Admins_Description](
	[AdminID] [tinyint] NOT NULL,
	[AdminStatusID] [bit] NULL,
	[AdminDescription] [varchar](15) NULL
	--,[AdminStatus] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[AdminID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO

/****** Object:  Table [dbo].[Admin_Status]    Script Date: 10/10/2023 1:51:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Admin_Status](
	[StatusID] [tinyint] NOT NULL,
	[AdminStatus] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	StatusID ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO

insert into Admins_Description (AdminID,AdminDescription) values (0,'Non Admin')
go
insert into Admins_Description (AdminID,AdminDescription) values (1,'Club Admin')
go
insert into Admins_Description (AdminID,AdminDescription) values (2,'Super Admin')
go

insert into [Admin] (AdminID,UserID,AdmintatusID) values (2,1,1)
go

insert into [dbo].[Admin_Status]   values (1,'Active')
go
insert into [dbo].[Admin_Status]   values (0,'Inactive')
go




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
	[BookContent] VARBINARY(Max),
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
	[AdminID] int
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
	[username]  varchar(25) not null,
	[password] varchar(max),
	[Role] varchar(15),
	[MembershipStatus] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO

INSERT INTO [user] (firstname,lastname,email, [password],[username], [Role]) values ('Mike', 'Tefera','wongelmikre@gmail.com', 'P@ssw0rd!','mikre','Super Admin')
GO

INSERT INTO [user] (firstname,lastname,email, [password],[username], [Role]) values ('Mike2', 'Tefera2','wongelmikre2@gmail.com', 'P@ssw0rd!','mikre2','Club Admin')
GO

INSERT INTO [user] (firstname,lastname,email, [password],[username], [Role]) values ('Mike3', 'Tefera3','wongelmikre3@gmail.com', 'P@ssw0rd!','mikre3','Non Admin')
GO

SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_refreshtoken]    Script Date: 23-07-22 08:32:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Refreshtokens](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[Email] varchar(25),
	[TokenId] [varchar](50) NULL,
	[Refreshtoken] [nvarchar](max) NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_tbl_refreshtoken] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO

ALTER TABLE  [dbo].[Refreshtokens] ADD  CONSTRAINT [df_Refreshtoken_IsActive]  DEFAULT 1 FOR [IsActive]
GO
--ALTER TABLE [dbo].[Admin_Description] ADD  CONSTRAINT [df_Admin_Description_AdmintatusID]  DEFAULT ((1)) FOR [AdmintatusID]
--GO
ALTER TABLE [dbo].[Book] ADD  CONSTRAINT [df_Book_AvailabilityStatus]  DEFAULT ('Available') FOR [AvailabilityStatus]
GO
ALTER TABLE [dbo].[Book] ADD  CONSTRAINT [df_Book_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Club] ADD  CONSTRAINT [df_Club_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Club] ADD  CONSTRAINT [df_Club_AdminID]  DEFAULT 1 FOR [AdminID]
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
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [df_User_Role]  DEFAULT 'Non Admin' FOR [Role]
GO
ALTER TABLE  [dbo].[admin_Status] ADD  CONSTRAINT [df_StatusID_AdminStatus]  DEFAULT 1 FOR [AdminStatus]
GO
ALTER TABLE [dbo].[Refreshtokens]  WITH CHECK ADD  CONSTRAINT [FK_User_Refreshtoken_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([UserId])
GO
--ALTER TABLE [dbo].[Admin]  WITH CHECK ADD  CONSTRAINT [FK_Admin_Admin_Description_AdminID] FOREIGN KEY([AdminID])
--REFERENCES [dbo].[Admin_Description] ([AdminID])
--GO
ALTER TABLE [dbo].[Admin_Status]  WITH CHECK ADD  CONSTRAINT [FK_Admin_Admin_Status_StatusID] FOREIGN KEY([StatusID])
REFERENCES [dbo].Admins_Description  (AdminID)
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


insert into club (ClubName,UserID,adminid) values ('HEBREW',1,2)
go