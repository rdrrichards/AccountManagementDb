﻿
/*****************************************************************
**	Table Name: product_type
**	Procedure Name: usp_product_type_all
**	Author: Richard Richards
**	Created: 04/21/2018
**	Copyright: QIQO Software, (c) 2015-2018
******************************************************************/

CREATE PROC [dbo].[usp_product_type_all]
AS
SET NOCOUNT ON

SELECT [product_type_key], 
	[product_type_category], 
	[product_type_code], 
	[product_type_name], 
	[product_type_desc], 
	[audit_add_user_id], 
	[audit_add_datetime], 
	[audit_update_user_id], 
	[audit_update_datetime]
FROM product_type


SET NOCOUNT OFF



