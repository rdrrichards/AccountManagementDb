﻿
/*****************************************************************
**	Table Name: address_postal
**	Procedure Name: usp_address_postal_get '37211'
**	Author: Richard Richards
**	Created: 08/16/2015
**	Copyright: QIQO Software, (c) 2015-2018
******************************************************************/

CREATE PROC [dbo].[usp_address_postal_get]
	@postal_code varchar(20)
AS
SET NOCOUNT ON

SELECT [country], 
	[postal_code], 
	[state_code], 
	[state_full_name], 
	[city_name], 
	[county_name], 
	[time_zone]
FROM address_postal
WHERE [postal_code] = @postal_code


SET NOCOUNT OFF


