﻿
/*****************************************************************
**	Table Name: account
**	Procedure Name: usp_account_find 1, 'sport'
**	Author: Richard Richards
**	Created: 04/21/2018
**	Copyright: QIQO Software, (c) 2015-2018
******************************************************************/

CREATE PROC [dbo].[usp_account_find]
	@company_key int,
	@account_pattern varchar(50)
AS
SET NOCOUNT ON

SELECT [account_key], 
	[company_key], 
	[account_type_key], 
	[account_code], 
	[account_name], 
	[account_desc], 
	[account_dba], 
	[account_start_date], 
	[account_end_date], 
	[audit_add_user_id], 
	[audit_add_datetime], 
	[audit_update_user_id], 
	[audit_update_datetime]
FROM account
WHERE [company_key] = @company_key
AND ([account_code] LIKE '%' + @account_pattern + '%'
	OR [account_name] LIKE '%' + @account_pattern + '%'
	OR [account_desc] LIKE '%' + @account_pattern + '%'
	OR [account_dba] LIKE '%' + @account_pattern + '%')

SET NOCOUNT OFF


