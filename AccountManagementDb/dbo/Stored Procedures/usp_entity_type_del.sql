


/*****************************************************************
**	Table Name: entity_type
**	Procedure Name: usp_entity_type_del
**	Author: Richard Richards
**	Created: 04/21/2018
**	Copyright: QIQO Software, (c) 2015-2018
******************************************************************/

CREATE PROC [dbo].[usp_entity_type_del]
	@entity_type_key int,
	@key int out
AS
SET NOCOUNT ON

BEGIN TRY
	DELETE FROM entity_type
	WHERE [entity_type_key] = @entity_type_key;
	SELECT @key = @@ROWCOUNT;
END TRY
BEGIN CATCH
		EXEC usp_LogError 'entity_type', 'usp_entity_type_del';
	THROW;
END CATCH

SET NOCOUNT OFF




