USE [DQS_STAGING_DATA]
GO
/****** Object:  View [PRO].[GetRPTable]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER view [PRO].[GetRPTable] as

select schema_name(t.schema_id) as schema_name,
       t.name as table_name,
       t.modify_date,
	   CONCAT('[',schema_name(t.schema_id),']','.','[',t.name,']') as 'Schema+Table' 
	   
from sys.tables t
where schema_name(t.schema_id) = 'rp' -- put schema name here
GO
