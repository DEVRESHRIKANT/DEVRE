USE [Shree_Database]
GO
/****** Object:  StoredProcedure [dbo].[get_UserRoles]    Script Date: 10/5/2020 2:02:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[get_UserRoles]
(
@RoleId int
)
as begin

If @RoleId>0
Begin
Select * from tbl_UserRole where RoleId=@RoleId
End

else
Begin
Select * from tbl_UserRole order by RoleId desc
End
End

