﻿
/*****************************************************************
**	Table Name: company
**	Procedure Name: usp_company_get
**	Author: Richard Richards
**	Created: 04/21/2018
**	Copyright: QIQO Software, (c) 2015-2018
******************************************************************/

CREATE PROC [dbo].[usp_company_get]
	@company_key int
AS
SET NOCOUNT ON

SELECT [company_key], 
	[company_code], 
	[company_name], 
	[company_desc], 
	[audit_add_user_id], 
	[audit_add_datetime], 
	[audit_update_user_id], 
	[audit_update_datetime]
FROM company
WHERE [company_key] = @company_key


SET NOCOUNT OFF



