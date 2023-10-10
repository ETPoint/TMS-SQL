IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PlanDetail]') AND type in (N'U'))
ALTER TABLE [dbo].[PlanDetail] DROP CONSTRAINT IF EXISTS [FK_PlanDetail_Plan_PlanID]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Plan_review]') AND type in (N'U'))
ALTER TABLE [dbo].[Plan_review] DROP CONSTRAINT IF EXISTS [FK_Plan_review_User_UserID]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Plan_review]') AND type in (N'U'))
ALTER TABLE [dbo].[Plan_review] DROP CONSTRAINT IF EXISTS [FK_Plan_review_Plan_PlanID]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Plan]') AND type in (N'U'))
ALTER TABLE [dbo].[Plan] DROP CONSTRAINT IF EXISTS [FK_Plan_User_UserID]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Plan]') AND type in (N'U'))
ALTER TABLE [dbo].[Plan] DROP CONSTRAINT IF EXISTS [FK_Plan_Book_BookID]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ClubReading]') AND type in (N'U'))
ALTER TABLE [dbo].[ClubReading] DROP CONSTRAINT IF EXISTS [FK_ClubReading_Plan_PlanID]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ClubReading]') AND type in (N'U'))
ALTER TABLE [dbo].[ClubReading] DROP CONSTRAINT IF EXISTS [FK_ClubReading_Club_ClubID]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ClubMember]') AND type in (N'U'))
ALTER TABLE [dbo].[ClubMember] DROP CONSTRAINT IF EXISTS [FK_ClubMember_User_UserID]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Club_review]') AND type in (N'U'))
ALTER TABLE [dbo].[Club_review] DROP CONSTRAINT IF EXISTS [FK_Club_review_User_UserID]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Club_review]') AND type in (N'U'))
ALTER TABLE [dbo].[Club_review] DROP CONSTRAINT IF EXISTS [FK_Club_review_Club_ClubID]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Club_Announcment]') AND type in (N'U'))
ALTER TABLE [dbo].[Club_Announcment] DROP CONSTRAINT IF EXISTS [FK_Club_Announcment_User_UserID]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Club]') AND type in (N'U'))
ALTER TABLE [dbo].[Club] DROP CONSTRAINT IF EXISTS [FK_Club_User_UserID]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Book]') AND type in (N'U'))
ALTER TABLE [dbo].[Book] DROP CONSTRAINT IF EXISTS [FK_Book_User_UploadedBy]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Book]') AND type in (N'U'))
ALTER TABLE [dbo].[Book] DROP CONSTRAINT IF EXISTS [FK_Book_Book_Genre_GenreID]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Admin]') AND type in (N'U'))
ALTER TABLE [dbo].[Admin] DROP CONSTRAINT IF EXISTS [FK_Admin_User_UserID]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Admin]') AND type in (N'U'))
ALTER TABLE [dbo].[Admin] DROP CONSTRAINT IF EXISTS [FK_Admin_Admin_Description_AdminID]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[User]') AND type in (N'U'))
ALTER TABLE [dbo].[User] DROP CONSTRAINT IF EXISTS [df_User_MembershipStartDate]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Plan_review]') AND type in (N'U'))
ALTER TABLE [dbo].[Plan_review] DROP CONSTRAINT IF EXISTS [df_Plan_review_Review_Date]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ClubReading]') AND type in (N'U'))
ALTER TABLE [dbo].[ClubReading] DROP CONSTRAINT IF EXISTS [df_ClubReading_Readingstartdate]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ClubMember]') AND type in (N'U'))
ALTER TABLE [dbo].[ClubMember] DROP CONSTRAINT IF EXISTS [df_ClubMember_JoinedDate]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Club_review]') AND type in (N'U'))
ALTER TABLE [dbo].[Club_review] DROP CONSTRAINT IF EXISTS [df_Club_review_Review_Date]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Club_Announcment]') AND type in (N'U'))
ALTER TABLE [dbo].[Club_Announcment] DROP CONSTRAINT IF EXISTS [df_Club_Announcment_Announcement_Date]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Club]') AND type in (N'U'))
ALTER TABLE [dbo].[Club] DROP CONSTRAINT IF EXISTS [df_Club_CreatedDate]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Book]') AND type in (N'U'))
ALTER TABLE [dbo].[Book] DROP CONSTRAINT IF EXISTS [df_Book_CreatedDate]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Book]') AND type in (N'U'))
ALTER TABLE [dbo].[Book] DROP CONSTRAINT IF EXISTS [df_Book_AvailabilityStatus]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Admin_Description]') AND type in (N'U'))
ALTER TABLE [dbo].[Admin_Description] DROP CONSTRAINT IF EXISTS [df_Admin_Description_AdmintatusID]
GO
/****** Object:  Table [dbo].[User]    Script Date: 10/10/2023 1:51:33 PM ******/
DROP TABLE IF EXISTS [dbo].[User]
GO
/****** Object:  Table [dbo].[PlanDetail]    Script Date: 10/10/2023 1:51:33 PM ******/
DROP TABLE IF EXISTS [dbo].[PlanDetail]
GO
/****** Object:  Table [dbo].[Plan_review]    Script Date: 10/10/2023 1:51:33 PM ******/
DROP TABLE IF EXISTS [dbo].[Plan_review]
GO
/****** Object:  Table [dbo].[Plan]    Script Date: 10/10/2023 1:51:33 PM ******/
DROP TABLE IF EXISTS [dbo].[Plan]
GO
/****** Object:  Table [dbo].[ClubReading]    Script Date: 10/10/2023 1:51:33 PM ******/
DROP TABLE IF EXISTS [dbo].[ClubReading]
GO
/****** Object:  Table [dbo].[ClubMember]    Script Date: 10/10/2023 1:51:33 PM ******/
DROP TABLE IF EXISTS [dbo].[ClubMember]
GO
/****** Object:  Table [dbo].[Club_review]    Script Date: 10/10/2023 1:51:33 PM ******/
DROP TABLE IF EXISTS [dbo].[Club_review]
GO
/****** Object:  Table [dbo].[Club_Announcment]    Script Date: 10/10/2023 1:51:33 PM ******/
DROP TABLE IF EXISTS [dbo].[Club_Announcment]
GO
/****** Object:  Table [dbo].[Club]    Script Date: 10/10/2023 1:51:33 PM ******/
DROP TABLE IF EXISTS [dbo].[Club]
GO
/****** Object:  Table [dbo].[Book_Genre]    Script Date: 10/10/2023 1:51:33 PM ******/
DROP TABLE IF EXISTS [dbo].[Book_Genre]
GO
/****** Object:  Table [dbo].[Book]    Script Date: 10/10/2023 1:51:33 PM ******/
DROP TABLE IF EXISTS [dbo].[Book]
GO
/****** Object:  Table [dbo].[Admins_Description]    Script Date: 10/10/2023 1:51:33 PM ******/
DROP TABLE IF EXISTS [dbo].[Admins_Description]
GO
/****** Object:  Table [dbo].[Admin_Description]    Script Date: 10/10/2023 1:51:33 PM ******/
DROP TABLE IF EXISTS [dbo].[Admin_Description]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 10/10/2023 1:51:33 PM ******/
DROP TABLE IF EXISTS [dbo].[Admin]
GO