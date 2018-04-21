
/*****************************************************************
**	Table Name: comment_type
**	Procedure Name: usp_comment_type_get
**	Author: Richard Richards
**	Created: 04/21/2018
**	Copyright: QIQO Software, (c) 2015-2018
******************************************************************/

CREATE PROC [dbo].[usp_comment_type_get]
	@comment_type_key int
AS
SET NOCOUNT ON

SELECT [comment_type_key], 
	[comment_type_category], 
	[comment_type_code], 
	[comment_type_name], 
	[comment_type_desc], 
	[audit_add_user_id], 
	[audit_add_datetime], 
	[audit_update_user_id], 
	[audit_update_datetime]
FROM comment_type
WHERE [comment_type_key] = @comment_type_key


SET NOCOUNT OFF



