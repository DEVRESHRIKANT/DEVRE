USE [Shree_Database]
GO
/****** Object:  StoredProcedure [dbo].[ssp_InsertUser]    Script Date: 10/5/2020 1:50:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


ALTER PROCEDURE [dbo].[ssp_InsertUser]
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


