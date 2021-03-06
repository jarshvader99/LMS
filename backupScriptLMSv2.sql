IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_LessonViews_UserDetails]') AND parent_object_id = OBJECT_ID(N'[dbo].[LessonViews]'))
ALTER TABLE [dbo].[LessonViews] DROP CONSTRAINT [FK_LessonViews_UserDetails]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_LessonViews_Lessons]') AND parent_object_id = OBJECT_ID(N'[dbo].[LessonViews]'))
ALTER TABLE [dbo].[LessonViews] DROP CONSTRAINT [FK_LessonViews_Lessons]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Lessons_Courses]') AND parent_object_id = OBJECT_ID(N'[dbo].[Lessons]'))
ALTER TABLE [dbo].[Lessons] DROP CONSTRAINT [FK_Lessons_Courses]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_CourseCompletions_UserDetails]') AND parent_object_id = OBJECT_ID(N'[dbo].[CourseCompletions]'))
ALTER TABLE [dbo].[CourseCompletions] DROP CONSTRAINT [FK_CourseCompletions_UserDetails]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_CourseCompletions_Courses]') AND parent_object_id = OBJECT_ID(N'[dbo].[CourseCompletions]'))
ALTER TABLE [dbo].[CourseCompletions] DROP CONSTRAINT [FK_CourseCompletions_Courses]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]'))
ALTER TABLE [dbo].[AspNetUserRoles] DROP CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]'))
ALTER TABLE [dbo].[AspNetUserRoles] DROP CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserLogins]'))
ALTER TABLE [dbo].[AspNetUserLogins] DROP CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserClaims]'))
ALTER TABLE [dbo].[AspNetUserClaims] DROP CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
/****** Object:  Index [UserNameIndex]    Script Date: 7/4/2019 10:21:57 AM ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUsers]') AND name = N'UserNameIndex')
DROP INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
GO
/****** Object:  Index [IX_UserId]    Script Date: 7/4/2019 10:21:57 AM ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]') AND name = N'IX_UserId')
DROP INDEX [IX_UserId] ON [dbo].[AspNetUserRoles]
GO
/****** Object:  Index [IX_RoleId]    Script Date: 7/4/2019 10:21:57 AM ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]') AND name = N'IX_RoleId')
DROP INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles]
GO
/****** Object:  Index [IX_UserId]    Script Date: 7/4/2019 10:21:57 AM ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserLogins]') AND name = N'IX_UserId')
DROP INDEX [IX_UserId] ON [dbo].[AspNetUserLogins]
GO
/****** Object:  Index [IX_UserId]    Script Date: 7/4/2019 10:21:57 AM ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserClaims]') AND name = N'IX_UserId')
DROP INDEX [IX_UserId] ON [dbo].[AspNetUserClaims]
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 7/4/2019 10:21:57 AM ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AspNetRoles]') AND name = N'RoleNameIndex')
DROP INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
GO
/****** Object:  Table [dbo].[UserDetails]    Script Date: 7/4/2019 10:21:57 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserDetails]') AND type in (N'U'))
DROP TABLE [dbo].[UserDetails]
GO
/****** Object:  Table [dbo].[LessonViews]    Script Date: 7/4/2019 10:21:57 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LessonViews]') AND type in (N'U'))
DROP TABLE [dbo].[LessonViews]
GO
/****** Object:  Table [dbo].[Lessons]    Script Date: 7/4/2019 10:21:57 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Lessons]') AND type in (N'U'))
DROP TABLE [dbo].[Lessons]
GO
/****** Object:  Table [dbo].[Courses]    Script Date: 7/4/2019 10:21:57 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Courses]') AND type in (N'U'))
DROP TABLE [dbo].[Courses]
GO
/****** Object:  Table [dbo].[CourseCompletions]    Script Date: 7/4/2019 10:21:57 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CourseCompletions]') AND type in (N'U'))
DROP TABLE [dbo].[CourseCompletions]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 7/4/2019 10:21:57 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUsers]') AND type in (N'U'))
DROP TABLE [dbo].[AspNetUsers]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 7/4/2019 10:21:57 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]') AND type in (N'U'))
DROP TABLE [dbo].[AspNetUserRoles]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 7/4/2019 10:21:57 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserLogins]') AND type in (N'U'))
DROP TABLE [dbo].[AspNetUserLogins]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 7/4/2019 10:21:57 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserClaims]') AND type in (N'U'))
DROP TABLE [dbo].[AspNetUserClaims]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 7/4/2019 10:21:57 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetRoles]') AND type in (N'U'))
DROP TABLE [dbo].[AspNetRoles]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 7/4/2019 10:21:57 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[__MigrationHistory]') AND type in (N'U'))
DROP TABLE [dbo].[__MigrationHistory]
GO
/****** Object:  Database [LMS]    Script Date: 7/4/2019 10:21:57 AM ******/
IF  EXISTS (SELECT name FROM sys.databases WHERE name = N'LMS')
DROP DATABASE [LMS]
GO
/****** Object:  Database [LMS]    Script Date: 7/4/2019 10:21:57 AM ******/
IF NOT EXISTS (SELECT name FROM sys.databases WHERE name = N'LMS')
BEGIN
CREATE DATABASE [LMS]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'LMS', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\LMS.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'LMS_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\LMS_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
END

GO
ALTER DATABASE [LMS] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [LMS].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [LMS] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [LMS] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [LMS] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [LMS] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [LMS] SET ARITHABORT OFF 
GO
ALTER DATABASE [LMS] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [LMS] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [LMS] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [LMS] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [LMS] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [LMS] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [LMS] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [LMS] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [LMS] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [LMS] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [LMS] SET  DISABLE_BROKER 
GO
ALTER DATABASE [LMS] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [LMS] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [LMS] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [LMS] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [LMS] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [LMS] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [LMS] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [LMS] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [LMS] SET  MULTI_USER 
GO
ALTER DATABASE [LMS] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [LMS] SET DB_CHAINING OFF 
GO
ALTER DATABASE [LMS] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [LMS] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 7/4/2019 10:21:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[__MigrationHistory]') AND type in (N'U'))
BEGIN
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
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 7/4/2019 10:21:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetRoles]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 7/4/2019 10:21:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserClaims]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 7/4/2019 10:21:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserLogins]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 7/4/2019 10:21:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 7/4/2019 10:21:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUsers]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[CourseCompletions]    Script Date: 7/4/2019 10:21:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CourseCompletions]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CourseCompletions](
	[CourseCompletionID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [nvarchar](128) NOT NULL,
	[CourseID] [int] NOT NULL,
	[DateCompleted] [datetime] NOT NULL,
 CONSTRAINT [PK_CourseCompletions] PRIMARY KEY CLUSTERED 
(
	[CourseCompletionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Courses]    Script Date: 7/4/2019 10:21:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Courses]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Courses](
	[CourseID] [int] IDENTITY(1,1) NOT NULL,
	[CourseName] [varchar](200) NOT NULL,
	[Description] [varchar](500) NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Courses] PRIMARY KEY CLUSTERED 
(
	[CourseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Lessons]    Script Date: 7/4/2019 10:21:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Lessons]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Lessons](
	[LessonID] [int] IDENTITY(1,1) NOT NULL,
	[LessonTitle] [varchar](200) NOT NULL,
	[CourseID] [int] NOT NULL,
	[Introduction] [varchar](300) NULL,
	[VideoURL] [nchar](250) NULL,
	[PdfFileName] [varchar](100) NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Lessons] PRIMARY KEY CLUSTERED 
(
	[LessonID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LessonViews]    Script Date: 7/4/2019 10:21:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LessonViews]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[LessonViews](
	[LessonViewID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [nvarchar](128) NOT NULL,
	[LessonID] [int] NOT NULL,
	[DateViewed] [datetime] NOT NULL,
 CONSTRAINT [PK_LessonViews] PRIMARY KEY CLUSTERED 
(
	[LessonViewID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[UserDetails]    Script Date: 7/4/2019 10:21:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserDetails]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[UserDetails](
	[UserID] [nvarchar](128) NOT NULL,
	[FirstName] [varchar](50) NOT NULL,
	[LastName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_UserDetails] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201906241616360_InitialCreate', N'LMS.UI.MVC.Models.ApplicationDbContext', 0x1F8B0800000000000400DD5CDB6EE336107D2FD07F10F4D416A9954B77B10DEC5DA44ED206CD0DEB64D1B7052DD18EB012A54A549AA0E897F5A19FD45FE850A26EBCE8622BB6532CB088C8E199E170480E8743FFFBF73FE30F4FBE673CE228760332310F46FBA681891D382E594ECC842EBE7F677E78FFF557E333C77F323EE574478C0E5A9278623E501A1E5B566C3F601FC523DFB5A3200E16746407BE859CC03ADCDFFFD13A38B0304098806518E38F09A1AE8FD30FF89C06C4C6214D90771538D88B7939D4CC5254E31AF9380E918D27E6E5D56C747F31BAFA341D65C4A671E2B9080499616F611A889080220A621EDFC77846A3802C67211420EFEE39C440B7405E8CB9F8C72579D79EEC1FB29E5865C31CCA4E621AF83D010F8EB86A2CB1F94A0A360BD581F2CE40C9F499F53A55E0C4BC70705AF431F0400122C3E3A91731E2897955B03889C36B4C4779C35106791E01DC1F41F4655445DC333AB7DB2B4CE970B4CFFEED19D3C4A349842704273442DE9E719BCC3DD7FE153FDF055F30991C1DCC1747EFDEBC45CED1DB1FF0D19B6A4FA1AF40572B80A2DB28087104B2E145D17FD3B0EAED2CB161D1ACD226D30AD812CC0AD3B8424F97982CE903CC97C377A671EE3E61272FE1C6754F5C9844D08846097C5E279E87E61E2EEAAD469EECFF06AE876FDE0EC2F51A3DBACB74E805FE30712298571FB197D6C60F6E984DAFDA787FE664E751E0B3EFBA7D65B59F674112D9AC338196E40E454B4CEBD28DADD2783B9934831ADEAC73D4DD376D26A96CDE4A52D6A1556642CE62D3B32197F765F976B6B8933084C14B4D8B69A4C9E0A4BD6A2434DE334A92D2700EBA1A0E810EFD9FD7C1331FB9DE000B61072EE0822CDCC8C7452F7F0AC0EC10E92DF32D8A6358079C5F50FCD0203AFC3980E8336C271198E78C223F7C716EB70F01C1D7893F6756BF395E830DCDDD1FC139B269109D11D66A6DBCCBC0FE1224F48C38A788E27B6AE780ECF3CEF5BB030C22CE896DE3383E0763C6CE34000F3B07BC20F4E8B0371C5B9FB6ED884C3DE4FA6A4F4458493FE7A4A537A2A6903C120D99CA2B6912F53258BAA49BA839A95ED48CA255544ED6575406D64D524EA9173425689533A31ACCCF4B476878472F85DD7D4F6FBDCD5BB71654D438831512FF8C098E6019736E11A53822E508745937B6E12CA4C3C798BEF8DE9472FA84BC6468562BCD867411187E36A4B0BB3F1B5231A1F8D1759857D2E1F89313037C277AF5C9AA7DCE09926D7A3AD4BAB969E69B590374D3E5248E03DB4D678122F0C5C31675F9C18733DA6318596FC43808740C0CDD655B1E9440DF4CD1A86EC829F630C5C6899D0506A728B69123AB113AE4F4102CDF51158295F190BA70DF493CC1D271C41A2176088A61A6BA84CAD3C225B61B22AF554B42CB8E5B18EB7BC143AC39C521268C61AB26BA3057873F9800051F6150DA3434B62A16D76C881AAF5537E66D2E6C39EE5254622336D9E23B6BEC92FB6F2F6298CD1ADB807136ABA48B00DA50DE360C949F55BA1A807870D93503154E4C1A03E52ED5460CB4AEB12D18685D25AFCE40B3236AD7F117CEABBB669EF583F2E6B7F546756DC1366BFAD831D3CC7C4F6843A1058E64F33C9DB34AFC4415873390939FCF62EEEA8A26C2C06798D64336A5BFABF443AD6610D1889A004B436B01E59780129034A17A0897C7F21AA5E35E440FD83CEED608CBD77E01B662033276F532B442A8BF32158DB3D3E9A3E859610D9291773A2C54701406212E5EF58E77508A2E2E2B2BA68B2FDCC71BAE748C0F4683825A3C578D92F2CE0CAEA5DC34DBB5A472C8FAB8646B6949709F345ACA3B33B896B88DB62B49E114F4700BD652517D0B1F68B2E5918E62B729EAC6569622C50BC69626976A7C85C2D025CB4A6E152F31665962D5F4FB59FF94233FC3B0EC58917954485B70A241849658A805D620E9B91BC5F4145134472CCE33757C894CB9B76A96FF9C6575FB940731DF07726AF6378FDE4957F7B5AD56F64538C43974D0670E4D1A45570CBFBAB9C152DD90872245E07E1A78894FF4FE95BE75767D576D9F95C808634B905FF29F2465495E6E5DF39DC6459E13C38C51E1BDAC3E4E7A089DB673DFB3AA6F9D3FAA47C9C35355145DC86A6BE3A67363FA8C95E820F61FAA56849799553C2BA50AC08B7A6254121B24B04A5D77D47AEE4915B35ED31D514830A9420A553DA4ACA691D484AC56AC84A7D1A89AA23B073971A48A2ED7764756A49054A115D52B602B6416EBBAA32AB24CAAC08AEAEED865CA89B886EEF0BEA53DB6ACBA716507DBF5762E0DC6CB2C88C36C7C95FBFB2A50A5B82716BFA197C078F94E1A93F674B7AA3165E18CF58C4983A15F776A17DFF565A7F1B65E8F59BBCDAE2DED4DB7F97ABC7E26FBA286219DED4492827B71C613CE72637EAE6A7F3C231DB43212D3C8D508DBFA734CB13F6204A3D9EFDED473315BC473822B44DC058E6996C1611EEE1F1C0A0F7076E7318C15C78EA73897EA5EC4D4C76C03C958E41145F6038AE4D488351E8C94A052D4F98238F86962FE99B63A4E0318ECAFB478CFB888EF89FB7B02157751828DBFE454CF6112E89B4F583BFADCA1BB562F7EFB9C35DD336E229831C7C6BEA0CB5546B8FE08A2973459D335A459F969C4EB9D50B597074A546142ACFED060EED2411E19E4527EE3A3A76FFB8AA67C48B016A2E2B1C0507883A850F71860152CED4300073E69FA10A05F67D50F0356114DFB28C025FDC1C42701DD97A1BCE516B71AC59168134B52AAE7D694EAB5F22BB7BD374999D76B4D7439BBBA07DC1A19D42B58C62B4B3E1E6C7754E4160F86BD4DD37EF184E25DC9212EB33BB69B3ABCC96CE1863BA1FF5592F00EA4B529D274B69F0ABC695BD38571773C9FB25FC2EF8E191B4FDEDA7E5AEFA68D4D17E6DD7163EB95BCBB63B6B6ADFD73CB96D6790BDD7A2AAE9C55A4B98E51C582DB526DB3C0399CF0E7011841E651662F24D5B95D4D79A92D0C4B123D537D5299C8589A38125F89A2996DBFBEF20DBFB1B39CA699AD2615B389375FFF1B79739A66DE9A04C76D24092B530C5589DB2DEB585306D46B4A0AAEF5A42507BDCD676DBC5B7F4D39C08328A5367B3477C4AF27E57710950C39757AA4F8CAD7BDB077567E5111F6EFD85D9610ECF71509B66BBB664173411641BE790B12E5244284E60A53E4C0967A125177816C0AD52CC69C3EF14EE376ECA6638E9D0B7293D030A1D065ECCFBD5AC08B39014DFCD33CE6BACCE39B30FDB59221BA0062BA2C367F437E4A5CCF29E43E57C4843410CCBBE0115D369694457697CF05D275403A0271F5154ED11DF6430FC0E21B32438F7815D9C0FC2EF112D9CF65045007D23E1075B58F4F5DB48C901F738CB23D7C820D3BFED3FBFF00959B103258540000, N'6.1.3-40302')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'2f132e58-eeac-4b36-94fd-19f9e20dbb37', N'Admin')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'0c994510-4996-43f0-b254-a33bd64f84a8', N'Employee')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'2ae074a2-ef32-495e-b46c-23530a6c2d8f', N'Manager')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'02359c40-6c9e-44cd-8e72-db7b0af2edeb', N'0c994510-4996-43f0-b254-a33bd64f84a8')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'0242c940-d95f-4121-9855-77bc4e8c1733', N'0c994510-4996-43f0-b254-a33bd64f84a8')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'11ca2727-c3dd-4703-b984-a61843a1182d', N'0c994510-4996-43f0-b254-a33bd64f84a8')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'41001c6a-c532-45ef-8000-867bb8590fc4', N'0c994510-4996-43f0-b254-a33bd64f84a8')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'95ebe84a-1b81-4f43-b7d7-0c59156dcd4f', N'0c994510-4996-43f0-b254-a33bd64f84a8')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'99a49ef4-0758-4a1a-8d06-819e147eb370', N'0c994510-4996-43f0-b254-a33bd64f84a8')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'cbbb74ba-1a68-42e6-8f21-9d466dfd546e', N'0c994510-4996-43f0-b254-a33bd64f84a8')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'671f23da-f3ae-4487-8737-ac1b16117c9f', N'2ae074a2-ef32-495e-b46c-23530a6c2d8f')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'47bc946c-62bf-4269-beb2-954aa26c1bed', N'2f132e58-eeac-4b36-94fd-19f9e20dbb37')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'02359c40-6c9e-44cd-8e72-db7b0af2edeb', N'employee1@jedi.com', 0, N'AOI2pa9Qpg78l9FSHMB8wxIvO+Kjix4/S/rQpSs3CnewK6lT/QRvTjsQNXEmiAEu0w==', N'da2887d4-c6a9-49d3-bfb4-9b6ff281c300', NULL, 0, 0, NULL, 1, 0, N'employee1@jedi.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'0242c940-d95f-4121-9855-77bc4e8c1733', N'employee2@jedi.com', 0, N'AI0ih1l8u0vyXCpmn5ba2kv7XDtVKYrPaQ2UgnPN5/VF4zJZ2mYplpo9lsZymzADXg==', N'1bc2adc2-1e5d-4a6c-af0c-05e45801b1a0', NULL, 0, 0, NULL, 1, 0, N'employee2@jedi.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'11ca2727-c3dd-4703-b984-a61843a1182d', N'bb8@jedi.com', 0, N'AI1icu254L5HTG/4QhTwdQWZq5CzOtE1yaVrLZyXte15Z5km+wUfIiv8DXb5ICyRVA==', N'a131d667-a900-4b38-b7ee-68d6370e8214', NULL, 0, 0, NULL, 1, 0, N'bb8@jedi.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'41001c6a-c532-45ef-8000-867bb8590fc4', N'test@test.com', 0, N'AM5xsVJhXBE1YK0qxQbJJGl4nwzWd4tAVpxCPZq81ljyEvY8Uk+AZwiiZzCar5tbJg==', N'96f418c9-bb65-4d3c-bc6c-5844baea291d', NULL, 0, 0, NULL, 1, 0, N'test@test.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'442f7918-f687-4bfe-b616-9196219283ba', N'employee3@jedi.om', 0, N'AMC0szfPmAgKHtdV8b+ASWswXNlmLcMFHL8ZpzrMWsMq/w4GgL4j/uZu0Yu/yS51pg==', N'f135a4b2-1f84-41f5-8ed4-ef2a5b039a9a', NULL, 0, 0, NULL, 1, 0, N'employee3@jedi.om')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'47bc946c-62bf-4269-beb2-954aa26c1bed', N'joshua.s.harrison@outlook.com', 1, N'AFP3kdr5dgZuBBt7ZBA5/maDt17O673vqw5oht1QMbphm9veVI+TaQwkhdkwBXyofw==', N'7c91d08e-7ecd-44d3-9b11-ab0003fe3fd3', NULL, 0, 0, NULL, 1, 0, N'joshua.s.harrison@outlook.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'671f23da-f3ae-4487-8737-ac1b16117c9f', N'quigon@jedi.com', 0, N'AMWFTGWn5ZAm0tG4GSyfyP1Aslqsycru4V3rJHFaWe2cWZkesiCAB7+LUidHbUfoOw==', N'2a7ddd7d-de04-4866-8fe4-4befb2ea1f54', NULL, 0, 0, NULL, 1, 0, N'quigon@jedi.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'8ac4cdd6-8d47-49f9-aedd-d524b62e8108', N'obi@jks.com', 1, N'APtgKMnrp5UCVbCBSQ/zro1UOuFlhPHI7Jh5QbeNFQQXcr3rVjsNCI7nc9a6JSpRjg==', N'8b562053-800a-4983-a302-6dc3719d6369', NULL, 0, 0, NULL, 1, 0, N'obi@jks.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'95ebe84a-1b81-4f43-b7d7-0c59156dcd4f', N'nanakin@jedi.com', 0, N'AFPYVv/lmFFl56Reoc+DWvjyZeKwu06uoKK68IzT9i+GZ4pQKHPEaIxbZ98nxu4kOA==', N'115121bd-8443-43ab-b79d-8626513da0b6', NULL, 0, 0, NULL, 1, 0, N'nanakin@jedi.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'99a49ef4-0758-4a1a-8d06-819e147eb370', N'emp@jedi.com', 0, N'AFk0zTv8yFSHv78yKDxY1h8RTkcUeMxNjvn6AUDcXd3+bhStMWwInEESabxrTEfSuA==', N'24ea7d5a-92f4-4778-b920-52a139bb45bb', NULL, 0, 0, NULL, 1, 0, N'emp@jedi.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'a4686b64-7b2f-4eaf-bb23-f1944d11fe2f', N'arty@jedi.com', 0, N'ANIaUatr59NZOgHJ2jpw3V7F9TxCwzVSY1qC1y928xufJg0J2QCZa4w/vEcesVoFVQ==', N'3616f7ad-f660-4234-84fa-a41ff8382200', NULL, 0, 0, NULL, 1, 0, N'arty@jedi.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'cbbb74ba-1a68-42e6-8f21-9d466dfd546e', N'lukecloudrunner@jedi.com', 0, N'AJ5b8kyhbIKeKMET2muINZrPuzhIDLArmSogyFBmFwHFeH5ew1CqCcGZxDKfi1Jnag==', N'bce9c20d-ef81-4898-b4cb-8a7ad8cd8421', NULL, 0, 0, NULL, 1, 0, N'lukecloudrunner@jedi.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'ec07854a-a05a-4700-bf75-3cf40c179f03', N'handtrio@jedi.com', 0, N'ALqD3XansjrfHmPsSt8+PcXUxmABj2YJcvF6tJpOzPba2+rUl761uBRbFK0VbZTI0A==', N'4af27a64-270c-4eb5-8e44-f3bc0488486c', NULL, 0, 0, NULL, 1, 0, N'handtrio@jedi.com')
SET IDENTITY_INSERT [dbo].[CourseCompletions] ON 

INSERT [dbo].[CourseCompletions] ([CourseCompletionID], [UserID], [CourseID], [DateCompleted]) VALUES (1, N'02359c40-6c9e-44cd-8e72-db7b0af2edeb', 6, CAST(0x0000AA7900A99D86 AS DateTime))
INSERT [dbo].[CourseCompletions] ([CourseCompletionID], [UserID], [CourseID], [DateCompleted]) VALUES (2, N'0242c940-d95f-4121-9855-77bc4e8c1733', 1, CAST(0x0000AA7900AA9228 AS DateTime))
INSERT [dbo].[CourseCompletions] ([CourseCompletionID], [UserID], [CourseID], [DateCompleted]) VALUES (3, N'47bc946c-62bf-4269-beb2-954aa26c1bed', 3, CAST(0x0000AA7900B4C9DE AS DateTime))
INSERT [dbo].[CourseCompletions] ([CourseCompletionID], [UserID], [CourseID], [DateCompleted]) VALUES (4, N'47bc946c-62bf-4269-beb2-954aa26c1bed', 5, CAST(0x0000AA7900B56374 AS DateTime))
INSERT [dbo].[CourseCompletions] ([CourseCompletionID], [UserID], [CourseID], [DateCompleted]) VALUES (5, N'0242c940-d95f-4121-9855-77bc4e8c1733', 4, CAST(0x0000AA7900D9AAC0 AS DateTime))
INSERT [dbo].[CourseCompletions] ([CourseCompletionID], [UserID], [CourseID], [DateCompleted]) VALUES (6, N'0242c940-d95f-4121-9855-77bc4e8c1733', 2, CAST(0x0000AA7900DA79D9 AS DateTime))
INSERT [dbo].[CourseCompletions] ([CourseCompletionID], [UserID], [CourseID], [DateCompleted]) VALUES (7, N'0242c940-d95f-4121-9855-77bc4e8c1733', 5, CAST(0x0000AA7900DC0762 AS DateTime))
INSERT [dbo].[CourseCompletions] ([CourseCompletionID], [UserID], [CourseID], [DateCompleted]) VALUES (8, N'0242c940-d95f-4121-9855-77bc4e8c1733', 6, CAST(0x0000AA7900DCE4FD AS DateTime))
INSERT [dbo].[CourseCompletions] ([CourseCompletionID], [UserID], [CourseID], [DateCompleted]) VALUES (10, N'02359c40-6c9e-44cd-8e72-db7b0af2edeb', 4, CAST(0x0000AA7900E43D61 AS DateTime))
INSERT [dbo].[CourseCompletions] ([CourseCompletionID], [UserID], [CourseID], [DateCompleted]) VALUES (11, N'cbbb74ba-1a68-42e6-8f21-9d466dfd546e', 4, CAST(0x0000AA7900E5B252 AS DateTime))
INSERT [dbo].[CourseCompletions] ([CourseCompletionID], [UserID], [CourseID], [DateCompleted]) VALUES (12, N'cbbb74ba-1a68-42e6-8f21-9d466dfd546e', 3, CAST(0x0000AA7900E691CF AS DateTime))
INSERT [dbo].[CourseCompletions] ([CourseCompletionID], [UserID], [CourseID], [DateCompleted]) VALUES (13, N'cbbb74ba-1a68-42e6-8f21-9d466dfd546e', 2, CAST(0x0000AA7900E7EA59 AS DateTime))
INSERT [dbo].[CourseCompletions] ([CourseCompletionID], [UserID], [CourseID], [DateCompleted]) VALUES (14, N'99a49ef4-0758-4a1a-8d06-819e147eb370', 2, CAST(0x0000AA7900EBEBB6 AS DateTime))
INSERT [dbo].[CourseCompletions] ([CourseCompletionID], [UserID], [CourseID], [DateCompleted]) VALUES (15, N'99a49ef4-0758-4a1a-8d06-819e147eb370', 4, CAST(0x0000AA7900EC40B4 AS DateTime))
INSERT [dbo].[CourseCompletions] ([CourseCompletionID], [UserID], [CourseID], [DateCompleted]) VALUES (16, N'cbbb74ba-1a68-42e6-8f21-9d466dfd546e', 5, CAST(0x0000AA7900ED0E64 AS DateTime))
INSERT [dbo].[CourseCompletions] ([CourseCompletionID], [UserID], [CourseID], [DateCompleted]) VALUES (17, N'11ca2727-c3dd-4703-b984-a61843a1182d', 1, CAST(0x0000AA7900F646AD AS DateTime))
INSERT [dbo].[CourseCompletions] ([CourseCompletionID], [UserID], [CourseID], [DateCompleted]) VALUES (18, N'8ac4cdd6-8d47-49f9-aedd-d524b62e8108', 6, CAST(0x0000AA7901007764 AS DateTime))
INSERT [dbo].[CourseCompletions] ([CourseCompletionID], [UserID], [CourseID], [DateCompleted]) VALUES (19, N'cbbb74ba-1a68-42e6-8f21-9d466dfd546e', 1, CAST(0x0000AA7901164242 AS DateTime))
INSERT [dbo].[CourseCompletions] ([CourseCompletionID], [UserID], [CourseID], [DateCompleted]) VALUES (20, N'02359c40-6c9e-44cd-8e72-db7b0af2edeb', 1, CAST(0x0000AA7A00F13154 AS DateTime))
INSERT [dbo].[CourseCompletions] ([CourseCompletionID], [UserID], [CourseID], [DateCompleted]) VALUES (21, N'02359c40-6c9e-44cd-8e72-db7b0af2edeb', 1, CAST(0x0000AA7B012E0B4C AS DateTime))
INSERT [dbo].[CourseCompletions] ([CourseCompletionID], [UserID], [CourseID], [DateCompleted]) VALUES (22, N'95ebe84a-1b81-4f43-b7d7-0c59156dcd4f', 6, CAST(0x0000AA7B00000000 AS DateTime))
INSERT [dbo].[CourseCompletions] ([CourseCompletionID], [UserID], [CourseID], [DateCompleted]) VALUES (23, N'671f23da-f3ae-4487-8737-ac1b16117c9f', 2, CAST(0x0000AA7B01742974 AS DateTime))
INSERT [dbo].[CourseCompletions] ([CourseCompletionID], [UserID], [CourseID], [DateCompleted]) VALUES (24, N'02359c40-6c9e-44cd-8e72-db7b0af2edeb', 5, CAST(0x0000AA7B017FED0A AS DateTime))
INSERT [dbo].[CourseCompletions] ([CourseCompletionID], [UserID], [CourseID], [DateCompleted]) VALUES (25, N'02359c40-6c9e-44cd-8e72-db7b0af2edeb', 2, CAST(0x0000AA7C008DF788 AS DateTime))
INSERT [dbo].[CourseCompletions] ([CourseCompletionID], [UserID], [CourseID], [DateCompleted]) VALUES (26, N'11ca2727-c3dd-4703-b984-a61843a1182d', 6, CAST(0x0000AA7D0086737A AS DateTime))
INSERT [dbo].[CourseCompletions] ([CourseCompletionID], [UserID], [CourseID], [DateCompleted]) VALUES (27, N'11ca2727-c3dd-4703-b984-a61843a1182d', 2, CAST(0x0000AA7D00869265 AS DateTime))
INSERT [dbo].[CourseCompletions] ([CourseCompletionID], [UserID], [CourseID], [DateCompleted]) VALUES (28, N'11ca2727-c3dd-4703-b984-a61843a1182d', 3, CAST(0x0000AA7D00C24CAE AS DateTime))
INSERT [dbo].[CourseCompletions] ([CourseCompletionID], [UserID], [CourseID], [DateCompleted]) VALUES (29, N'11ca2727-c3dd-4703-b984-a61843a1182d', 5, CAST(0x0000AA7D00DA16EF AS DateTime))
INSERT [dbo].[CourseCompletions] ([CourseCompletionID], [UserID], [CourseID], [DateCompleted]) VALUES (30, N'11ca2727-c3dd-4703-b984-a61843a1182d', 4, CAST(0x0000AA80009E878B AS DateTime))
INSERT [dbo].[CourseCompletions] ([CourseCompletionID], [UserID], [CourseID], [DateCompleted]) VALUES (31, N'11ca2727-c3dd-4703-b984-a61843a1182d', 1, CAST(0x0000AA80009F9168 AS DateTime))
INSERT [dbo].[CourseCompletions] ([CourseCompletionID], [UserID], [CourseID], [DateCompleted]) VALUES (32, N'0242c940-d95f-4121-9855-77bc4e8c1733', 4, CAST(0x0000AA8000A71919 AS DateTime))
SET IDENTITY_INSERT [dbo].[CourseCompletions] OFF
SET IDENTITY_INSERT [dbo].[Courses] ON 

INSERT [dbo].[Courses] ([CourseID], [CourseName], [Description], [IsActive]) VALUES (1, N'History of the Jedi', N'"Remember, a Jedi fights only as a last resort. If you are forced to draw your lightsaber, you have already forfeited much of your advantage. A Jedi trusts the Force and at first seeks other ways to resolve problems: patience, logic, tolerance, attentive listening, negotiation, persuasion, calming techniques. But there are times when a Jedi must fight."
- Luke Skywalker to his students', 1)
INSERT [dbo].[Courses] ([CourseID], [CourseName], [Description], [IsActive]) VALUES (2, N'Path of the Jedi', N'"You have chosen the lonely path. The Jedi teach denial of self. That is their weakness. No sentient can long abide that."
- Saes Rrogon, Jedi-turned-Sith Lord', 1)
INSERT [dbo].[Courses] ([CourseID], [CourseName], [Description], [IsActive]) VALUES (3, N'Way of Life', N'"Master Ooroo, I have been very busy here with my tasks as a Jedi Knight…I certainly miss the days of my peaceful tutelage."
"Yes, but a Jedi must learn action as well as knowledge…"
- Jedi Knight Odan-Urr and his Master, Ooroo', 1)
INSERT [dbo].[Courses] ([CourseID], [CourseName], [Description], [IsActive]) VALUES (4, N'The Force', N'"My ally is the Force, and a powerful ally it is."
- Yoda', 1)
INSERT [dbo].[Courses] ([CourseID], [CourseName], [Description], [IsActive]) VALUES (5, N'The Lightsaber', N'"One of the ways the Jedi learn to know the Force, is to use the lightsaber as an instrument of meditation. The lightsaber is not only a weapon of defense—it is important for focusing the mind. A Jedi uses his lightsaber to assist his connection to the Force."
- Master Thon to Nomi Sunrider', 1)
INSERT [dbo].[Courses] ([CourseID], [CourseName], [Description], [IsActive]) VALUES (6, N'Three Pillars of the Jedi', N'"Jedi do not fight for peace. That''s only a slogan, and is as misleading as slogans always are. Jedi fight for civilization, because only civilization creates peace. We fight for justice because justice is the fundamental bedrock of civilization: an unjust civilization is built upon sand. It does not long survive a storm."
- Mace Windu', 1)
SET IDENTITY_INSERT [dbo].[Courses] OFF
SET IDENTITY_INSERT [dbo].[Lessons] ON 

INSERT [dbo].[Lessons] ([LessonID], [LessonTitle], [CourseID], [Introduction], [VideoURL], [PdfFileName], [IsActive]) VALUES (2, N'LessonTitle1', 1, NULL, N'https://www.youtube.com/watch?v=_GiFtjODOIk                                                                                                                                                                                                               ', N'default.pdf', 1)
INSERT [dbo].[Lessons] ([LessonID], [LessonTitle], [CourseID], [Introduction], [VideoURL], [PdfFileName], [IsActive]) VALUES (3, N'LessonTitle2', 2, N'Introduction', NULL, N'default.pdf', 1)
INSERT [dbo].[Lessons] ([LessonID], [LessonTitle], [CourseID], [Introduction], [VideoURL], [PdfFileName], [IsActive]) VALUES (4, N'LessonTitle3', 3, N'Introduction', NULL, N'default.pdf', 1)
INSERT [dbo].[Lessons] ([LessonID], [LessonTitle], [CourseID], [Introduction], [VideoURL], [PdfFileName], [IsActive]) VALUES (13, N'Leeson 4', 4, NULL, NULL, N'default.pdf', 1)
INSERT [dbo].[Lessons] ([LessonID], [LessonTitle], [CourseID], [Introduction], [VideoURL], [PdfFileName], [IsActive]) VALUES (15, N'LessonTitle5', 5, N'Originally formed as a philosophical study group situated on the planet Tython, the Jedi became revered as guardians of peace and justice in the galaxy. As mystical wielders of the Force and of their signature lightsabers, their powers inspired all citizens in the galaxy...

', NULL, N'default.pdf', 1)
INSERT [dbo].[Lessons] ([LessonID], [LessonTitle], [CourseID], [Introduction], [VideoURL], [PdfFileName], [IsActive]) VALUES (16, N'LessonTItle6', 6, NULL, NULL, N'default.pdf', 1)
INSERT [dbo].[Lessons] ([LessonID], [LessonTitle], [CourseID], [Introduction], [VideoURL], [PdfFileName], [IsActive]) VALUES (18, N'Test with  youtube link and pdf', 1, N'dfadf', N'www.youtube.com/watch?v=_GiFtjODOIk                                                                                                                                                                                                                       ', N'55b6c022-0053-4519-a626-eee06bed3014.pdf', 1)
INSERT [dbo].[Lessons] ([LessonID], [LessonTitle], [CourseID], [Introduction], [VideoURL], [PdfFileName], [IsActive]) VALUES (19, N'TEST TEST', 1, N'jhg', NULL, N'default.pdf', 0)
SET IDENTITY_INSERT [dbo].[Lessons] OFF
SET IDENTITY_INSERT [dbo].[LessonViews] ON 

INSERT [dbo].[LessonViews] ([LessonViewID], [UserID], [LessonID], [DateViewed]) VALUES (122, N'02359c40-6c9e-44cd-8e72-db7b0af2edeb', 2, CAST(0x0000AA7A00F3A015 AS DateTime))
INSERT [dbo].[LessonViews] ([LessonViewID], [UserID], [LessonID], [DateViewed]) VALUES (123, N'02359c40-6c9e-44cd-8e72-db7b0af2edeb', 18, CAST(0x0000AA7A00FFE8DA AS DateTime))
INSERT [dbo].[LessonViews] ([LessonViewID], [UserID], [LessonID], [DateViewed]) VALUES (124, N'02359c40-6c9e-44cd-8e72-db7b0af2edeb', 19, CAST(0x0000AA7B012E0B4C AS DateTime))
INSERT [dbo].[LessonViews] ([LessonViewID], [UserID], [LessonID], [DateViewed]) VALUES (125, N'671f23da-f3ae-4487-8737-ac1b16117c9f', 2, CAST(0x0000AA7B0171C635 AS DateTime))
INSERT [dbo].[LessonViews] ([LessonViewID], [UserID], [LessonID], [DateViewed]) VALUES (126, N'671f23da-f3ae-4487-8737-ac1b16117c9f', 3, CAST(0x0000AA7B01742974 AS DateTime))
INSERT [dbo].[LessonViews] ([LessonViewID], [UserID], [LessonID], [DateViewed]) VALUES (127, N'671f23da-f3ae-4487-8737-ac1b16117c9f', 18, CAST(0x0000AA7B0176381A AS DateTime))
INSERT [dbo].[LessonViews] ([LessonViewID], [UserID], [LessonID], [DateViewed]) VALUES (128, N'02359c40-6c9e-44cd-8e72-db7b0af2edeb', 15, CAST(0x0000AA7B017FED0A AS DateTime))
INSERT [dbo].[LessonViews] ([LessonViewID], [UserID], [LessonID], [DateViewed]) VALUES (129, N'02359c40-6c9e-44cd-8e72-db7b0af2edeb', 3, CAST(0x0000AA7C008DF788 AS DateTime))
INSERT [dbo].[LessonViews] ([LessonViewID], [UserID], [LessonID], [DateViewed]) VALUES (130, N'11ca2727-c3dd-4703-b984-a61843a1182d', 2, CAST(0x0000AA7C01112D2C AS DateTime))
INSERT [dbo].[LessonViews] ([LessonViewID], [UserID], [LessonID], [DateViewed]) VALUES (131, N'11ca2727-c3dd-4703-b984-a61843a1182d', 16, CAST(0x0000AA7D0086737A AS DateTime))
INSERT [dbo].[LessonViews] ([LessonViewID], [UserID], [LessonID], [DateViewed]) VALUES (132, N'11ca2727-c3dd-4703-b984-a61843a1182d', 3, CAST(0x0000AA7D00869265 AS DateTime))
INSERT [dbo].[LessonViews] ([LessonViewID], [UserID], [LessonID], [DateViewed]) VALUES (133, N'11ca2727-c3dd-4703-b984-a61843a1182d', 4, CAST(0x0000AA7D00C24CAE AS DateTime))
INSERT [dbo].[LessonViews] ([LessonViewID], [UserID], [LessonID], [DateViewed]) VALUES (134, N'11ca2727-c3dd-4703-b984-a61843a1182d', 15, CAST(0x0000AA7D00DA16EF AS DateTime))
INSERT [dbo].[LessonViews] ([LessonViewID], [UserID], [LessonID], [DateViewed]) VALUES (135, N'11ca2727-c3dd-4703-b984-a61843a1182d', 18, CAST(0x0000AA7E015CEC0F AS DateTime))
INSERT [dbo].[LessonViews] ([LessonViewID], [UserID], [LessonID], [DateViewed]) VALUES (136, N'11ca2727-c3dd-4703-b984-a61843a1182d', 13, CAST(0x0000AA80009E878B AS DateTime))
INSERT [dbo].[LessonViews] ([LessonViewID], [UserID], [LessonID], [DateViewed]) VALUES (137, N'11ca2727-c3dd-4703-b984-a61843a1182d', 19, CAST(0x0000AA80009F9168 AS DateTime))
INSERT [dbo].[LessonViews] ([LessonViewID], [UserID], [LessonID], [DateViewed]) VALUES (138, N'0242c940-d95f-4121-9855-77bc4e8c1733', 19, CAST(0x0000AA8000A66B0E AS DateTime))
INSERT [dbo].[LessonViews] ([LessonViewID], [UserID], [LessonID], [DateViewed]) VALUES (139, N'0242c940-d95f-4121-9855-77bc4e8c1733', 13, CAST(0x0000AA8000A71919 AS DateTime))
SET IDENTITY_INSERT [dbo].[LessonViews] OFF
INSERT [dbo].[UserDetails] ([UserID], [FirstName], [LastName]) VALUES (N'02359c40-6c9e-44cd-8e72-db7b0af2edeb', N'employee', N'one')
INSERT [dbo].[UserDetails] ([UserID], [FirstName], [LastName]) VALUES (N'0242c940-d95f-4121-9855-77bc4e8c1733', N'employee2', N'emp')
INSERT [dbo].[UserDetails] ([UserID], [FirstName], [LastName]) VALUES (N'11ca2727-c3dd-4703-b984-a61843a1182d', N'beebee', N'eight')
INSERT [dbo].[UserDetails] ([UserID], [FirstName], [LastName]) VALUES (N'41001c6a-c532-45ef-8000-867bb8590fc4', N'test ', N'dummy')
INSERT [dbo].[UserDetails] ([UserID], [FirstName], [LastName]) VALUES (N'442f7918-f687-4bfe-b616-9196219283ba', N'employee3', N'emp')
INSERT [dbo].[UserDetails] ([UserID], [FirstName], [LastName]) VALUES (N'47bc946c-62bf-4269-beb2-954aa26c1bed', N'Josh', N'Harrison')
INSERT [dbo].[UserDetails] ([UserID], [FirstName], [LastName]) VALUES (N'671f23da-f3ae-4487-8737-ac1b16117c9f', N'Qui-Gon', N'Jin')
INSERT [dbo].[UserDetails] ([UserID], [FirstName], [LastName]) VALUES (N'8ac4cdd6-8d47-49f9-aedd-d524b62e8108', N'Obi-Wan', N'Kenobi')
INSERT [dbo].[UserDetails] ([UserID], [FirstName], [LastName]) VALUES (N'95ebe84a-1b81-4f43-b7d7-0c59156dcd4f', N'Nanakin', N'Skytoker')
INSERT [dbo].[UserDetails] ([UserID], [FirstName], [LastName]) VALUES (N'99a49ef4-0758-4a1a-8d06-819e147eb370', N'new ', N'emp')
INSERT [dbo].[UserDetails] ([UserID], [FirstName], [LastName]) VALUES (N'a4686b64-7b2f-4eaf-bb23-f1944d11fe2f', N'aretwo', N'deetwo')
INSERT [dbo].[UserDetails] ([UserID], [FirstName], [LastName]) VALUES (N'cbbb74ba-1a68-42e6-8f21-9d466dfd546e', N'Lucas', N'Cloudrunner')
INSERT [dbo].[UserDetails] ([UserID], [FirstName], [LastName]) VALUES (N'ec07854a-a05a-4700-bf75-3cf40c179f03', N'hand', N'trio')
SET ANSI_PADDING ON

GO
/****** Object:  Index [RoleNameIndex]    Script Date: 7/4/2019 10:21:57 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AspNetRoles]') AND name = N'RoleNameIndex')
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 7/4/2019 10:21:57 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserClaims]') AND name = N'IX_UserId')
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 7/4/2019 10:21:57 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserLogins]') AND name = N'IX_UserId')
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_RoleId]    Script Date: 7/4/2019 10:21:57 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]') AND name = N'IX_RoleId')
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 7/4/2019 10:21:57 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]') AND name = N'IX_UserId')
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UserNameIndex]    Script Date: 7/4/2019 10:21:57 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUsers]') AND name = N'UserNameIndex')
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserClaims]'))
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserClaims]'))
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserLogins]'))
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserLogins]'))
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]'))
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]'))
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]'))
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]'))
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_CourseCompletions_Courses]') AND parent_object_id = OBJECT_ID(N'[dbo].[CourseCompletions]'))
ALTER TABLE [dbo].[CourseCompletions]  WITH CHECK ADD  CONSTRAINT [FK_CourseCompletions_Courses] FOREIGN KEY([CourseID])
REFERENCES [dbo].[Courses] ([CourseID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_CourseCompletions_Courses]') AND parent_object_id = OBJECT_ID(N'[dbo].[CourseCompletions]'))
ALTER TABLE [dbo].[CourseCompletions] CHECK CONSTRAINT [FK_CourseCompletions_Courses]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_CourseCompletions_UserDetails]') AND parent_object_id = OBJECT_ID(N'[dbo].[CourseCompletions]'))
ALTER TABLE [dbo].[CourseCompletions]  WITH CHECK ADD  CONSTRAINT [FK_CourseCompletions_UserDetails] FOREIGN KEY([UserID])
REFERENCES [dbo].[UserDetails] ([UserID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_CourseCompletions_UserDetails]') AND parent_object_id = OBJECT_ID(N'[dbo].[CourseCompletions]'))
ALTER TABLE [dbo].[CourseCompletions] CHECK CONSTRAINT [FK_CourseCompletions_UserDetails]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Lessons_Courses]') AND parent_object_id = OBJECT_ID(N'[dbo].[Lessons]'))
ALTER TABLE [dbo].[Lessons]  WITH CHECK ADD  CONSTRAINT [FK_Lessons_Courses] FOREIGN KEY([CourseID])
REFERENCES [dbo].[Courses] ([CourseID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Lessons_Courses]') AND parent_object_id = OBJECT_ID(N'[dbo].[Lessons]'))
ALTER TABLE [dbo].[Lessons] CHECK CONSTRAINT [FK_Lessons_Courses]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_LessonViews_Lessons]') AND parent_object_id = OBJECT_ID(N'[dbo].[LessonViews]'))
ALTER TABLE [dbo].[LessonViews]  WITH CHECK ADD  CONSTRAINT [FK_LessonViews_Lessons] FOREIGN KEY([LessonID])
REFERENCES [dbo].[Lessons] ([LessonID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_LessonViews_Lessons]') AND parent_object_id = OBJECT_ID(N'[dbo].[LessonViews]'))
ALTER TABLE [dbo].[LessonViews] CHECK CONSTRAINT [FK_LessonViews_Lessons]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_LessonViews_UserDetails]') AND parent_object_id = OBJECT_ID(N'[dbo].[LessonViews]'))
ALTER TABLE [dbo].[LessonViews]  WITH CHECK ADD  CONSTRAINT [FK_LessonViews_UserDetails] FOREIGN KEY([UserID])
REFERENCES [dbo].[UserDetails] ([UserID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_LessonViews_UserDetails]') AND parent_object_id = OBJECT_ID(N'[dbo].[LessonViews]'))
ALTER TABLE [dbo].[LessonViews] CHECK CONSTRAINT [FK_LessonViews_UserDetails]
GO
ALTER DATABASE [LMS] SET  READ_WRITE 
GO
