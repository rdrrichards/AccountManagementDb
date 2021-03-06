﻿CREATE TABLE [dbo].[account_type] (
    [account_type_key]      INT           DEFAULT (NEXT VALUE FOR [account_type_key_seq]) NOT NULL,
    [account_type_code]     VARCHAR (10)  NOT NULL,
    [account_type_name]     VARCHAR (50)  NOT NULL,
    [account_type_desc]     VARCHAR (254) NOT NULL,
    [audit_add_user_id]     VARCHAR (30)  DEFAULT (suser_sname()) NOT NULL,
    [audit_add_datetime]    DATETIME      DEFAULT (getdate()) NOT NULL,
    [audit_update_user_id]  VARCHAR (30)  DEFAULT (suser_sname()) NOT NULL,
    [audit_update_datetime] DATETIME      DEFAULT (getdate()) NOT NULL,
    PRIMARY KEY CLUSTERED ([account_type_key] ASC)
);


GO
CREATE NONCLUSTERED INDEX [NonClusteredIndex-20150704-190917]
    ON [dbo].[account_type]([account_type_code] ASC);


GO


CREATE TRIGGER [dbo].[tgr_account_type_audit]
    ON [dbo].[account_type]
    FOR INSERT, UPDATE
    AS
    BEGIN
        SET NOCOUNT ON

		UPDATE A SET
			A.audit_add_datetime = ISNULL(A.audit_add_datetime, GETDATE()),
			A.audit_add_user_id = ISNULL(A.audit_add_user_id, SUSER_SNAME()),
			A.audit_update_datetime = GETDATE(),
			A.audit_update_user_id = SUSER_SNAME()
		FROM [account_type] A INNER JOIN inserted B
		ON A.account_type_key = B.account_type_key

		DECLARE @old_xml XML, @new_xml XML

		SELECT @new_xml = (SELECT B.* 
		FROM [account_type] A INNER JOIN inserted B
		ON A.account_type_key = B.account_type_key
		FOR XML RAW, ELEMENTS)

		SELECT @old_xml = (SELECT B.* 
		FROM [account_type] A INNER JOIN deleted B
		ON A.account_type_key = B.account_type_key
		FOR XML RAW, ELEMENTS)

		IF (@new_xml IS NOT NULL OR @old_xml IS NOT NULL)
		INSERT INTO [dbo].[audit_log]
				   ([audit_action]
				   ,[audit_bus_obj]
				   ,[audit_comment]
				   ,[audit_data_old]
				   ,[audit_data_new])
			 VALUES
				   (CASE -- WHEN @old_xml IS NULL AND @new_xml IS NULL THEN 'D' 
						WHEN @old_xml IS NULL AND @new_xml IS NOT NULL THEN 'I'
						ELSE 'U' END
				   ,'account_type'
				   ,'account_type'
				   ,@old_xml
				   ,@new_xml)

    END




GO


CREATE TRIGGER [dbo].[tgr_account_type_audit_del]
    ON [dbo].[account_type]
    AFTER DELETE
    AS
    BEGIN
        SET NOCOUNT ON
		DECLARE @old_xml XML

		SELECT @old_xml = (SELECT B.* 
		FROM deleted B
		FOR XML RAW, ELEMENTS)

		IF (@old_xml IS NOT NULL)
		INSERT INTO [dbo].[audit_log]
				   ([audit_action]
				   ,[audit_bus_obj]
				   ,[audit_comment]
				   ,[audit_data_old]
				   )
			 VALUES
				   ('D' 
				   ,'account_type'
				   ,'account_type record deleted'
				   ,@old_xml
				   )

    END



