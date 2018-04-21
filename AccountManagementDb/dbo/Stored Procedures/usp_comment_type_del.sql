


/*****************************************************************
**	Table Name: comment_type
**	Procedure Name: usp_comment_type_del
**	Author: Richard Richards
**	Created: 04/21/2018
**	Copyright: QIQO Software, (c) 2015-2018
******************************************************************/

CREATE PROC [dbo].[usp_comment_type_del]
	@comment_type_key int,
	@key int out
AS
SET NOCOUNT ON

BEGIN TRY
	DELETE FROM comment_type
	WHERE [comment_type_key] = @comment_type_key;
	SELECT @key = @@ROWCOUNT;
END TRY
BEGIN CATCH
		EXEC usp_LogError 'comment_type', 'usp_comment_type_del';
	THROW;
END CATCH

SET NOCOUNT OFF




