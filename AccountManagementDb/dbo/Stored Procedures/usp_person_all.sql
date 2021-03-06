﻿
/*****************************************************************
**	Table Name: person
**	Procedure Name: usp_person_all
**	Author: Richard Richards
**	Created: 04/21/2018
**	Copyright: QIQO Software, (c) 2015-2018
******************************************************************/

CREATE PROC [dbo].[usp_person_all]
AS
SET NOCOUNT ON

SELECT [person_key], 
	[person_code], 
	[person_first_name], 
	[person_mi], 
	[person_last_name], 
	[parent_person_key], 
	[person_dob], 
	[audit_add_user_id], 
	[audit_add_datetime], 
	[audit_update_user_id], 
	[audit_update_datetime]
FROM person


SET NOCOUNT OFF



