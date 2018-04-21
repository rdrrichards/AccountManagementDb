


/*****************************************************************
**	Table Name: person
**	Procedure Name: usp_person_del
**	Author: Richard Richards
**	Created: 04/21/2018
**	Copyright: QIQO Software, (c) 2015-2018
******************************************************************/

CREATE PROC [dbo].[usp_person_del]
	@person_key int,
	@key int out
AS
SET NOCOUNT ON

BEGIN TRY
	--DELETE FROM person
	--WHERE [person_key] = @person_key
	SELECT @key = @@ROWCOUNT;
END TRY
BEGIN CATCH
		EXEC usp_LogError 'person', 'usp_person_del';
	THROW;
END CATCH

SET NOCOUNT OFF




