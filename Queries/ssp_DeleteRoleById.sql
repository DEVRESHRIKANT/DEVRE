USE [Shree_Database]
GO
/****** Object:  StoredProcedure [dbo].[ssp_DeleteRoleById]    Script Date: 10/5/2020 1:58:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[ssp_DeleteRoleById]  
(  
   @RoleId int  
)  
as   
begin  
   Delete from tbl_UserRole where RoleId=@RoleId  
End