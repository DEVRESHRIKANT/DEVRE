USE [Shree_Database]
GO
/****** Object:  StoredProcedure [dbo].[ssp_DetailRole]    Script Date: 10/5/2020 1:55:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[ssp_DetailRole]

    -- Add the parameters for the stored procedure here

    @RoleName nvarchar(MAX)

AS

BEGIN

    SET NOCOUNT ON; 

    SELECT * 
	FROM tbl_UserRole
	WHERE RoleName = @RoleName
END

