USE [master]
GO
/****** Object:  Database [Shree_Database]    Script Date: 2020-07-21 7:27:17 PM ******/
CREATE DATABASE [Shree_Database]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Shree_Database', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLSERVER14\MSSQL\DATA\Shree_Database.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Shree_Database_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLSERVER14\MSSQL\DATA\Shree_Database_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Shree_Database] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Shree_Database].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Shree_Database] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Shree_Database] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Shree_Database] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Shree_Database] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Shree_Database] SET ARITHABORT OFF 
GO
ALTER DATABASE [Shree_Database] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Shree_Database] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Shree_Database] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Shree_Database] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Shree_Database] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Shree_Database] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Shree_Database] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Shree_Database] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Shree_Database] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Shree_Database] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Shree_Database] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Shree_Database] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Shree_Database] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Shree_Database] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Shree_Database] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Shree_Database] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Shree_Database] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Shree_Database] SET RECOVERY FULL 
GO
ALTER DATABASE [Shree_Database] SET  MULTI_USER 
GO
ALTER DATABASE [Shree_Database] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Shree_Database] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Shree_Database] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Shree_Database] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Shree_Database] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Shree_Database', N'ON'
GO
USE [Shree_Database]
GO
/****** Object:  Table [dbo].[tbl_Clients]    Script Date: 2020-07-21 7:27:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Clients](
	[ClientId] [int] NOT NULL,
	[ClientName] [varchar](35) NOT NULL,
	[Address1] [varchar](40) NULL,
	[Address2] [varchar](40) NULL,
	[City] [varchar](30) NULL,
	[SubLocation] [varchar](30) NULL,
	[PhoneCountryCd] [varchar](4) NULL,
	[PhoneCityCd] [varchar](4) NULL,
	[PhoneNumber] [varchar](20) NULL,
	[Status] [bit] NULL,
	[RoleId] [bigint] NULL,
	[Profile] [varchar](50) NULL,
	[ProjectId] [bigint] NULL,
	[ConsultantId] [bigint] NULL,
	[Domain] [varchar](50) NULL,
	[EmailAddress] [varchar](80) NULL,
	[WebsiteURL] [varchar](50) NULL,
	[IDIssueDate] [datetime] NULL,
	[RegisterDate] [datetime] NULL,
	[LeavingDate] [datetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_Consultants]    Script Date: 2020-07-21 7:27:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Consultants](
	[ConsultantId] [bigint] IDENTITY(1,1) NOT NULL,
	[ConsultantName] [varchar](35) NOT NULL,
	[Address1] [varchar](40) NULL,
	[Address2] [varchar](40) NULL,
	[City] [varchar](30) NULL,
	[PhoneNumber] [varchar](20) NULL,
	[EmailAddress] [varchar](80) NULL,
	[WebsiteURL] [varchar](50) NULL,
	[RegisterDate] [datetime] NULL,
	[ModifiedDate] [datetime] NULL,
	[FirstName] [varchar](50) NULL,
	[LastName] [varchar](50) NULL,
	[Status] [bit] NULL,
	[RoleId] [bigint] NULL,
	[Profile] [varchar](50) NULL,
	[ProjectId] [bigint] NULL,
	[Domain] [varchar](50) NULL,
	[Location] [varchar](50) NULL,
	[Technology] [varchar](50) NULL,
	[Photo] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ConsultantId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_Files]    Script Date: 2020-07-21 7:27:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Files](
	[File_Id] [int] IDENTITY(1,1) NOT NULL,
	[FileName] [varchar](50) NULL,
	[ContentType] [varchar](50) NULL,
	[FileData] [varbinary](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_Projects]    Script Date: 2020-07-21 7:27:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Projects](
	[ProjectId] [bigint] IDENTITY(1,1) NOT NULL,
	[ClientId] [bigint] NULL,
	[ConsultantId] [bigint] NULL,
	[UserId] [bigint] NULL,
	[Project_Start_Dt] [datetime] NULL,
	[Project_End_Dt] [datetime] NULL,
	[ProjectName] [varchar](50) NOT NULL,
	[Duration] [varchar](50) NULL,
	[Domain] [varchar](50) NULL,
	[Technology] [varchar](50) NULL,
	[Status] [bit] NULL,
	[Details] [varchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ProjectId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_ProjectUser]    Script Date: 2020-07-21 7:27:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_ProjectUser](
	[UserId] [bigint] NOT NULL,
	[ProjectId] [bigint] NOT NULL,
	[Status] [bit] NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ProjectUserId] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ProjectUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_UserRole]    Script Date: 2020-07-21 7:27:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_UserRole](
	[RoleId] [bigint] IDENTITY(1,1) NOT NULL,
	[RoleName] [varchar](35) NOT NULL,
	[Status] [bit] NOT NULL,
	[ModifiedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_Users]    Script Date: 2020-07-21 7:27:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Users](
	[UserId] [bigint] IDENTITY(1,1) NOT NULL,
	[ProjectId] [bigint] NULL,
	[UserPassword] [varchar](50) NULL,
	[UserName] [varchar](35) NOT NULL,
	[Location] [varchar](30) NULL,
	[PhoneNumber] [varchar](20) NULL,
	[EmailAddress] [varchar](80) NULL,
	[WebsiteURL] [varchar](50) NULL,
	[RegisterDate] [datetime] NULL,
	[ModifiedDate] [datetime] NULL,
	[ProfileName] [varchar](30) NULL,
	[ImageName] [varchar](30) NULL,
	[RoleId] [bigint] NULL,
	[RoleName] [varchar](20) NULL,
	[Domain] [varchar](50) NULL,
	[Technology] [varchar](50) NULL,
	[FirstName] [varchar](50) NULL,
	[LastName] [varchar](50) NULL,
	[LoginId] [varchar](50) NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_tbl_Users] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[tbl_Projects]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Projects_tbl_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[tbl_Users] ([UserId])
GO
ALTER TABLE [dbo].[tbl_Projects] CHECK CONSTRAINT [FK_tbl_Projects_tbl_Users]
GO
ALTER TABLE [dbo].[tbl_ProjectUser]  WITH CHECK ADD  CONSTRAINT [FK_tbl_ProjectUser_tbl_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[tbl_Users] ([UserId])
GO
ALTER TABLE [dbo].[tbl_ProjectUser] CHECK CONSTRAINT [FK_tbl_ProjectUser_tbl_Users]
GO
ALTER TABLE [dbo].[tbl_Users]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Users_tbl_Projects] FOREIGN KEY([ProjectId])
REFERENCES [dbo].[tbl_Projects] ([ProjectId])
GO
ALTER TABLE [dbo].[tbl_Users] CHECK CONSTRAINT [FK_tbl_Users_tbl_Projects]
GO
ALTER TABLE [dbo].[tbl_Users]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Users_tbl_UserRole] FOREIGN KEY([RoleId])
REFERENCES [dbo].[tbl_UserRole] ([RoleId])
GO
ALTER TABLE [dbo].[tbl_Users] CHECK CONSTRAINT [FK_tbl_Users_tbl_UserRole]
GO
/****** Object:  StoredProcedure [dbo].[ssp_DeleteRole]    Script Date: 2020-07-21 7:27:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ssp_DeleteRole]

    -- Add the parameters for the stored procedure here

    @RoleName nvarchar(MAX)

AS

BEGIN

    SET NOCOUNT ON; 

    DELETE 
	FROM tbl_UserRole
	WHERE RoleName = @RoleName
END

GO
/****** Object:  StoredProcedure [dbo].[ssp_DeleteUser]    Script Date: 2020-07-21 7:27:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ssp_DeleteUser]

    -- Add the parameters for the stored procedure here

    @UserName nvarchar(MAX)

AS

BEGIN

    SET NOCOUNT ON; 

    DELETE 
	FROM tbl_Users
	WHERE UserName = @UserName
END

GO
/****** Object:  StoredProcedure [dbo].[ssp_DetailRole]    Script Date: 2020-07-21 7:27:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ssp_DetailRole]

    -- Add the parameters for the stored procedure here

    @RoleName nvarchar(MAX)

AS

BEGIN

    SET NOCOUNT ON; 

    SELECT * 
	FROM tbl_UserRole
	WHERE RoleName = @RoleName
END

GO
/****** Object:  StoredProcedure [dbo].[ssp_GetRoleNameById]    Script Date: 2020-07-21 7:27:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ssp_GetRoleNameById]
@pRoleName varchar(50), -- Input Parameter
@pRoleId int OUTPUT  -- Output Parameter  
 

AS

BEGIN
SET NOCOUNT ON

SELECT @pRoleId = UserRole.RoleId
FROM  tbl_UserRole AS UserRole
WHERE UserRole.RoleName = @pRoleName
END
GO
/****** Object:  StoredProcedure [dbo].[ssp_InsertRole]    Script Date: 2020-07-21 7:27:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ssp_InsertRole]
		   (@rolename varchar(50)
           )
AS
BEGIN
INSERT INTO [dbo].[tbl_UserRole]
           ([RoleName] 
           )
     VALUES
           (@rolename           
           )
END

GO
/****** Object:  StoredProcedure [dbo].[ssp_InsertUser]    Script Date: 2020-07-21 7:27:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[ssp_InsertUser]
(
@ProjectId bigint,
@UserPassword varchar(50),
@UserName varchar(35),
@Location varchar(30),
@PhoneNumber varchar(20),
@EmailAddress varchar(80),
@WebsiteURL varchar(50),
@RegisterDate datetime,
@ModifiedDate datetime,
@ProfileName varchar(30),
@ImageName varchar(30),
@RoleId bigint,
@RoleName varchar(20),
@Domain varchar(50),
@Technology varchar(50),
@FirstName varchar(50),
@LastName varchar(50),
@LoginId varchar(50),
@Status bit
)
AS
BEGIN
INSERT INTO [dbo].[tbl_Users]
           ([ProjectId]
           ,[UserPassword]
           ,[UserName]
           ,[Location]
           ,[PhoneNumber]
           ,[EmailAddress]
           ,[WebsiteURL]
           ,[RegisterDate]
           ,[ModifiedDate]
           ,[ProfileName]
           ,[ImageName]
           ,[RoleId]
           ,[RoleName]
           ,[Domain]
           ,[Technology]
           ,[FirstName]
           ,[LastName]
           ,[LoginId]
           ,[Status])
     VALUES
           (@ProjectId, 
           @UserPassword, 
           @UserName, 
           @Location, 
           @PhoneNumber, 
           @EmailAddress, 
           @WebsiteURL, 
           @RegisterDate, 
           @ModifiedDate, 
           @ProfileName, 
           @ImageName, 
           @RoleId, 
           @RoleName, 
           @Domain, 
           @Technology, 
           @FirstName, 
           @LastName, 
           @LoginId, 
           @Status)
END


GO
/****** Object:  StoredProcedure [dbo].[ssp_ListRoles]    Script Date: 2020-07-21 7:27:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ssp_ListRoles]

    -- Add the parameters for the stored procedure here

    @RoleName nvarchar(MAX)

AS

BEGIN

    SET NOCOUNT ON; 

    SELECT * 
	FROM tbl_UserRole
	WHERE Status = 1
END


GO
/****** Object:  StoredProcedure [dbo].[ssp_UpdateRole]    Script Date: 2020-07-21 7:27:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ssp_UpdateRole]

    -- Add the parameters for the stored procedure here

    @RoleName nvarchar(MAX)

AS

BEGIN

    SET NOCOUNT ON; 

    DELETE 
	FROM tbl_UserRole
	WHERE RoleName = @RoleName
END


GO
/****** Object:  StoredProcedure [dbo].[ssp_UpdateUser]    Script Date: 2020-07-21 7:27:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ssp_UpdateUser]

    -- Add the parameters for the stored procedure here
(
@FirstName varchar(50),
@LastName varchar(50),
@EmailAddress varchar(50)
)

AS
BEGIN

SET NOCOUNT ON

UPDATE tbl_Users

SET [LastName] = @LastName,
	[FirstName] = @FirstName
WHERE EmailAddress = @EmailAddress

END


GO
USE [master]
GO
ALTER DATABASE [Shree_Database] SET  READ_WRITE 
GO
