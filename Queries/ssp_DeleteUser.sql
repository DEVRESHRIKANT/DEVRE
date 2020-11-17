USE [Shree_Database]
GO
/****** Object:  StoredProcedure [dbo].[ssp_DeleteUser]    Script Date: 10/5/2020 1:56:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[ssp_DeleteUser]

    -- Add the parameters for the stored procedure here

    @UserName nvarchar(MAX)

AS

BEGIN

    SET NOCOUNT ON; 

    DELETE 
	FROM tbl_Users
	WHERE UserName = @UserName
END

