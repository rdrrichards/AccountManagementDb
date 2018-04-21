
/*****************************************************************
**	Table Name: entity_type
**	Procedure Name: usp_entity_type_all
**	Author: Richard Richards
**	Created: 04/21/2018
**	Copyright: QIQO Software, (c) 2015-2018
******************************************************************/

CREATE PROC [dbo].[usp_entity_type_all]
AS
SET NOCOUNT ON

SELECT [entity_type_key], 
	[entity_type_code], 
	[entity_type_name], 
	[audit_add_user_id], 
	[audit_add_datetime], 
	[audit_update_user_id], 
	[audit_update_datetime]
FROM entity_type


SET NOCOUNT OFF



