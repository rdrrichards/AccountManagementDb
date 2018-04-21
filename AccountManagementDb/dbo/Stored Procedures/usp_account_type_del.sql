


/*****************************************************************
**	Table Name: account_type
**	Procedure Name: usp_account_type_del
**	Author: Richard Richards
**	Created: 04/21/2018
**	Copyright: QIQO Software, (c) 2015-2018
******************************************************************/

CREATE PROC [dbo].[usp_account_type_del]
	@account_type_key int,
	@key int out
AS
SET NOCOUNT ON

BEGIN TRY
	DELETE FROM account_type
	WHERE [account_type_key] = @account_type_key;
	SELECT @key = @@ROWCOUNT;
END TRY
BEGIN CATCH
		EXEC usp_LogError 'account_type', 'usp_account_type_del';
	THROW;
END CATCH

SET NOCOUNT OFF




