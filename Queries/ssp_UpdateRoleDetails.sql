USE [Shree_Database]
GO
/****** Object:  StoredProcedure [dbo].[ssp_UpdateRoleDetails]    Script Date: 10/5/2020 1:48:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[ssp_UpdateRoleDetails]  
(  
   @RoleId int,  
   @RoleName varchar (35),  
   @Status bit,  
   @ModifiedDate DateTime  
)  
as  
begin  
   Update tbl_UserRole   
   set RoleName=@RoleName,  
   Status= 1,   
   ModifiedDate =  SYSDATETIME()    
   where RoleId=@RoleId  
End