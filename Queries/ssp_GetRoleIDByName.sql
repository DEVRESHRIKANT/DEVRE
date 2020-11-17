USE [Shree_Database]
GO
/****** Object:  StoredProcedure [dbo].[ssp_GetRoleIDByName]    Script Date: 10/5/2020 1:54:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[ssp_GetRoleIDByName]
@pRoleName varchar(50) -- Input Parameter
--@pRoleId int OUTPUT  -- Output Parameter  
 

AS

BEGIN
SET NOCOUNT ON

SELECT RoleId = UserRole.RoleId
FROM  tbl_UserRole AS UserRole
WHERE UserRole.RoleName = @pRoleName
END
