USE [Shree_Database]
GO
/****** Object:  StoredProcedure [dbo].[ssp_AddNewRoleDetails]    Script Date: 10/5/2020 2:02:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[ssp_AddNewRoleDetails]  
(  
   @RoleName varchar (50),  
   @Status bit,
   @ModifiedDate DateTime       
)  
as  
begin  
   Insert into tbl_UserRole values(@RoleName,@Status,@ModifiedDate)  
End 