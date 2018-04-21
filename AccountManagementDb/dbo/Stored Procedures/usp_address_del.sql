


/*****************************************************************
**	Table Name: address
**	Procedure Name: usp_address_del
**	Author: Richard Richards
**	Created: 04/21/2018
**	Copyright: QIQO Software, (c) 2015-2018
******************************************************************/

CREATE PROC [dbo].[usp_address_del]
	@address_key int,
	@key int out
AS
SET NOCOUNT ON

BEGIN TRY
	UPDATE [address] SET address_active_flg = 0
	WHERE [address_key] = @address_key;
	SELECT @key = @address_key;
END TRY
BEGIN CATCH
		EXEC usp_LogError 'address', 'usp_address_del';
	THROW;
END CATCH

SET NOCOUNT OFF




