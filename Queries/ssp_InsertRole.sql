USE [Shree_Database]
GO
/****** Object:  StoredProcedure [dbo].[ssp_InsertRole]    Script Date: 10/5/2020 1:51:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[ssp_InsertRole]
		   (@RoleName varchar(50)
           )
AS
BEGIN
INSERT INTO [dbo].[tbl_UserRole]
           ([RoleName] 
           )
     VALUES
           (@RoleName           
           )
END

