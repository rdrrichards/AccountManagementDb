



/*****************************************************************
**	Table Name: product
**	Procedure Name: usp_product_del
**	Author: Richard Richards
**	Created: 04/21/2018
**	Copyright: QIQO Software, (c) 2015-2018
******************************************************************/

CREATE PROC [dbo].[usp_product_del]
	@product_key int,
	@key int out
AS
SET NOCOUNT ON

BEGIN TRY
	DELETE FROM entity_entity
	WHERE secondary_entity_key = @product_key
	AND secondary_entity_type_key = 4;

	DELETE FROM product
	WHERE [product_key] = @product_key;
	SELECT @key = @@ROWCOUNT;
END TRY
BEGIN CATCH
		EXEC usp_LogError 'product', 'usp_product_del';
	THROW;
END CATCH

SET NOCOUNT OFF




