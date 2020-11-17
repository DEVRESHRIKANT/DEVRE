USE [Shree_Database]
GO
/****** Object:  StoredProcedure [dbo].[ssp_DeleteRole]    Script Date: 10/5/2020 2:01:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[ssp_DeleteRole]

    -- Add the parameters for the stored procedure here

    @RoleName nvarchar(MAX)

AS

BEGIN

    SET NOCOUNT ON; 

    DELETE 
	FROM tbl_UserRole
	WHERE RoleName = @RoleName
END

