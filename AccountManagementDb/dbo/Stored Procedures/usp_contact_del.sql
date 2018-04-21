


/*****************************************************************
**	Table Name: contact
**	Procedure Name: usp_contact_del
**	Author: Richard Richards
**	Created: 04/21/2018
**	Copyright: QIQO Software, (c) 2015-2018
******************************************************************/

CREATE PROC [dbo].[usp_contact_del]
	@contact_key int,
	@key int out
AS
SET NOCOUNT ON

BEGIN TRY
	DELETE FROM contact
	WHERE [contact_key] = @contact_key;
	SELECT @key = @@ROWCOUNT;
END TRY
BEGIN CATCH
		EXEC usp_LogError 'contact', 'usp_contact_del';
	THROW;
END CATCH

SET NOCOUNT OFF




