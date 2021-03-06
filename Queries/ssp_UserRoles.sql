USE [Shree_Database]
GO
/****** Object:  StoredProcedure [dbo].[ssp_UserRoles]    Script Date: 10/5/2020 1:38:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[ssp_UserRoles](
@StmtType nvarchar(50),
@roleId bigint,
@rolename varchar(50),
@modifieddate datetime,
@status bit
)

as begin

If @StmtType='Insert'
Begin
Insert into tbl_UserRole (RoleName,ModifiedDate,Status) values (@rolename,@modifieddate,@status)
Select SCOPE_IDENTITY() as 'ID'
End

If @StmtType='Update'
Begin
Update tbl_UserRole set RoleName=@rolename,ModifiedDate=@modifieddate,Status=@status where RoleId=@roleId
select @roleId as 'ID'
End

If @StmtType='Delete'
Begin
Delete from tbl_UserRole where RoleId=@roleId
select @roleId as 'ID'
End

End

