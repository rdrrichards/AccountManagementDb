


/*****************************************************************
**	Table Name: contact_type
**	Procedure Name: usp_contact_type_del
**	Author: Richard Richards
**	Created: 04/21/2018
**	Copyright: QIQO Software, (c) 2015-2018
******************************************************************/

CREATE PROC [dbo].[usp_contact_type_del]
	@contact_type_key int,
	@key int out
AS
SET NOCOUNT ON

BEGIN TRY
	DELETE FROM contact_type
	WHERE [contact_type_key] = @contact_type_key;
	SELECT @key = @@ROWCOUNT;
END TRY
BEGIN CATCH
		EXEC usp_LogError 'contact_type', 'usp_contact_type_del';
	THROW;
END CATCH

SET NOCOUNT OFF




