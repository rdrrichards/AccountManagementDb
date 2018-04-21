﻿


/*****************************************************************
**	Table Name: company
**	Procedure Name: usp_company_del
**	Author: Richard Richards
**	Created: 04/21/2018
**	Copyright: QIQO Software, (c) 2015-2018
******************************************************************/

CREATE PROC [dbo].[usp_company_del]
	@company_key int,
	@key int out
AS
SET NOCOUNT ON

BEGIN TRY
	--DELETE FROM company
	--WHERE [company_key] = @company_key;
	--SELECT @key = @@ROWCOUNT;
	SELECT @key = 1;
END TRY
BEGIN CATCH
		EXEC usp_LogError 'company', 'usp_company_del';
	THROW;
END CATCH

SET NOCOUNT OFF





