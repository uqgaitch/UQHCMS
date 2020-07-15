USE [DQS_STAGING_DATA]
GO
/****** Object:  View [PBI].[DGW_Name&Column]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER view [PBI].[DGW_Name&Column] as
SELECT
  	TABLE_NAME,
COLUMN_NAME

FROM
  	INFORMATION_SCHEMA.COLUMNS
where
table_name like '%HRDC%'
AND table_name not like '%Sel'

GO
