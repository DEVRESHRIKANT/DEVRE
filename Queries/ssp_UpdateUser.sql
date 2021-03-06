USE [Shree_Database]
GO
/****** Object:  StoredProcedure [dbo].[ssp_UpdateUser]    Script Date: 10/5/2020 1:45:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[ssp_UpdateUser]

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


