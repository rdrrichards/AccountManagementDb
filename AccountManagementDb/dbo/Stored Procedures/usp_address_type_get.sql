﻿
/*****************************************************************
**	Table Name: address_type
**	Procedure Name: usp_address_type_get
**	Author: Richard Richards
**	Created: 04/21/2018
**	Copyright: QIQO Software, (c) 2015-2018
******************************************************************/

CREATE PROC [dbo].[usp_address_type_get]
	@address_type_key int
AS
SET NOCOUNT ON

SELECT [address_type_key], 
	[address_type_code], 
	[address_type_name], 
	[address_type_desc], 
	[audit_add_user_id], 
	[audit_add_datetime], 
	[audit_update_user_id], 
	[audit_update_datetime]
FROM address_type
WHERE [address_type_key] = @address_type_key


SET NOCOUNT OFF



