USE [Shree_Database]
GO
/****** Object:  StoredProcedure [dbo].[ssp_UpdateRole]    Script Date: 10/5/2020 1:48:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[ssp_UpdateRole]

    -- Add the parameters for the stored procedure here

    @RoleName nvarchar(MAX),
	@ModifiedDate Datetime,
	@Status bit

AS

BEGIN

    SET NOCOUNT ON; 

    DELETE 
	FROM tbl_UserRole
	WHERE RoleName = @RoleName
END


