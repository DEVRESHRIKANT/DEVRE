USE [Shree_Database]
GO
/****** Object:  StoredProcedure [dbo].[ssp_GetUserRoles]    Script Date: 10/5/2020 1:51:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER Procedure [dbo].[ssp_GetUserRoles]  
as  
begin  
   select *from tbl_UserRole
End 