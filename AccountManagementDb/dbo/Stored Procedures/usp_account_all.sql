﻿
/*****************************************************************
**	Table Name: account
**	Procedure Name: usp_account_all
**	Author: Richard Richards
**	Created: 04/21/2018
**	Copyright: QIQO Software, (c) 2015-2018
******************************************************************/

CREATE PROC [dbo].[usp_account_all]
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


SET NOCOUNT OFF



